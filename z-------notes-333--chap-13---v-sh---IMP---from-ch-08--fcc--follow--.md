

==================================================================================
==================================================================================
==================================================================================
Flutter Course for Beginners – 37-hour Cross Platform App Development Tutorial
<!-- https://www.youtube.com/watch?v=VPvVD8t02U8&t=32694s -->
⌨️ (09:04:54) Login View

==================================================================================
==================================================================================
==================================================================================
==================================================================================
==================================================================================
==================================================================================
==================================================================================
==================================================================================


# Chapter 13 - Login View - Free Flutter Course 💙
# Chapter 13 - Login View - Free Flutter Course 💙
# Chapter 13 - Login View - Free Flutter Course 💙
# Chapter 13 - Login View - Free Flutter Course 💙
# Chapter 13 - Login View - Free Flutter Course 💙
# Chapter 13 - Login View - Free Flutter Course 💙
# Chapter 13 - Login View - Free Flutter Course 💙
# Chapter 13 - Login View - Free Flutter Course 💙
# Chapter 13 - Login View - Free Flutter Course 💙
https://www.youtube.com/watch?v=1ngzX3a3N2w

https://www.youtube.com/watch?v=1ngzX3a3N2w&list=PL6yRaaP0WPkVtoeNIGqILtRAgd3h2CNpT&index=14&pp=iAQB



current registration is a screen --- not a flow ------ "flow" if a screen takes to another screen


<!--     -----  sub-topic ---    -----    sub-chapter     --      Create a stateful RegisterView Widget    -->
<!--     -----  sub-topic ---    -----    sub-chapter     --      Create a stateful RegisterView Widget    -->
<!--     -----  sub-topic ---    -----    sub-chapter     --      Create a stateful RegisterView Widget    -->

https://www.youtube.com/watch?v=1ngzX3a3N2w&list=PL6yRaaP0WPkVtoeNIGqILtRAgd3h2CNpT&index=14&t=116s

<!-- https://medium.com/flutter-community/flutter-ide-shortcuts-for-faster-development-2ef45c51085b -->
stf --- for emmet --- Flutter Stateful Widget --- shortcut --- vsCode dart or flutter plugin or extension sn= mb=

<!-- 
https://codewithandrea.com/articles/vscode-shortcuts-extensions-settings-flutter-development/

5. Flutter & Dart snippets
The Dart and Flutter plugins include many snippets that you can use to add common Flutter widgets quickly.

You may already be familiar with these:

stless: Insert a StatelessWidget
stful: Insert a StatefulWidget -->


-----------------------------------------------------------

change HomePage to LoginView

-----------------------------------------------------------

<!--     -----  sub-topic ---    -----    sub-chapter     --      move LoginView to its own file     -->
time 7 mins

create lib\views\login_view.dart
D:\src_dev\flutter\sagarmatha\trekkingmap\lib\views\login_view.dart


many errors ------- so , solve by importing ----- ctrl+. ------

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:trekkingmap/firebase_options.dart';

-----------------------------------------------------------
cut code from login_view.dart --- paste to main.dart
<!-- 
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
  } -->

-----------------------------------------------------------
cut build() function from login_view.dart and, paste and replace build function of class _RegisterViewState -- main.dart -- 

