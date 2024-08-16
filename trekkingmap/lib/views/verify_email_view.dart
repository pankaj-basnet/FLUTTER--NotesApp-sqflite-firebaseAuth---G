import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:trekkingmap/contants/routes.dart';

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({super.key});

  @override
  State<VerifyEmailView> createState() => VerifyEmailViewState();
}

class VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    print('verify email view ------------------sn=----');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify email'),
      ),
      body: Column(
        children: [
          const Text(
              "We've sent you an email verification. Please click on the link to verify ..."),
          const Text(
              "if you haven't received any email, click the button below to send again..."),
          TextButton(
            onPressed: () async {
              final user = FirebaseAuth.instance.currentUser;
              await user?.sendEmailVerification();
            },
            child: const Text('Send email verification'),
          ),
          TextButton(onPressed: () async {
            await FirebaseAuth.instance.signOut();
            Navigator.of(context).pushNamedAndRemoveUntil(registerRoute, (route) => false,);
          }, child: const Text('Restart'),),
        ],
      ),
    );
  }
}
