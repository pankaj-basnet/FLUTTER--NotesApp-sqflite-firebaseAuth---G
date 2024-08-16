// ## chapter 13 ================================================================================
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'dart:developer' as devtools show log; // not needed isn=

import 'package:trekkingmap/contants/routes.dart';
import 'package:trekkingmap/utilites/show_error_dialog.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
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
    // ==========================================================
        print('register email view  ========== sn=----');
    // ==========================================================

    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
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
              // ......
              // ......
              try {final user = FirebaseAuth.instance.currentUser;
              print(FirebaseAuth);
              print(FirebaseAuth.instance);
              await user?.sendEmailVerification();}
              catch (e){
                print('some error ......register view--------');
                print(e);
              }
              // ......
              // ......
              try {
                // final userCredential = // not needed isn=
                await FirebaseAuth.instance.createUserWithEmailAndPassword(
                  email: email,
                  password: password,
                );
                // devtools.log(userCredential.toString()); // not needed isn=
                // ......
                // ......
                final user = FirebaseAuth.instance.currentUser;
                print(FirebaseAuth);
                print(FirebaseAuth.instance);
                await user?.sendEmailVerification();

                Navigator.of(context).pushNamed(verifyEmailRoute);
              } on FirebaseAuthException catch (e) {
                // .......................................
                if (e.code == 'weak-password') {
                  await showErrorDialog(
                    context,
                    'Weak password',
                  );
                  devtools.log(
                      'Weak password'); // log not necessary isn= --- after showErrorDialog written
                } else if (e.code == 'email-already-in-use') {
                  await showErrorDialog(
                    context,
                    'Email is already in use...',
                  );

                  devtools.log('Email is already in use');
                } else if (e.code == 'invalid-email') {
                  await showErrorDialog(
                    context,
                    'invalid email entered...',
                  );
                  // .......................................
                  devtools.log(
                      'invalid email entered'); // remove log-- showErrorDialog will be displayed
                  // --- log is necessary for beginners {{sn=}} don't remove
                  // .......................................
                } else {
                  await showErrorDialog(
                    context,
                    'Error ${e.code}',
                  );
                  // ....
                  devtools.log(e.toString());
                }
                // .......................................
                // .......................................
              } catch (e) {
                await showErrorDialog(
                  context,
                  e.toString(),
                );
              }
            },
            child: const Text('Register ...'),
          ),
          TextButton(
              onPressed: () => {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      loginRoute,
                      (route) => false,
                    )
                  },
              child: const Text('Already registered? Login here.'))
        ],
      ),
    );
                // ==========================================================
            print('end of Scaffold  ========== end of register email view  ========== sn=----');
                // ==========================================================


  }
}