Widget build(BuildContext context) { ----------  build function 

-----------------------------------------------------------

<!--     -----  sub-topic ---    -----    sub-chapter     --      Login instead of register in LoginView     -->
<!--     -----  sub-topic ---    -----    sub-chapter     --      Login instead of register in LoginView     -->
<!--     -----  sub-topic ---    -----    sub-chapter     --      Login instead of register in LoginView     -->
change createUserWithEmailAndPassword to signInWIthEmailAndPassword

<!-- time 14 mins -->



-----------------------------------------------------------

copy paste code from """class _RegisterViewState""" to """class _LoginViewState """




-----------------------------------------------------------
<!-- createUserWithEmailAndPassword -->

<!-- [firebase_auth/email-already-in-use] The email address is already in use by another account. -->

<!-- this message because after pasting loginview code----  hot restart not done -->

<!-- Terminal -->
2
W/System  ( 9797): Ignoring header X-Firebase-Locale because its value was null.
D/FirebaseAuth( 9797): Notifying id token listeners about user ( hwx0YXNBNnPBmvZSMxNaLDldDBj2 ).
D/FirebaseAuth( 9797): Notifying auth state listeners about user ( hwx0YXNBNnPBmvZSMxNaLDldDBj2 ).
I/flutter ( 9797): UserCredential(additionalUserInfo: AdditionalUserInfo(isNewUser: true, profile: {}, providerId: null, username: null, authorizationCode: null), credential: null, user: User(displayName: null, email: d@gmail.com, isEmailVerified: false, isAnonymous: false, metadata: UserMetadata(creationTime: 2024-08-07 13:14:15.865Z, lastSignInTime: 2024-08-07 13:14:15.865Z), phoneNumber: null, photoURL: null, providerData, [UserInfo(displayName: null, email: d@gmail.com, phoneNumber: null, photoURL: null, providerId: password, uid: d@gmail.com)], refreshToken: null, tenantId: null, uid: hwx0YXNBNnPBmvZSMxNaLDldDBj2))
I/FirebaseAuth( 9797): Creating user with d@gmail.com with empty reCAPTCHA token
W/System  ( 9797): Ignoring header X-Firebase-Locale because its value was null.
E/RecaptchaCallWrapper( 9797): Initial task failed for action RecaptchaAction(action=signUpPassword)with exception - The email address is already in use by another account.
E/flutter ( 9797): [ERROR:flutter/runtime/dart_vm_initializer.cc(41)] Unhandled Exception: [firebase_auth/email-already-in-use] The email address is already in use by another account.
E/flutter ( 9797): #0      FirebaseAuthHostApi.createUserWithEmailAndPassword (package:firebase_auth_platform_interface/src/pigeon/messages.pigeon.dart:1038:7)
E/flutter ( 9797): <asynchronous suspension>
E/flutter ( 9797): #1      MethodChannelFirebaseAuth.createUserWithEmailAndPassword (package:firebase_auth_platform_interface/src/method_channel/method_channel_firebase_auth.dart:271:22)
E/flutter ( 9797): <asynchronous suspension>
E/flutter ( 9797): #2      FirebaseAuth.createUserWithEmailAndPassword (package:firebase_auth/src/firebase_auth.dart:243:7)
E/flutter ( 9797): <asynchronous suspension>
E/flutter ( 9797): #3      _LoginViewState.build.<anonymous closure>.<anonymous closure> (package:trekkingmap/views/login_view.dart:71:46)
E/flutter ( 9797): <asynchronous suspension>
E/flutter ( 9797): 



-----------------------------------------------------------
<!-- exception explanation {{subtopic=}} -->
try {
                        final userCredential = await FirebaseAuth.instance
                            .signInWithEmailAndPassword(
                                email: email, password: password);
                        print(userCredential);
                      } catch (e) {
                        print('Something bad happened here ...');
                      }




-----------------------------------------------------------
-----------------------------------------------------------

-----------------------------------------------------------

<!-- Creating user with gshdhdheybr@gmail.com ------error -->

<!-- this message because after pasting loginview code----  hot restart not done -->
<!-- Terminal -->
I/FirebaseAuth( 9797): Creating user with gshdhdheybr@gmail.com with empty reCAPTCHA token
2
W/System  ( 9797): Ignoring header X-Firebase-Locale because its value was null.
D/FirebaseAuth( 9797): Notifying id token listeners about user ( a5PJs6nGCqO6Nvx1ZWR9L73uaYx2 ).
D/FirebaseAuth( 9797): Notifying auth state listeners about user ( a5PJs6nGCqO6Nvx1ZWR9L73uaYx2 ).
I/flutter ( 9797): UserCredential(additionalUserInfo: AdditionalUserInfo(isNewUser: true, profile: {}, providerId: null, username: null, authorizationCode: null), credential: null, user: User(displayName: null, email: gshdhdheybr@gmail.com, isEmailVerified: false, isAnonymous: false, metadata: UserMetadata(creationTime: 2024-08-07 13:26:49.230Z, lastSignInTime: 2024-08-07 13:26:49.230Z), phoneNumber: null, photoURL: null, providerData, [UserInfo(displayName: null, email: gshdhdheybr@gmail.com, phoneNumber: null, photoURL: null, providerId: password, uid: gshdhdheybr@gmail.com)], refreshToken: null, tenantId: null, uid: a5PJs6nGCqO6Nvx1ZWR9L73uaYx2))






-----------------------------------------------------------
-----------------------------------------------------------
<!-- this message because after pasting loginview code----  hot restart -------- done -->


I/FirebaseAuth( 9797): Logging in as hyyyyyy@gmail.com with empty reCAPTCHA token
W/System  ( 9797): Ignoring header X-Firebase-Locale because its value was null.
E/RecaptchaCallWrapper( 9797): Initial task failed for action RecaptchaAction(action=signInWithPassword)with exception - The supplied auth credential is incorrect, malformed or has expired.
I/flutter ( 9797): Something bad happened here ...



-----------------------------------------------------------
<!-- [firebase_auth/invalid-credential] -->
<!-- [firebase_auth/invalid-credential] -->

I/FirebaseAuth( 9797): Logging in as hyyyyyy@gmail.com with empty reCAPTCHA token
W/System  ( 9797): Ignoring header X-Firebase-Locale because its value was null.
E/RecaptchaCallWrapper( 9797): Initial task failed for action RecaptchaAction(action=signInWithPassword)with exception - The supplied auth credential is incorrect, malformed or has expired.
I/flutter ( 9797): Something bad happened here ...
I/flutter ( 9797): [firebase_auth/invalid-credential] The supplied auth credential is incorrect, malformed or has expired.



-----------------------------------------------------------
 <!-- [firebase_auth/invalid-email] -->
I/FirebaseAuth( 9797): Logging in as rttttttttt@ with empty reCAPTCHA token
W/System  ( 9797): Ignoring header X-Firebase-Locale because its value was null.
E/RecaptchaCallWrapper( 9797): Initial task failed for action RecaptchaAction(action=signInWithPassword)with exception - The email address is badly formatted.
I/flutter ( 9797): Something bad happened here ...
I/flutter ( 9797): [firebase_auth/invalid-email] The email address is badly formatted.
D/InputConnectionAdaptor( 9797): The input method toggled cursor monitoring on
D/InputConnectionAdaptor( 9797): The input method toggled cursor monitoring off
D/InputConnectionAdaptor( 9797): The input method toggled cursor monitoring on
D/InputConnectionAdaptor( 9797): The input method toggled cursor monitoring off
--------------------------
<!-- [firebase_auth/invalid-credential] -->
I/FirebaseAuth( 9797): Logging in as rttttttttt@gmail.com with empty reCAPTCHA token
W/System  ( 9797): Ignoring header X-Firebase-Locale because its value was null.
E/RecaptchaCallWrapper( 9797): Initial task failed for action RecaptchaAction(action=signInWithPassword)with exception - The supplied auth credential is incorrect, malformed or has expired.
I/flutter ( 9797): Something bad happened here ...
I/flutter ( 9797): [firebase_auth/invalid-credential] The supplied auth credential is incorrect, malformed or has expired.





-----------------------------------------------------------

I/FirebaseAuth( 9797): Logging in as rttttttttt@gmail.com with empty reCAPTCHA token
W/System  ( 9797): Ignoring header X-Firebase-Locale because its value was null.
E/RecaptchaCallWrapper( 9797): Initial task failed for action RecaptchaAction(action=signInWithPassword)with exception - The supplied auth credential is incorrect, malformed or has expired.
I/flutter ( 9797): Something bad happened here ...
I/flutter ( 9797): FirebaseAuthException
I/flutter ( 9797): [firebase_auth/invalid-credential] The supplied auth credential is incorrect, malformed or has expired.



-----------------------------------------------------------

on FirebaseAuthException catch (e) {
                        print('Something bad happened here ...');
                        print(e.runtimeType);
                        print(e.code);
                      }


-----------------------------------------------------------

I/FirebaseAuth(28200): Logging in as sevennnn with empty reCAPTCHA token
W/System  (28200): Ignoring header X-Firebase-Locale because its value was null.
E/RecaptchaCallWrapper(28200): Initial task failed for action RecaptchaAction(action=signInWithPassword)with exception - The email address is badly formatted.
I/flutter (28200): Something bad happened here ...
I/flutter (28200): FirebaseAuthException
I/flutter (28200): invalid-email

-----------------------------------------------------------

I/FirebaseAuth(28200): Logging in as sevennnn@gmail.com with empty reCAPTCHA token
W/System  (28200): Ignoring header X-Firebase-Locale because its value was null.
E/RecaptchaCallWrapper(28200): Initial task failed for action RecaptchaAction(action=signInWithPassword)with exception - The supplied auth credential is incorrect, malformed or has expired.
I/flutter (28200): Something bad happened here ...
I/flutter (28200): FirebaseAuthException
I/flutter (28200): invalid-credential

-----------------------------------------------------------
I/FirebaseAuth(28200): Logging in as sevennnn@gmail with empty reCAPTCHA token
D/NetworkSecurityConfig(28200): No Network Security Config specified, using platform default
W/System  (28200): Ignoring header X-Firebase-Locale because its value was null.
E/RecaptchaCallWrapper(28200): Initial task failed for action RecaptchaAction(action=signInWithPassword)with exception - The supplied auth credential is incorrect, malformed or has expired.
I/flutter (28200): Something bad happened here ...
I/flutter (28200): FirebaseAuthException
I/flutter (28200): invalid-credential


-----------------------------------------------------------


 try {
                        final userCredential = await FirebaseAuth.instance
                            .signInWithEmailAndPassword(
                                email: email, password: password);
                        print(userCredential);
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'invalid-credential') {
                          print('User not foundd...');
                        }
                      }
                    },




