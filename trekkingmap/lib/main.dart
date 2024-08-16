import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:trekkingmap/contants/routes.dart';
import 'package:trekkingmap/firebase_options.dart';
import 'package:trekkingmap/views/login_view.dart';
import 'package:trekkingmap/views/register_view.dart';
import 'package:trekkingmap/views/verify_email_view.dart';
import 'dart:developer' as devtools show log;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        useMaterial3: true,
      ),
      // home: const RegisterView(),
      // home: const LoginView(),
      home: const HomePage(),
      routes: {
        loginRoute: (context) => const LoginView(),
        registerRoute: (context) => const RegisterView(),
        notesRoute: (context) => const NotesView(),
        verifyEmailRoute: (context) => const VerifyEmailView(),
      },
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
        print('homepage view ------------------sn=----');

    return FutureBuilder(
      future: Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      ),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.done:
            final user = FirebaseAuth.instance.currentUser;
            // print(user);
            // // final emailVerified = user?.emailVerified ?? false;
            // if (user?.emailVerified ?? false) {
            //   print('verified------------------------------');
            //   return const Text('done ');

            // } else {
            //   print('why????????????? verified?????????????');

            //   return const  VerifyEmailView();

            // }
            if (user != null) {
              print('checking for user ------------homepage view ------------------sn=----');

              if (user.emailVerified) {
                return const NotesView();
              } else {
                return const VerifyEmailView();
                // return const NotesView();
              }
            } else {
              return const LoginView();
            }

          default:
            return const CircularProgressIndicator();
        }
      },
    );
  }
}

enum MenuAction { logout }

class NotesView extends StatefulWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  _NotesViewState createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    devtools.log(user.toString());
    // .................self note....sn=........................
    // .................self note....sn=........................
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user != null) {
        // print('current user is: ${user.uid}');
        devtools.log('current user is: ${user.uid}');
        // OUTPUT
        // [log] User(displayName: null, email: babaghar2017@gmail.com, isEmailVerified: false, ....
        // I/flutter (12340): current user is: xPokPhpxsHfXYa12MAjI4tkuCZg2
      }
    });
    // ..................................................//>>........
    // ..................................................//>>........

    return Scaffold(
      appBar: AppBar(
        title: const Text('Main UI'),
        actions: [
          PopupMenuButton<MenuAction>(
            onSelected: (value) async {
              switch (value) {
                case MenuAction.logout:
                  final shouldLogout = await showLogOutDialog(context);
                  if (shouldLogout) {
                    await FirebaseAuth.instance.signOut();
                    Navigator.of(context)
                        .pushNamedAndRemoveUntil(loginRoute, (_) => false);
                  }
              }
            },
            itemBuilder: (context) {
              return const [
                PopupMenuItem<MenuAction>(
                  value: MenuAction.logout,
                  child: Text('Log out'),
                ),
              ];
            },
          )
        ],
        backgroundColor: const Color.fromARGB(255, 174, 150, 71),
      ),
      body: const Text('Hello world'),
      backgroundColor: Colors.amber,
    );
  }
}

Future<bool> showLogOutDialog(BuildContext context) {
  return showDialog<bool>(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text('Sign out'),
        content: const Text('Are you sure you want to sign out?'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(false);
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            child: const Text('Log out'),
          ),
        ],
      );
    },
  ).then((value) => value ?? false);
}
