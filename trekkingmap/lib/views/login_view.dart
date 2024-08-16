// ## chapter 12 ================================================================================
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart'; // unused import
import 'package:flutter/material.dart';
// import 'package:trekkingmap/firebase_options.dart'; // unused import
import 'dart:developer' as devtools show log; // unused import in isn=

import 'package:trekkingmap/contants/routes.dart';
import 'package:trekkingmap/utilites/show_error_dialog.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
        print('login view ------------------sn=----');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Column(
        children: [
          TextField(
            controller: _email,
            enableSuggestions: true,
            autocorrect: true,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              hintText: 'Enter email ',
            ),
          ),
          TextField(
            controller: _password,
            obscureText: true,
            enableSuggestions: true,
            autocorrect: true,
            decoration: const InputDecoration(
              hintText: 'Enter password',
            ),
          ),
          TextButton(
            onPressed: () async {
              final email = _email.text;
              final password = _password.text;
              try {
              
                await FirebaseAuth.instance.signInWithEmailAndPassword(
                  email: email,
                  password: password,
                );
                final user = FirebaseAuth.instance.currentUser;
                if (user?.emailVerified ?? false) {
                  // user's email is verified ---{{email verification link clicked in email}}
                  Navigator.of(context).pushNamedAndRemoveUntil(
                  notesRoute,
                  (route) => false,
                );
                } else {
                  // user's email is NOT verified 
                  Navigator.of(context).pushNamedAndRemoveUntil(
                  verifyEmailRoute,
                  (route) => false,
                );

                }
                

                // chap-19--------240811------
                // final userCredential =
                //     await FirebaseAuth.instance.signInWithEmailAndPassword(
                //   email: email,
                //   password: password,
                // );

                // devtools.log(userCredential.toString());
              } on FirebaseAuthException catch (e) {
                // .................
                // if (e.code == 'invalid-credential') {
                //   print('User not foundd...');
                // } else {
                //   print('something else happened...>>');
                //   print(e.code);
                //   print(e);
                // }
                // .................
                // .................
                // devtools.log(e.code);
                // print(e);
                // .................
                // .................
                // if (e.code == 'user-not-found') {      // [log] invalid-credential --- message during practice
                if (e.code == 'invalid-credential') {
                  // ...
                  // devtools.log('User not found');
                  // ...
                  await showErrorDialog(
                    context,
                    'User not found --- wrong user/pwd...',
                  );
                  // firebase throws "invalid-credential" for both wrong username or password ---240811-prac
                } else if (e.code == 'wrong-password') {
                  // ...
                  // devtools.log('Wrong password');
                  // ...
                  await showErrorDialog(
                    context,
                    'wrong credential',
                  );
                  // .................
                  // print('invalid email or password....sn=');
                  // ...
                } else {
                  // any rare exception from firebase
                  await showErrorDialog(
                    context,
                    'Error: ${e.code}...',
                  );
                }
              } catch (e) {
                await showErrorDialog(
                  context,
                  'Error: ${e.toString()}...',
                );
              }
            },
            child: const Text('Login here ..'),
          ),
          TextButton(
              onPressed: () => {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      registerRoute,
                      (route) => false,
                    )
                  },
              child: const Text('Not registered yet? Register here.'))
        ],
      ),
    );
  }
}