-----------------------------------------------------------

I/FirebaseAuth(28200): Logging in as sevenzzz@gmail.com with empty reCAPTCHA token
W/System  (28200): Ignoring header X-Firebase-Locale because its value was null.
E/RecaptchaCallWrapper(28200): Initial task failed for action RecaptchaAction(action=signInWithPassword)with exception - The supplied auth credential is incorrect, malformed or has expired.
I/flutter (28200): User not foundd...





-----------------------------------------------------------

<!--     -----  sub-topic ---    -----    sub-chapter     --      LoginView, handling wrong-password     -->
<!--     -----  sub-topic ---    -----    sub-chapter     --      LoginView, handling wrong-password     -->
<!--     -----  sub-topic ---    -----    sub-chapter     --      LoginView, handling wrong-password     -->

LoginView, handling wrong-password
e.code == 'wrong-password

<!-- time =  32 mins -->



-----------------------------------------------------------


if (e.code == 'user-not-found') {
    print('User not found');
} else if (e.code == 'wrong-password') {
    print('Wrong password');
}

-----------------------------------------------------------
<!-- Logging in -->
I/FirebaseAuth(28200): Logging in as pankajbasnet2020@hotmail.com with empty reCAPTCHA token
2
W/System  (28200): Ignoring header X-Firebase-Locale because its value was null.
D/FirebaseAuth(28200): Notifying id token listeners about user ( v8lNUgYzA2ddc8cq8sPijttkXG12 ).
D/FirebaseAuth(28200): Notifying auth state listeners about user ( v8lNUgYzA2ddc8cq8sPijttkXG12 ).
I/flutter (28200): UserCredential(additionalUserInfo: AdditionalUserInfo(isNewUser: false, profile: {}, providerId: null, username: null, authorizationCode: null), credential: null, user: User(displayName: null, email: pankajbasnet2020@hotmail.com, isEmailVerified: false, isAnonymous: false, metadata: UserMetadata(creationTime: 2024-08-07 09:53:16.396Z, lastSignInTime: 2024-08-07 14:34:27.861Z), phoneNumber: null, photoURL: null, providerData, [UserInfo(displayName: null, email: pankajbasnet2020@hotmail.com, phoneNumber: null, photoURL: null, providerId: password, uid: pankajbasnet2020@hotmail.com)], refreshToken: null, tenantId: null, uid: v8lNUgYzA2ddc8cq8sPijttkXG12))



