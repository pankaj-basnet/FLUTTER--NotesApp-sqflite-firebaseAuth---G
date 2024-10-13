// import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:trekkingmap/constants/routes.dart';
import 'package:trekkingmap/main.dart';
import 'package:trekkingmap/services/auth/auth_service.dart';
import 'package:trekkingmap/services/cloud/cloud_note.dart';
import 'package:trekkingmap/services/cloud/firebase_cloud_storage.dart';
// import 'package:trekkingmap/services/crud/notes_service.dart'; // {sn=}
import 'package:trekkingmap/views/notes/notes_list_view.dart';

class NotesView extends StatefulWidget {
  // const NotesView({super.key});
  const NotesView({Key? key}) : super(key: key);

  @override
  State<NotesView> createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  // late final NotesService _notesService;  // {sn=}
  // late final FirebaseCloudStorage firebaseCloudStorage(); // {sn=}
  // /* late final */ FirebaseCloudStorage firebaseCloudStorage;
  late final FirebaseCloudStorage _notesService;
  String get userId => AuthService.firebase().currentUser!.id;

  @override
  void initState() {
    _notesService = FirebaseCloudStorage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('notesview page ...#@#');
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Notes ... Main UI/ Notes View ...'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(createOrUpdateNoteRoute);
              },
              icon: const Icon(Icons.add)),
          PopupMenuButton<MenuAction>(
            onSelected: (value) async {
              switch (value) {
                case MenuAction.logout:
                  final shouldLogout = await showLogOutDialog(context);
                  if (shouldLogout) {
                    print('logout from firebase ... #@#');
                    await AuthService.firebase().logOut();
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      loginRoute,
                      (_) => false,
                    );
                  }
              }
            },
            itemBuilder: (context) {
              return const [
                PopupMenuItem<MenuAction>(
                  value: MenuAction.logout,
                  child: Text('Log out'),
                )
              ];
            },
          )
        ],
      ),
      body: StreamBuilder(
        // future: _notesService.getOrCreateUser(email: userEmail),
        // future: FirebaseFirestore.instance.currentUser, // error --- not defined 
        stream: _notesService.allNotes(ownerUserId: userId),
        builder: (context, snapshot) {
          
                  switch (snapshot.connectionState) {
                    case ConnectionState.waiting:
                    case ConnectionState.active:
                      if (snapshot.hasData) {
                        final allNotes = snapshot.data as Iterable<CloudNote>;
                        return NotesListView(
                          // notes: allNotes.toList(),
                          notes: allNotes,
                          onDeleteNote: (note) async {
                            await _notesService.deleteNote(documentId: note.documentId);
                          },
                          onTap: (note) {
                            Navigator.of(context).pushNamed(
                                createOrUpdateNoteRoute,
                                arguments: note);
                          },
                        );
                      } else {
                        return const CircularProgressIndicator();
                      }

                    default:
                      return const CircularProgressIndicator();
                  }
                },
              ),
      //==================================================================
      // body: Column( // sn= ======= {self created widget ---- not needed after creating noteService}
      //   children: [
      //     TextButton(
      //         onPressed: () {
      //           Navigator.of(context)
      //               .pushNamedAndRemoveUntil(loginRoute, (route) => false);
      //         },
      //         child: Text('back to login'))
      //   ],
      // ),
      //==================================================================
    );
  }
}