-----------------------------------------------------------


<!--     -----  sub-topic ---    -----    sub-chapter     --      RegisterView, handle weak-password     -->
<!--     -----  sub-topic ---    -----    sub-chapter     --      RegisterView, handle weak-password     -->
<!--     -----  sub-topic ---    -----    sub-chapter     --      RegisterView, handle weak-password     -->



-----------------------------------------------------------


<!--     -----  sub-topic ---    -----    sub-chapter     --      RegisterView, handle email-already-in-use     -->
<!--     -----  sub-topic ---    -----    sub-chapter     --      RegisterView, handle email-already-in-use     -->
<!--     -----  sub-topic ---    -----    sub-chapter     --      RegisterView, handle email-already-in-use     -->

time 39 mins



-----------------------------------------------------------


<!--     -----  sub-topic ---    -----    sub-chapter     --      Ensure we are logged in     -->
<!--     -----  sub-topic ---    -----    sub-chapter     --      Ensure we are logged in     -->
<!--     -----  sub-topic ---    -----    sub-chapter     --      Ensure we are logged in     -->

time 43 mins


-----------------------------------------------------------
time 47 mins

<!--     -----  sub-topic ---    -----    sub-chapter     --      Separating app initialization from widgets    -->

<!-- Separating app initialization from widgets -->
<!-- Separating app initialization from widgets -->
<!-- Separating app initialization from widgets -->
At the moment app initialization is bound to our widgets


log in to firebase through flutter  before starting next chapter

instance of firebase is cached in local storage or secure storage called "key chain" in ios 
instance of firebase is cached in local storage called "shared preference" in android


information is cached in mobile phone or phone application after logging in
-----------------------------------------------------------



=============================================================================
=============================================================================
=============================================================================
=============================================================================
=============================================================================
=============================================================================
=============================================================================
=============================================================================
=============================================================================
=============================================================================
=============================================================================
=============================================================================
# Chapter 14 - Separating App Initialization from Login and Register Screens - Free Flutter Course 💙
# Chapter 14 - Separating App Initialization from Login and Register Screens - Free Flutter Course 💙
# Chapter 14 - Separating App Initialization from Login and Register Screens - Free Flutter Course 💙
# Chapter 14 - Separating App Initialization from Login and Register Screens - Free Flutter Course 💙
# Chapter 14 - Separating App Initialization from Login and Register Screens - Free Flutter Course 💙
# Chapter 14 - Separating App Initialization from Login and Register Screens - Free Flutter Course 💙
# Chapter 14 - Separating App Initialization from Login and Register Screens - Free Flutter Course 💙
# Chapter 14 - Separating App Initialization from Login and Register Screens - Free Flutter Course 💙
# Chapter 14 - Separating App Initialization from Login and Register Screens - Free Flutter Course 💙

https://www.youtube.com/watch?v=HOh808ELdlI



-----------------------------------------------------------
<!-- login error ----- if no password entered -->

<!-- code copy pasted from instructor github repo ----final code -->

I/flutter (30249): invalid email or password....sn=
I/gralloc (30249): gralloc_register_buffer hnd=0x92bbf2c0, share_fd=90, share_attr_fd=-1, magic=51647890, format=1, internal_format=1, byte_stride=1920, flags=4, usage=0xb00, size=1639680, width=480, height=854, internalWidth=480, internalHeight=854, stride=480, base=0x835ef000, writeOwner=0, attr_base=0xffffffff, yuv_info=1, fd=-1, buf_idx=0, offset=0, min_pgsz=4096, phyaddr=0
E/        (30249): Shared attribute region not available to be mapped



-----------------------------------------------------------
<!-- login error ---- wrong password -->

I/FirebaseAuth(30249): Logging in as d@gmail.com with empty reCAPTCHA token
D/NetworkSecurityConfig(30249): No Network Security Config specified, using platform default
W/System  (30249): Ignoring header X-Firebase-Locale because its value was null.
E/RecaptchaCallWrapper(30249): Initial task failed for action RecaptchaAction(action=signInWithPassword)with exception - The supplied auth credential is incorrect, malformed or has expired.
I/flutter (30249): invalid email or password....sn=



-----------------------------------------------------------
-----------------------------------------------------------
-----------------------------------------------------------
-----------------------------------------------------------
on FirebaseAuthException catch (e) {
                // .......................................
                if (e.code == 'weak-password') {
                  print('Weak password');
                } else if (e.code == 'email-already-in-use') {
                  print('Email is already in use');
                } else if (e.code == 'invalid-email') {
                  print('invalid email entered');
                }
-----------------------------------------------------------
-----------------------------------------------------------
<!-- fff@g ------- Creating user error -->

I/FirebaseAuth(30249): Creating user with fff@g with empty reCAPTCHA token
W/System  (30249): Ignoring header X-Firebase-Locale because its value was null.
E/RecaptchaCallWrapper(30249): Initial task failed for action RecaptchaAction(action=signUpPassword)with exception - The email address is badly formatted.
I/flutter (30249): invalid email entered


-----------------------------------------------------------
<!-- Creating user with fff@gmail.com  -->
I/FirebaseAuth(30249): Creating user with fff@gmail.com with empty reCAPTCHA token
2
W/System  (30249): Ignoring header X-Firebase-Locale because its value was null.
D/FirebaseAuth(30249): Notifying id token listeners about user ( jHrO19MZe5OuGl5gjNgi6XY5hFm1 ).
D/FirebaseAuth(30249): Notifying auth state listeners about user ( jHrO19MZe5OuGl5gjNgi6XY5hFm1 ).
I/flutter (30249): UserCredential(additionalUserInfo: AdditionalUserInfo(isNewUser: true, profile: {}, providerId: null, username: null, authorizationCode: null), credential: null, user: User(displayName: null, email: fff@gmail.com, isEmailVerified: false, isAnonymous: false, metadata: UserMetadata(creationTime: 2024-08-08 03:04:28.533Z, lastSignInTime: 2024-08-08 03:04:28.533Z), phoneNumber: null, photoURL: null, providerData, [UserInfo(displayName: null, email: fff@gmail.com, phoneNumber: null, photoURL: null, providerId: password, uid: fff@gmail.com)], refreshToken: null, tenantId: null, uid: jHrO19MZe5OuGl5gjNgi6XY5hFm1))




-----------------------------------------------------------
<!-- register error -----  Email is already in use -->
I/FirebaseAuth(30249): Creating user with fff@gmail.com with empty reCAPTCHA token
W/System  (30249): Ignoring header X-Firebase-Locale because its value was null.
E/RecaptchaCallWrapper(30249): Initial task failed for action RecaptchaAction(action=signUpPassword)with exception - The email address is already in use by another account.
I/flutter (30249): Email is already in use



-----------------------------------------------------------
<!-- register error -----  Weak password -->

I/FirebaseAuth(30249): Creating user with fff@gmail.com with empty reCAPTCHA token
W/System  (30249): Ignoring header X-Firebase-Locale because its value was null.
E/RecaptchaCallWrapper(30249): Initial task failed for action RecaptchaAction(action=signUpPassword)with exception - The given password is invalid. [ Password should be at least 6 characters ]
I/flutter (30249): Weak password



-----------------------------------------------------------



Search by email address, phone number, or user UID

https://console.firebase.google.com/project/flutter-trekkingmap/authentication/users
<!-- Identifier------------Created------------Signed In------------User UID -->

fff@gmail.com------------Aug 8, 2024--------Aug 8, 2024------------jHrO19MZe5OuGl5gjNgi6XY5hFm1

gshdhdheybr@gmail.com------------Aug 7, 2024--------Aug 7, 2024------------a5PJs6nGCqO6Nvx1ZWR9L73uaYx2

gshdhdhshsh@gmail.com------------Aug 7, 2024--------Aug 7, 2024------------jVzGy095TCSFGfqznK75RqUYzp02

d@gmail.com------------Aug 7, 2024--------Aug 7, 2024------------hwx0YXNBNnPBmvZSMxNaLDldDBj2

jp5ttttt@gmail.com------------Aug 7, 2024--------Aug 7, 2024------------4hzaStj5jJPWrr7TEC0hIWbSbat1

jp5tttttttt@gmail.com------------Aug 7, 2024--------Aug 7, 2024------------SQRWmOqLyVZgelLn5EYuvwj37ZI2

pankajbasnet2020@hotmail.com------------Aug 7, 2024--------Aug 7, 2024------------v8lNUgYzA2ddc8cq8sPijttkXG12

agrimbhujel@gmail.com------------Aug 7, 2024--------Aug 7, 2024------------nsj4LY7xGcZeK8vbcvtNAGo3Fdp1


-----------------------------------------------------------



<!-- widgets that are doing app initialization -->
this is usually not a good idea, we need to clean this up

fiebase app initialization in LoginView
fiebase app initialization in RegisterView

make 1 app initialization for both LoginView and RegisterView in this chapter --- good code practice

-----------------------------------------------------------

<!-- time 2 mins -->

RegisterView needs its own file
Move RegisterView into views/register_view.dart


create lib\views\register_view.dart

trekkingmap\lib\views\register_view.dart

cut paste RegisterView and _RegisterViewState from main.dart to register_view.dart

-----------------------------------------------------------

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:trekkingmap/firebase_options.dart';


delete unused imports --- warnings

-----------------------------------------------------------

<!-- Dedicated Homepage stateless Widget -->
<!-- Dedicated Homepage stateless Widget -->
<!-- Dedicated Homepage stateless Widget -->
<!-- Dedicated Homepage stateless Widget -->
<!-- Dedicated Homepage stateless Widget -->

this widget needs to do the iniatialization

time 05 mins

create stateless widget

stl ----- vscode shortcut


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

-----------------------------------------------------------

// home: const RegisterView(),
      // home: const LoginView(),
      home: const HomePage(),




-----------------------------------------------------------

copy paste build function from LoginView() to  HomePage()

delete "return Column" 

-----------------------------------------------------------
-----------------------------------------------------------

<!-- D:\src_dev\flutter\sagarmatha\trekkingmap\lib\main.dart -->

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to homepage !'),
        backgroundColor: Colors.white54,
      ),
      body: FutureBuilder(
        future: Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        ),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              return const Text('done');
            default:
              return const Text('Loading');
          }
        },
      ),
      backgroundColor: Colors.blueAccent,
    );
  }
}


-----------------------------------------------------------
-----------------------------------------------------------


<!--     -----  sub-topic ---    -----    sub-chapter     --      Use HomePage in main function   ---   END  ----///>>>    -->

Use HomePage in main function
Instead of going directly to another widget


-----------------------------------------------------------
-----------------------------------------------------------



<!--     -----  sub-topic ---    -----    sub-chapter     --      Non-null and verified user   ---       -->
Let's see the properties of the user

in rare case, if ""Firebase.intializeApp"" not done, user in "firebase instance" running inside application is "null"

null means absence of value or user

-----------------------------------------------------------

it is important to check user is not null and email is verified




-----------------------------------------------------------
<!-- log in with login view -->
I/FirebaseAuth(10315): Logging in as pankajbasnet2020@hotmail.com with empty reCAPTCHA token
D/NetworkSecurityConfig(10315): No Network Security Config specified, using platform default
W/System  (10315): Ignoring header X-Firebase-Locale because its value was null.
I/gralloc (10315): gralloc_register_buffer hnd=0x8defca40, share_fd=93, share_attr_fd=-1, magic=51647890, format=1, internal_format=1, byte_stride=1920, flags=4, usage=0xb00, size=1639680, width=480, height=854, internalWidth=480, internalHeight=854, stride=480, base=0x82be9000, writeOwner=0, attr_base=0xffffffff, yuv_info=1, fd=-1, buf_idx=0, offset=0, min_pgsz=4096, phyaddr=0
E/        (10315): Shared attribute region not available to be mapped
W/System  (10315): Ignoring header X-Firebase-Locale because its value was null.
D/FirebaseAuth(10315): Notifying id token listeners about user ( v8lNUgYzA2ddc8cq8sPijttkXG12 ).
D/FirebaseAuth(10315): Notifying auth state listeners about user ( v8lNUgYzA2ddc8cq8sPijttkXG12 ).
I/flutter (10315): UserCredential(additionalUserInfo: AdditionalUserInfo(isNewUser: false, profile: {}, providerId: null, username: null, authorizationCode: null), credential: null, user: User(displayName: null, email: pankajbasnet2020@hotmail.com, isEmailVerified: false, isAnonymous: false, metadata: UserMetadata(creationTime: 2024-08-07 09:53:16.396Z, lastSignInTime: 2024-08-08 08:26:36.711Z), phoneNumber: null, photoURL: null, providerData, [UserInfo(displayName: null, email: pankajbasnet2020@hotmail.com, phoneNumber: null, photoURL: null, providerId: password, uid: pankajbasnet2020@hotmail.com)], refreshToken: null, tenantId: null, uid: v8lNUgYzA2ddc8cq8sPijttkXG12))



-----------------------------------------------------------

builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
            print('----------------------------------');
              print(FirebaseAuth.instance.currentUser);
            print('----------------------------------');
              print(FirebaseAuth.instance);
            print('----------------------------------');

<!-- OUTPUT -->
I/flutter (10315): ----------------------------------
I/flutter (10315): User(displayName: null, email: pankajbasnet2020@hotmail.com, isEmailVerified: false, isAnonymous: false, metadata: UserMetadata(creationTime: 2024-08-07 09:53:16.396Z, lastSignInTime: 2024-08-08 08:26:36.711Z), phoneNumber: null, photoURL: null, providerData, [UserInfo(displayName: null, email: pankajbasnet2020@hotmail.com, phoneNumber: null, photoURL: null, providerId: password, uid: pankajbasnet2020@hotmail.com)], refreshToken: null, tenantId: null, uid: v8lNUgYzA2ddc8cq8sPijttkXG12)
I/flutter (10315): ----------------------------------
I/flutter (10315): FirebaseAuth(app: [DEFAULT])
I/flutter (10315): ----------------------------------

-----------------------------------------------------------

https://developer.android.com/training/data-storage/shared-preferences


Android Developers
https://developer.android.com › ...
A SharedPreferences object points to a file containing key-value pairs and provides simple methods to read and write them. Each ...

Shared Preferences in Android with Example

GeeksforGeeks
https://www.geeksforgeeks.org › ...
·
Shared Preferences is the way in which one can store and retrieve small amounts of primitive data as key/value pairs to a file on the device storage such as ..

-----------------------------------------------------------

final user = FirebaseAuth.instance.currentUser;
              if (user.emailVerified) { --------------- error ---- receiver can be 'null' --- add "?." 
                print('You are a verified user');
              } else {
                print('You need to verify your email first');
              }

https://dart.dev/null-safety/understanding-null-safety  --- null aware operator---  "?." 

-----------------------------------------------------------
if (user?.emailVerified) {

https://dart.dev/language/operators

.	Member access	Refers to a property of an expression; example: foo.bar selects property bar from expression foo
.......................
?.	Conditional member access	Like ., but the leftmost operand can be null; example: foo?.bar selects property bar from expression foo unless foo is null (in which case the value of foo?.bar is null)


use ""emailVerified""  instead of ------ if (user?.emailVerified)

 final emailVerified = user?.emailVerified ?? false
              if (emailVerified) {

-----------------------------------------------------------

 builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              final user = FirebaseAuth.instance.currentUser;
              // final emailVerified = user?.emailVerified ?? false;
              if (user?.emailVerified ?? false) {
                print('You are a verified user');
              } else {
                print('You need to verify your email first');
              }
              return const Text('done ');
            default:
              return const Text('Loading');
          }
        },

-----------------------------------------------------------





-----------------------------------------------------------


-----------------------------------------------------------





-----------------------------------------------------------





-----------------------------------------------------------





-----------------------------------------------------------





-----------------------------------------------------------





-----------------------------------------------------------





-----------------------------------------------------------





-----------------------------------------------------------
