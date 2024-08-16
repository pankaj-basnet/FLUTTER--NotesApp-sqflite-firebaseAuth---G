z-------notes-555--chap-18---v-sh--.md
D:\src_dev\flutter\sagarmatha\z-------notes-555--chap-18---v-sh--.md

========================================================================
(12:18:01) Logout View
<!-- https://www.youtube.com/watch?v=VPvVD8t02U8&t=44281s -->
========================================================================
========================================================================
========================================================================
========================================================================
========================================================================
========================================================================
========================================================================
========================================================================

git commit    -------     step-03     ------    isn=
git commit    -------     step-03     ------    isn=
git commit    -------     step-03     ------    isn=
git commit    -------     step-03     ------    isn=
git commit    -------     step-03     ------    isn=
git commit    -------     step-03     ------    isn=
git commit    -------     step-03     ------    isn=

# Chapter 18 - Logout View - Free Flutter Course 💙
# Chapter 18 - Logout View - Free Flutter Course 💙
# Chapter 18 - Logout View - Free Flutter Course 💙
# Chapter 18 - Logout View - Free Flutter Course 💙
# Chapter 18 - Logout View - Free Flutter Course 💙
# Chapter 18 - Logout View - Free Flutter Course 💙
# Chapter 18 - Logout View - Free Flutter Course 💙
# Chapter 18 - Logout View - Free Flutter Course 💙
https://www.youtube.com/watch?v=B0MSM0YHIXk


 @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        ),
        builder: (context, snapshot) { -------------------- builder function must return a widget ((()))


builder: ---> dart extension ----  https://api.flutter.dev/flutter/widgets/FutureBuilder/builder.html
required Widget Function(BuildContext context, AsyncSnapshot<FirebaseApp> builder) 

Widget Function(BuildContext context, AsyncSnapshot<T> snapshot) --- final AsyncWidgetBuilder<T> builder;

https://api.flutter.dev/flutter/widgets/AsyncWidgetBuilder.html---https://api.flutter.dev/flutter/widgets/AsyncSnapshot-class.html


------------------------

 builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              final user = FirebaseAuth.instance.currentUser;
             
              if (user != null){ ----- {{topic= 1110 if-else condition }} -- dart -- "return" statement --IMP-- beginners
                if (user.emailVerified) {
                  print('Email is verified ');  -- returns "const Text" --- after this, goes to ""return const Text('done""
                } else {
                  return const VerifyEmailView();
                } 
                
              } else {
                return const LoginView();
              }
              return const Text('done --- from Homepage --- after verifyEmailView or LoginView');


------------------------


-----------------------------------------------------------



-----       TIME     -----    3 mins    --      

<!--     -----       sub-topic     -----    sub-chapter     --      NotesView Widget   -->
<!--     -----       sub-topic     -----    sub-chapter     --      NotesView Widget   -->
<!--     -----       sub-topic     -----    sub-chapter     --      NotesView Widget   -->
Create a new StatefulWidget called NotesView Widget

-----------------------------------------------------------




-----       TIME     -----    5 mins    --      

<!--     -----       sub-topic     -----    sub-chapter     --      Use NotesView    -->
<!--     -----       sub-topic     -----    sub-chapter     --      Use NotesView    -->
<!--     -----       sub-topic     -----    sub-chapter     --      Use NotesView    -->
In HomePage, return NotesView instead of Text('Done')


<!-- main.dart -->
delete " return const Text('done --- from Homepage --- after verifyEmailView or LoginView'); "
delete " print('Email is verified '); "


            if (user != null) {
              if (user.emailVerified) {
                return const NotesView();
-----------------------------------------------------------

read Appbar class in flutter docs
read Appbar class in flutter docs
read Appbar class in flutter docs


-----------------------------------------------------------

-----       TIME     -----    12 mins    --      

<!--     -----       sub-topic     -----    sub-chapter     --      Return NotesView in HomePage    -->
<!--     -----       sub-topic     -----    sub-chapter     --      Return NotesView in HomePage    -->
<!--     -----       sub-topic     -----    sub-chapter     --      Return NotesView in HomePage    -->
We shouldn't have any print in HomePage

avoid using print ----- buffer ---- 

-----------------------------------------------------------


-----       TIME     -----    15 mins    --      

<!--     -----       sub-topic     -----    sub-chapter     --      We need popup items enumeration (soon)    -->
<!--     -----       sub-topic     -----    sub-chapter     --      We need popup items enumeration (soon)    -->
<!--     -----       sub-topic     -----    sub-chapter     --      We need popup items enumeration (soon)    -->
An enumeration that describes our popup menu items

-----------------------------------------------------------

-----       TIME     -----    18 mins    --      

<!--     -----       sub-topic     -- PopupMenuButton vs PopupMenuItem ---    sub-chapter     --      We need popup items enumeration (soon)    -->
<!--     -----       sub-topic     -- PopupMenuButton vs PopupMenuItem ---    sub-chapter     --      We need popup items enumeration (soon)    -->
<!--     -----       sub-topic     -- PopupMenuButton vs PopupMenuItem ---    sub-chapter     --      We need popup items enumeration (soon)    -->
They are usually used together


PopupMenuButton -- PopupMenuItem --- explaination --- flutter docs
PopupMenuButton is like parent  ---- has itemBuilder ---- and items are of type "PopupMenuItem" ----""<WhyFather> in docs are enums ---enumeration""

enum explained and practiced in "dart basics" chapter.{{isn= sn=}}

PopupMenuItem<T> --- generics ------ <T>---is type, you provide later 

https://dart.dev/language/generics



-----------------------------------------------------------


-----       TIME     -----    22 mins    --      

<!--     -----       sub-topic     -- MenuAction enum ---    sub-chapter     --      We need popup items enumeration (soon)    -->
<!--     -----       sub-topic     -- MenuAction enum ---    sub-chapter     --      We need popup items enumeration (soon)    -->
<!--     -----       sub-topic     -- MenuAction enum ---    sub-chapter     --      We need popup items enumeration (soon)    -->


-----------------------------------------------------------


-----       TIME     -----    23 mins    --      

<!--     -----       sub-topic     -- Add your popup menu button  ---    sub-chapter     --      Add your popup menu button    -->
<!--     -----       sub-topic     -- Add your popup menu button  ---    sub-chapter     --      Add your popup menu button    -->
<!--     -----       sub-topic     -- Add your popup menu button  ---    sub-chapter     --      Add your popup menu button    -->
in NotesViewState app bar, create PopupMenuButton<MenuAction>


-----------------------------------------------------------

appBar: AppBar(
        title: const Text('Main UI'),
        actions: [
          PopupMenuButton<MenuAction>(onSelected: (value) {
            const PopupMenuItem<MenuAction>(value: MenuAction.logout,

PopupMenuItem-- value of "MenuAction.logout"--- pass as argument to onSelected function --PopupMenuButton--onSelected: (value) ---- 

-----------------------------------------------------------

itemBuilder: (context) {
              return const [
                PopupMenuItem<MenuAction>(
                  value: MenuAction.logout,
                  child: Text('Log out'),
                ),
              ];
            },


-----------------------------------------------------------

const [PopupMenuItem<MenuAction>()] ---const [list] ------- instead of "" [const PopupMenuItem<MenuAction>()] "" ---- slight modification -- vs code dart extension suggestion

https://dart.dev/language/generics
<!-- 
Here the generic type parameter on first (<T>) allows you to use the type argument T in several places:

In the function's return type (T).
In the type of an argument (List<T>).
In the type of a local variable (T tmp). -->

-----------------------------------------------------------
https://youtu.be/B0MSM0YHIXk?t=1596
<!-- time 26 -->

"logout" Button pops out when "three dots clicked"------ complete ------ action on logout remaining though

<!-- appBar: AppBar(
        title: const Text('Main UI'),
        actions: [
          PopupMenuButton<MenuAction>(
              onSelected: (value) {
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
      ), -->

"Log out"  is like a child widget ------- it was created using PopupMenuItem class ------ 

PopupMenuButton widget has two properties --- onSelected and itemBuilder
onSelected receives "value" after PopupMenuItem created by 'itemBuilder' is clicked
PopupMenuButton widget  has "PopupMenuItem" widget inside it.
             


-----------------------------------------------------------



-----       TIME     -----    26 mins    --      

<!--     -----       sub-topic     -- Popup menu item has a "child" property     --      Add YOUR POP UP MENU BUTTON    -->


-----------------------------------------------------------



-----       TIME     -----    28 mins    --      

<!--     -----       sub-topic     -- use log instead of print     --         USE LOG INSTEAD OF PRINT    -->
<!--     -----       sub-topic     -- use log instead of print     --         USE LOG INSTEAD OF PRINT    -->
<!--     -----       sub-topic     -- use log instead of print     --         USE LOG INSTEAD OF PRINT    -->
import 'dart:developer' as devtools show log;

devtools.log(value.toString()); ------- value being "enum"


[log] MenuAction.logout

-----------------------------------------------------------


-----       TIME     -----    33 mins    --      

<!--     -----       sub-topic     -- Tapping on "sign/log out" should display dialog     --         USE LOG INSTEAD OF PRINT    -->
<!--     -----       sub-topic     -- Tapping on "sign/log out" should display dialog     --         USE LOG INSTEAD OF PRINT    -->
<!--     -----       sub-topic     -- Tapping on "sign/log out" should display dialog     --         USE LOG INSTEAD OF PRINT    -->
We can use showDialog and AlertDialog


-----------------------------------------------------------



-----       TIME     -----    33 mins    --      

<!--     -----       sub-topic     -- Write a logout function to display a dialog     --         USE LOG INSTEAD OF PRINT    -->
<!--     -----       sub-topic     -- Write a logout function to display a dialog     --         USE LOG INSTEAD OF PRINT    -->
<!--     -----       sub-topic     -- Write a logout function to display a dialog     --         USE LOG INSTEAD OF PRINT    -->
future<bool> function called showLogOutDialog(context)

-----------------------------------------------------------


Future<bool> showLogOutDialog(BuildContext context) { ----- required to return true or false
  return showDialog<bool>( -------- might return null
    
then((value) => value ?? false); -------- return the value if available or false--- removes above error

-----------------------------------------------------------
<!-- ================ -->
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
<!-- ===========//>> -->



I/flutter (28021): false ---output false if user tap "back button" of phone or tap outside the "alert dialog" to go back ---- then((value) => value ?? false); 


-----------------------------------------------------------


-----       TIME     -----    47 mins    --      

<!--     -----       sub-topic     --   log out from firebase     --         LOG OUT FROM FIREBASE    -->
<!--     -----       sub-topic     --   log out from firebase     --         LOG OUT FROM FIREBASE    -->
<!--     -----       sub-topic     --   log out from firebase     --         LOG OUT FROM FIREBASE    -->
Upon signing out, await FirebaseAuth.instance.signout();

                    await FirebaseAuth.instance.signOut();


-----------------------------------------------------------


-----       TIME     -----    49 mins    --      

<!--     -----       sub-topic     --   go back to login view upon logging out     --         GO BACK TO LOGIN VIEW UPON LOGGING OUT    -->
<!--     -----       sub-topic     --   go back to login view upon logging out     --         GO BACK TO LOGIN VIEW UPON LOGGING OUT    -->
<!--     -----       sub-topic     --   go back to login view upon logging out     --         GO BACK TO LOGIN VIEW UPON LOGGING OUT    -->
Navigator.of(context).pushNamedAndRemoveUntil('/login/')


<!-- before firebase logout -->
[log] User(displayName: , email: pankajbasnet2020@hotmail.com, isEmailVerified: true, isAnonymous: false, metadata: UserMetadata(creationTime: 2024-08-07 09:53:16.396Z, lastSignInTime: 2024-08-08 08:26:36.711Z), phoneNumber: , photoURL: null, providerData, [UserInfo(displayName: , email: pankajbasnet2020@hotmail.com, phoneNumber: , photoURL: null, providerId: password, uid: pankajbasnet2020@hotmail.com)], refreshToken: null, tenantId: null, uid: v8lNUgYzA2ddc8cq8sPijttkXG12)

-----------------------------------------------------------

<!-- after firebase logout -->

D/FirebaseAuth(29030): Notifying id token listeners about a sign-out event.
D/FirebaseAuth(29030): Notifying auth state listeners about a sign-out event.


========================================================================
========================================================================
========================================================================
========================================================================
========================================================================
========================================================================
========================================================================
========================================================================
========================================================================

Flutter Course for Beginners – 37-hour Cross Platform App Development Tutorial

(13:13:46) Go From Login to Notes View
<!-- https://www.youtube.com/watch?v=VPvVD8t02U8&t=47626s -->

# Chapter 19 - Go From Login to Notes View - Free Flutter Course 
# Chapter 19 - Go From Login to Notes View - Free Flutter Course 
# Chapter 19 - Go From Login to Notes View - Free Flutter Course 
# Chapter 19 - Go From Login to Notes View - Free Flutter Course 
# Chapter 19 - Go From Login to Notes View - Free Flutter Course 
# Chapter 19 - Go From Login to Notes View - Free Flutter Course 
# Chapter 19 - Go From Login to Notes View - Free Flutter Course 
# Chapter 19 - Go From Login to Notes View - Free Flutter Course 
# Chapter 19 - Go From Login to Notes View - Free Flutter Course 
# Chapter 19 - Go From Login to Notes View - Free Flutter Course 

https://www.youtube.com/watch?v=o4YtKPMOEj0&list=PL6yRaaP0WPkVtoeNIGqILtRAgd3h2CNpT&index=20



# remove print statement , use log
# remove print statement , use log

print function
C:\Users\saurav\dev\tooling\flutter\bin\cache\pkg\sky_engine\lib\core\print.dart

----------------------------------------------------------------------
remove unused import 
import 'package:firebase_core/firebase_core.dart';
import 'package:trekkingmap/firebase_options.dart';


----------------------------------------------------------------------

https://pub.dev/documentation/firebase/latest/firebase/UserCredential-class.html----https://firebase.google.com/docs/reference/js/auth#.UserCredential


--------------------


// https://pub.dev/documentation/firebase/latest/firebase/UserCredential-class.html----https://firebase.google.com/docs/reference/js/auth#.UserCredential

// C:\Users\saurav\AppData\Local\Pub\Cache\hosted\pub.dev\firebase_auth-5.1.3\lib\src\user_credential.dart

// https://api.dart.dev/stable/3.5.0/dart-core/Object/toString.html

C:\Users\saurav\dev\tooling\flutter\bin\cache\pkg\sky_engine\lib\core\object.dart

--------------------------------------------------
# D:\src_dev\flutter\sagarmatha\trekkingmap\lib\views\login_view.dart

<!-- 
final email = _email.text;
final password = _password.text;

final userCredential = await FirebaseAuth.instance
.signInWithEmailAndPassword(email: email, password: password);

print(userCredential);
email.toString(); --------- "Object" class -- toString method
devtools.log(userCredential.toString()); --------- toString method of "UserCredential" class ----over-riding "Object" class -- toString method
-->


String toString() ---- A string representation of this object. ---https://api.dart.dev/stable/3.5.0/dart-core/Object/toString.html


// import 'package:firebase_core/firebase_core.dart'; // unused import

----------------------------------------------------------------------

ctrl+shift+F ----- search "print function" ------- remove this way only in smaller project
remove "print function" and do unit test for bigger project

----------------------------------------------------------------------
<!-- Logging in as pankajbasnet2020@hotmail.com  --> wifi off ERROR

I/FirebaseAuth(22436): Logging in as pankajbasnet2020@hotmail.com with empty reCAPTCHA token
D/NetworkSecurityConfig(22436): No Network Security Config specified, using platform default
W/System  (22436): Ignoring header X-Firebase-Locale because its value was null.
E/RecaptchaCallWrapper(22436): Initial task failed for action RecaptchaAction(action=signInWithPassword)with exception - A network error (such as timeout, interrupted connection or unreachable host) has occurred.
I/gralloc (22436): gralloc_register_buffer hnd=0x90dec380, share_fd=88, share_attr_fd=-1, magic=51647890, format=1, internal_format=1, byte_stride=1920, flags=4, usage=0xb00, size=1639680, width=480, height=854, internalWidth=480, internalHeight=854, stride=480, base=0x7f1ef000, writeOwner=0, attr_base=0xffffffff, yuv_info=1, fd=-1, buf_idx=0, offset=0, min_pgsz=4096, phyaddr=0
E/        (22436): Shared attribute region not available to be mapped


----------------------------------------------------------------------

<!-- I/FirebaseAuth(22436): Logging in as pankajbasnet2020@hotmail.com with empty reCAPTCHA token -->
2
W/System  (22436): Ignoring header X-Firebase-Locale because its value was null.
D/FirebaseAuth(22436): Notifying id token listeners about user ( v8lNUgYzA2ddc8cq8sPijttkXG12 ).
D/FirebaseAuth(22436): Notifying auth state listeners about user ( v8lNUgYzA2ddc8cq8sPijttkXG12 ).
[log] UserCredential(additionalUserInfo: AdditionalUserInfo(isNewUser: false, profile: {}, providerId: null, username: null, authorizationCode: null), credential: null, user: User(displayName: null, email: pankajbasnet2020@hotmail.com, isEmailVerified: true, isAnonymous: false, metadata: UserMetadata(creationTime: 2024-08-07 09:53:16.396Z, lastSignInTime: 2024-08-11 04:59:39.474Z), phoneNumber: null, photoURL: null, providerData, [UserInfo(displayName: null, email: pankajbasnet2020@hotmail.com, phoneNumber: null, photoURL: null, providerId: password, uid: pankajbasnet2020@hotmail.com)], refreshToken: null, tenantId: null, uid: v8lNUgYzA2ddc8cq8sPijttkXG12))


----------------------------------------------------------------------


-----       TIME     -----    49 mins    --      

<!--     -----       sub-topic     --   add a new route for NotesView     --         CREATE A NEW ROUTE    -->
<!--     -----       sub-topic     --   add a new route for NotesView     --         CREATE A NEW ROUTE    -->
<!--     -----       sub-topic     --   add a new route for NotesView     --         CREATE A NEW ROUTE    -->
In main.dart , add a new route called '/notes/' that goes to NotesView


push '/notes/' route to the screen get NotesView on the screen  ---         '/notes/': (context) => const NotesView(),


        '/notes/': (context) => const NotesView(),


----------------------------------------------------------------------

git tag "step-4" --- https://git-scm.com/book/en/v2/Git-Basics-Tagging


----------------------------------------------------------------------


========================================================================
========================================================================
========================================================================
========================================================================
========================================================================
========================================================================
========================================================================
========================================================================
========================================================================

# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙
# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙
# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙
# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙
# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙
# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙
# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙
# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙
# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙
# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙
# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙
# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙
# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙
# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙
# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙
# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙
# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙
# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙
# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙
# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙
# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙
# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙
# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙
# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙
# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙
# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙
# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙
# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙
# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙
# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙
# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙
# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙
# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙
# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙
# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙
# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙
# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙
# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙
# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙
# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙
# Chapter 20 - Cleaning Up our Routes - Free Flutter Course 💙

<!-- https://www.youtube.com/watch?v=aVKtGrk5V7U&list=PL6yRaaP0WPkVtoeNIGqILtRAgd3h2CNpT&index=21 -->


----------------------------------------------------------------------

create sagarmatha\trekkingmap\lib\contants
create sagarmatha\trekkingmap\lib\contants\routes.dart
shortcut "creating new file" inside new folder ------ create contants\routes.dart in lib folder

----------------------------------------------------------------------

remove all hardcoded routes --- usuallly pushNamedAndRemoveUntil(..., (route) => false,)}, --- have routes --- 
pushNamedAndRemoveUntil(loginRoute, (route) => false,)},

----------------------------------------------------------------------

git tag "step-5" --- git push --tags


----------------------------------------------------------------------



========================================================================
========================================================================
========================================================================
========================================================================
========================================================================
========================================================================
========================================================================
========================================================================
========================================================================

# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
# Chapter 21 - Error Handling in Login View - Free Flutter Course 💙
https://www.youtube.com/watch?v=nkiCyCzodW8&list=PL6yRaaP0WPkVtoeNIGqILtRAgd3h2CNpT&index=22
----------------------------------------------------------------------

try staement --- catch block

3 auth exception handling --- 1 generic exception handling ----- register_view.dart
2 auth exception handling --- 1 generic exception handling ----- login_view.dart

----------------------------------------------------------------------




-----       TIME     -----    5 mins    --      

<!---  sub-topic--- >   We need a generic dialog function   --   sub-chapter--- >   FUNCTION SIGNATURE    -->
<!---  sub-topic--- >   We need a generic dialog function   --   sub-chapter--- >   FUNCTION SIGNATURE    -->
<!---  sub-topic--- >   We need a generic dialog function   --   sub-chapter--- >   FUNCTION SIGNATURE    -->
future<void> showErrorDialog(context, String text)



----------------------------------------------------------------------


overlay ----- better than navigator in some case {{bigger project mb=}} --- https://api.flutter.dev/flutter/widgets/Overlay-class.html


----------------------------------------------------------------------


Future<void> showErrorDialog(
  BuildContext context,
  String text,
) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('An error occurred...'),
          content: Text(text),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      });
}



----------------------------------------------------------------------


await showErrorDialog(
                    context,
                    'User not found',

----------------------------------------------------------------------


https://firebase.google.com/docs/auth/web/start

----------------------------------------------------------------------



-----       TIME     -----    14 mins    --      

<!---  sub-topic--- >   handle other firebase authentication exceptions   --   sub-chapter--- >   OTHER FIREBASE AUTHENTICATION EXCEPTIONS    -->
<!---  sub-topic--- >   handle other firebase authentication exceptions   --   sub-chapter--- >   OTHER FIREBASE AUTHENTICATION EXCEPTIONS    -->
<!---  sub-topic--- >   handle other firebase authentication exceptions   --   sub-chapter--- >   OTHER FIREBASE AUTHENTICATION EXCEPTIONS    -->
you can use e.code to get the error code


 } else {
                  await showErrorDialog(context, 'Error: ${e.code}...',);
                }


----------------------------------------------------------------------




-----       TIME     -----    20 mins    --      

<!---  sub-topic--- >   Move our dialog code into its own file   --   sub-chapter--- >   -----------    -->
<!---  sub-topic--- >   Move our dialog code into its own file   --   sub-chapter--- >   -----------    -->
<!---  sub-topic--- >   Move our dialog code into its own file   --   sub-chapter--- >   -----------    -->
Move showErrorDialog into lib/utilities/show_error_dialog.dart


create trekkingmap\lib\utilites
create trekkingmap\lib\utilites\show_error_dialog.dart
use shortcut utilites\show_error_dialog.dart

cut paste showErrorDialog function into show_error_dialog.dart

import 'package:flutter/material.dart'; // remove all errors




----------------------------------------------------------------------



import 'package:trekkingmap/utilites/show_error_dialog.dart';

----------------------------------------------------------------------


============================================================================
============================================================================
============================================================================
============================================================================
============================================================================
============================================================================
============================================================================
============================================================================
============================================================================
============================================================================
============================================================================
# Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙
# Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙
# Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙
# Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙
# Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙
# Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙
# Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙
# Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙
# Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙
# Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙
# Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙
# Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙
# Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙
# Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙
# Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙
# Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙
# Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙
# Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙
# Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙
# Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙
# Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙
# Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙
# Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙
# Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙
# Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙
# Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙
# Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙
# Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙
# Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙
# Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙
# Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙
# Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙
# Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙
# Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙
# Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙
# Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙
# Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙
# Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙
# Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙
# Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙

https://www.youtube.com/watch?v=qtXQxtZvFFo&list=PL6yRaaP0WPkVtoeNIGqILtRAgd3h2CNpT&index=24

In this chapter we will have a look at handling errors that might occur while the user is registering their account in our app. Just like how we did it for the login screen. After registering we will send the user to verify-email view where they will be informed that we've sent an email verification to their email address.

----------------------------------------------------------------------

if (e.code == 'weak-password') {
                  await showErrorDialog(
                    context,
                    'Weak password',
                  );
                  // devtools.log('Weak password'); // log not necessary isn= --- after showErrorDialog written
                } else if (e.code == 'email-already-in-use') {
                  await showErrorDialog(
                    context,
                    'Email is already in use...',
                  );


----------------------------------------------------------------------
<!-- D:\src_dev\flutter\sagarmatha\trekkingmap\lib\views\register_view.dart -->

 } else {
                  await showErrorDialog(
                    context,
                    'Error ${e.code}',
                  );
                }
                // .......................................
                // .......................................
              } catch (e) {
                  await showErrorDialog(context, e.toString(),);
                }

await showErrorDialog ---- add await before Future "showErrorDialog" ---because it is future --isn= {{imp= sn= already explained this concept before --- during "why use await? for future "}}
----------------------------------------------------------------------

-----       TIME     -----    6 mins    --      
<!---  sub-topic--- >   WE NEED TO CONFIRM EMAIL    -->
<!---  sub-topic--- >   WE NEED TO CONFIRM EMAIL    -->
<!---  sub-topic--- >   WE NEED TO CONFIRM EMAIL    -->
After every registration, we need to confirm the user's email

----------------------------------------------------------------------

currently VerifyEmailView is Stateful widget --- it is ok to change it to stateless widget --- because VerifyEmailView is not doing anything statefull.

const verifyEmailRoute = '/verify-email/';

<!-- register_view.dart -->
Navigator.of(context).pushNamed(verifyEmailRoute); ---- not "pushNamedAndRemoveUntil" --- 

"pushNamed" --- we dont want to remove register page because user might want to register if wrong email for verification sent
"pushNamedAndRemoveUntil" --- {{mb= user can then go to login page and user can verify email and login }}

"pushNamed" --- stack verifyEmailRoute on RegisterView but don't remove RegisterView after stacking ----- unlike "pushNamedAndRemoveUntil" which removes RegisterView after stacking 

-----       TIME     -----     mins    --      

<!---  sub-topic--- >  Show confirm view (push, don't replace)   --   sub-chapter--- >   -----------   ///>>> -->end
After successful registration, show verifyEmailRoute ///>>

----------------------------------------------------------------------

caught other firebase exception ------ > when no wifi connected to android phone when registering 
------> [log] [firebase_auth/network-request-failed] A network error (such as timeout, interrupted connection or unreachable host) has occurred.

showErrorDialog displayed then, firebase exception is printed in log after {{exiting catch block mb=}}

----------------------------------------------------------------------

[log] invalid email entered------showErrorDialog displayed  ----"" invalid email entered "" on android phone
[log] Weak password--------------showErrorDialog displayed  ----"" Weak password "" on android phone

----------------------------------------------------------------------
<!-- Creating user with babaghar2017@gmail.comm ------------------- wrong email -->
I/FirebaseAuth(12340): Creating user with babaghar2017@gmail.comm with empty reCAPTCHA token
2
W/System  (12340): Ignoring header X-Firebase-Locale because its value was null.
D/FirebaseAuth(12340): Notifying id token listeners about user ( dRCL9TmgmkZSEShunETpquFtgHo2 ).
D/FirebaseAuth(12340): Notifying auth state listeners about user ( dRCL9TmgmkZSEShunETpquFtgHo2 ).
D/InputConnectionAdaptor(12340): The input method toggled cursor monitoring off


----------------------------------------------------------------------
<!-- Creating user with babaghar2017@gmail.com -->
I/FirebaseAuth(12340): Creating user with babaghar2017@gmail.com with empty reCAPTCHA token
2
W/System  (12340): Ignoring header X-Firebase-Locale because its value was null.
D/FirebaseAuth(12340): Notifying id token listeners about user ( xPokPhpxsHfXYa12MAjI4tkuCZg2 ).
D/FirebaseAuth(12340): Notifying auth state listeners about user ( xPokPhpxsHfXYa12MAjI4tkuCZg2 ).
D/InputConnectionAdaptor(12340): The input method toggled cursor monitoring off

----------------------------------------------------------------------

<!-- error ----- Creating user with babaghar2017@gmail.com -->
I/FirebaseAuth(12340): Creating user with babaghar2017@gmail.com with empty reCAPTCHA token
W/System  (12340): Ignoring header X-Firebase-Locale because its value was null.
E/RecaptchaCallWrapper(12340): Initial task failed for action RecaptchaAction(action=signUpPassword)with exception - The email address is already in use by another account.
[log] Email is already in use
D/InputConnectionAdaptor(12340): The input method toggled cursor monitoring on


----------------------------------------------------------------------

<!-- Logging in as babaghar2017@gmail.com -----isEmailVerified: false -->
I/FirebaseAuth(12340): Logging in as babaghar2017@gmail.com with empty reCAPTCHA token
2
W/System  (12340): Ignoring header X-Firebase-Locale because its value was null.
D/FirebaseAuth(12340): Notifying id token listeners about user ( xPokPhpxsHfXYa12MAjI4tkuCZg2 ).
[log] User(displayName: null, email: babaghar2017@gmail.com, isEmailVerified: false, isAnonymous: false, metadata: UserMetadata(creationTime: 2024-08-12 09:58:48.991Z, lastSignInTime: 2024-08-12 10:08:35.491Z), phoneNumber: null, photoURL: null, providerData, [UserInfo(displayName: null, email: babaghar2017@gmail.com, phoneNumber: null, photoURL: null, providerId: password, uid: babaghar2017@gmail.com)], refreshToken: null, tenantId: null, uid: xPokPhpxsHfXYa12MAjI4tkuCZg2)
D/InputConnectionAdaptor(12340): The input method toggled cursor monitoring off



----------------------------------------------------------------------
<!-- Logging in as babaghar2017@gmail.com  -->

I/FirebaseAuth(12340): Logging in as babaghar2017@gmail.com with empty reCAPTCHA token
2
W/System  (12340): Ignoring header X-Firebase-Locale because its value was null.
D/FirebaseAuth(12340): Notifying id token listeners about user ( xPokPhpxsHfXYa12MAjI4tkuCZg2 ).
D/FirebaseAuth(12340): Notifying auth state listeners about user ( xPokPhpxsHfXYa12MAjI4tkuCZg2 ).
[log] User(displayName: null, email: babaghar2017@gmail.com, isEmailVerified: false, isAnonymous: false, metadata: UserMetadata(creationTime: 2024-08-12 09:58:48.991Z, lastSignInTime: 2024-08-12 10:29:16.548Z), phoneNumber: null, photoURL: null, providerData, [UserInfo(displayName: null, email: babaghar2017@gmail.com, phoneNumber: null, photoURL: null, providerId: password, uid: babaghar2017@gmail.com)], refreshToken: null, tenantId: null, uid: xPokPhpxsHfXYa12MAjI4tkuCZg2)
I/flutter (12340): current user is: xPokPhpxsHfXYa12MAjI4tkuCZg2
[log] current user is: xPokPhpxsHfXYa12MAjI4tkuCZg2
D/InputConnectionAdaptor(12340): The input method toggled cursor monitoring off


logged in user with no verified email---email: babaghar2017@gmail.com, isEmailVerified: false,

----------------------------------------------------------------------

<!-- D:\src_dev\flutter\sagarmatha\trekkingmap\lib\main.dart -->

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


----------------------------------------------------------------------


await showErrorDialog ---- add await before Future "showErrorDialog" ---because it is future --isn= {{imp= sn= already explained this concept before --- during "why use await? for future "}}

await showErrorDialog ---{{mb=}} "await" will run showErrorDialog() function ---- if no "await" was there, returns "Future" object {{mb= sn=}}

----------------------------------------------------------------------

 final user = FirebaseAuth.instance.currentUser;
                print(FirebaseAuth);
                print(FirebaseAuth.instance);
                await user?.sendEmailVerification();

                Navigator.of(context).pushNamed(verifyEmailRoute);


----------------------------------------------------------------------

<!-- send email verification ---trying----for wrong email address ---- after registering -->
firebase blocked android phone mb= 
<!-- flutter---- Unhandled Exception: [firebase_auth/too-many-requests] We have blocked all requests from this device due to unusual activity -->
2
W/System  (12340): Ignoring header X-Firebase-Locale because its value was null.
E/flutter (12340): [ERROR:flutter/runtime/dart_vm_initializer.cc(41)] Unhandled Exception: [firebase_auth/too-many-requests] We have blocked all requests from this device due to unusual activity. Try again later.
E/flutter (12340): #0      FirebaseAuthUserHostApi.sendEmailVerification (package:firebase_auth_platform_interface/src/pigeon/messages.pigeon.dart:1820:7)
E/flutter (12340): <asynchronous suspension>
E/flutter (12340): #1      MethodChannelUser.sendEmailVerification (package:firebase_auth_platform_interface/src/method_channel/method_channel_user.dart:190:7)
E/flutter (12340): <asynchronous suspension>
E/flutter (12340): #2      User.sendEmailVerification (package:firebase_auth/src/user.dart:564:5)
E/flutter (12340): <asynchronous suspension>
E/flutter (12340): #3      VerifyEmailViewState.build.<anonymous closure> (package:trekkingmap/views/verify_email_view.dart:22:13)
E/flutter (12340): <asynchronous suspension>
E/flutter (12340): 

----------------------------------------------------------------------

after "firebase blocked android phone mb=" , and restarting flutter app --- "verify email" view displayed with no "back" button
<!-- 
D/NetworkSecurityConfig(25618): No Network Security Config specified, using platform default
W/System  (25618): Ignoring header X-Firebase-Locale because its value was null.
I/gralloc (25618): gralloc_register_buffer hnd=0x87f4df80, share_fd=94, share_attr_fd=-1, magic=51647890, format=1, internal_format=1, byte_stride=1920, flags=4, usage=0xb00, size=1639680, width=480, height=854, internalWidth=480, internalHeight=854, stride=480, base=0x6baef000, writeOwner=0, attr_base=0xffffffff, yuv_info=1, fd=-1, buf_idx=0, offset=0, min_pgsz=4096, phyaddr=0
E/        (25618): Shared attribute region not available to be mapped -->



----------------------------------------------------------------------

email verified link clicked on email  babaghar2017@gmail.com

I/mbu.trekkingma(25618): Background concurrent copying GC freed 3474(282KB) AllocSpace objects, 0(0B) LOS objects, 49% free, 2MB/4MB, paused 8.923ms total 72.495ms






----------------------------------------------------------------------


 <!-- if (user != null) {
              print('user available ${user}');
              print('user available ${user}');
              if (user.emailVerified) {
                     print('user available emailVerifiedemailVerifiedemailVerified${user}');
                return const NotesView();
                                     print('user available NotesViewNotesViewNotesViewNotesView${user}');

              } else {
                                                     print('user available not---not---NotesViewnot---not---ViewNotesView${user}');

                // return const VerifyEmailView();
                                return const NotesView();

              }
            } else {
              print('not---not---not---not---not---');
              return const LoginView();
            } -->

Restarted application in 3,708ms.
2
I/flutter (28408): user available User(displayName: , email: me@gmail.com, isEmailVerified: false, isAnonymous: false, metadata: UserMetadata(creationTime: 2024-08-12 11:05:49.564Z, lastSignInTime: 2024-08-12 11:05:49.564Z), phoneNumber: , photoURL: null, providerData, [UserInfo(displayName: , email: me@gmail.com, phoneNumber: , photoURL: null, providerId: password, uid: me@gmail.com)], refreshToken: null, tenantId: null, uid: isozEgyejBUExRXYJpeBgdIFPgE2)
I/flutter (28408): user available not---not---NotesViewnot---not---ViewNotesViewUser(displayName: , email: me@gmail.com, isEmailVerified: false, isAnonymous: false, metadata: UserMetadata(creationTime: 2024-08-12 11:05:49.564Z, lastSignInTime: 2024-08-12 11:05:49.564Z), phoneNumber: , photoURL: null, providerData, [UserInfo(displayName: , email: me@gmail.com, phoneNumber: , photoURL: null, providerId: password, uid: me@gmail.com)], refreshToken: null, tenantId: null, uid: isozEgyejBUExRXYJpeBgdIFPgE2)
[log] User(displayName: , email: me@gmail.com, isEmailVerified: false, isAnonymous: false, metadata: UserMetadata(creationTime: 2024-08-12 11:05:49.564Z, lastSignInTime: 2024-08-12 11:05:49.564Z), phoneNumber: , photoURL: null, providerData, [UserInfo(displayName: , email: me@gmail.com, phoneNumber: , photoURL: null, providerId: password, uid: me@gmail.com)], refreshToken: null, tenantId: null, uid: isozEgyejBUExRXYJpeBgdIFPgE2)
[log] current user is: isozEgyejBUExRXYJpeBgdIFPgE2

------------------------------------

D/FirebaseAuth(28408): Notifying id token listeners about a sign-out event.
D/FirebaseAuth(28408): Notifying auth state listeners about a sign-out event.

----------------------------------------------------------------------
<!-- register_view.dart -->
 final user = FirebaseAuth.instance.currentUser;
                await user?.sendEmailVerification();

<!-- verify_email_view.dart -->




----------------------------------------------------------------------


Restarted application in 3,863ms.
I/flutter (28408): homepage view ------------------sn=----
I/flutter (28408): login view ------------------sn=----
I/flutter (28408): register email view ------------------sn=----


-----------------------------------------

<!-- register view -->
I/flutter (28408): FirebaseAuth
I/flutter (28408): FirebaseAuth(app: [DEFAULT])
I/FirebaseAuth(28408): Creating user with agrimbhujel2023@gmail.com with empty reCAPTCHA token
D/NetworkSecurityConfig(28408): No Network Security Config specified, using platform default
---
W/System  (28408): Ignoring header X-Firebase-Locale because its value was null.
D/FirebaseAuth(28408): Notifying id token listeners about user ( rlj9cINcN0eKCoHH9PZ8OYmRPrY2 ).
D/FirebaseAuth(28408): Notifying auth state listeners about user ( rlj9cINcN0eKCoHH9PZ8OYmRPrY2 ).
I/flutter (28408): FirebaseAuth
I/flutter (28408): FirebaseAuth(app: [DEFAULT])
W/System  (28408): Ignoring header X-Firebase-Locale because its value was null.
I/flutter (28408): verify email view ------------------sn=----


================================================================
================================================================
================================================================

after verify email sent ---- delete the registered user from firebase website

-----       TIME     -----     mins    --      
<!---  sub-topic--- >  Hot restart   --   sub-chapter--- >   -----------    -->
Let's clean the app state by hot restarting


hot restart ------ to clean the state of the app in android phone {{mb- sn=}}

there is no back button now from verify email page --- isn= {{back button only if sent from register page sn=}}
because may be sent from main.dart {{following code}}

if (user != null) {
              print('checking for user ------------homepage view ------------------sn=----');

              if (user.emailVerified) {
                return const NotesView();
              } else {
                return const VerifyEmailView(); -------- sending us to verify email ----

<!-- Restarted application in 3,972ms.
I/flutter (28408): homepage view ------------------sn=----
I/flutter (28408): checking for user ------------homepage view ------------------sn=----
I/flutter (28408): verify email view ------------------sn=---- -->

----------------------------------------------------------------------


-----       TIME     ----- est. 21   mins    --      
<!---  sub-topic--- >  FIREBASE doesn't understand the remote changes   --   sub-chapter--- >   -----------    -->
<!---  sub-topic--- >  FIREBASE doesn't understand the remote changes   --   sub-chapter--- >   -----------    -->
<!---  sub-topic--- >  FIREBASE doesn't understand the remote changes   --   sub-chapter--- >   -----------    -->
we need a restart button in the verify email view

firebase deleted "user" , when we clicked delete user --- doesnot delete local user
our flutter application has "user" stored {{sn=}}
android phone doesnot communicate with firebase website constantly {{sn=}}



----------------------------------------------------------------------


-----       TIME     ----- after 21   mins    --      
<!---  sub-topic--- >  Add restart button   --   sub-chapter--- >   -----------    -->
<!---  sub-topic--- >  Add restart button   --   sub-chapter--- >   -----------    -->
<!---  sub-topic--- >  Add restart button   --   sub-chapter--- >   -----------    -->
Add restart button to end verify email view and sign the user out with FirebaseAuth.instance.signOut()





----------------------------------------------------------------------


-----       TIME     -----  23   mins    --      
<!---  sub-topic--- >  Send user to register page   --   sub-chapter--- >   -----------    -->
<!---  sub-topic--- >  Send user to register page   --   sub-chapter--- >   -----------    -->
<!---  sub-topic--- >  Send user to register page   --   sub-chapter--- >   -----------    -->
Navigator.of(context).pushNamedAndRemoveUntil(...)


TextButton(onPressed: () async {
            await FirebaseAuth.instance.signOut();
            Navigator.of(context).pushNamedAndRemoveUntil(registerRoute, (route) => false,);
          }


I/flutter (28408): checking for user ------------homepage view ------------------sn=----
I/flutter (28408): verify email view ------------------sn=----
D/FirebaseAuth(28408): Notifying id token listeners about a sign-out event.
D/FirebaseAuth(28408): Notifying auth state listeners about a sign-out event.
I/flutter (28408): register email view ------------------sn=----


----------------------------------------------------------------------


-----       TIME     -----  24   mins    --      
<!---  sub-topic--- >  Hot restart and register   --   sub-chapter--- >   -----------    -->
<!---  sub-topic--- >  Hot restart and register   --   sub-chapter--- >   -----------    -->
<!---  sub-topic--- >  Hot restart and register   --   sub-chapter--- >   -----------    -->
Use the same credentials as before to register

restart the flutter app --- goes to login view ---- no user --- user is null
no user --- user is null ---- {{ signed out user from android phone though firebase api after pressing "Restart" button in "EmailVerifyView"}} {{{mb===}}}

even if user deleted from firebase --- signing out user from android phone though firebase  possible

restart the flutter app {{not hot reload}} ---- or "run without debug main.dart" ---- goes to "Login View"

----------------------------------------------------------------------


-----       TIME     -----  25   mins    --      
<!---  sub-topic--- >  Confirmation email in place   --   sub-chapter--- >   -----------    -->
<!---  sub-topic--- >  Confirmation email in place   --   sub-chapter--- >   -----------    -->
<!---  sub-topic--- >  Confirmation email in place   --   sub-chapter--- >   -----------    -->
Get the confirmation email but don't confirm yet


go to "email verify view" ------ we need to solve a problem isn=
don't click on email verification link

we don't check in loginView if email is verified -----done in next chapter




----------------------------------------------------------------------

git tag "step-7"

# git tag "step-7" --- Chapter 22 - Error Handling in Register View, Next Screen After Registration - Free Flutter Course 💙

----------------------------------------------------------------------
===========================================================================================
===========================================================================================
===========================================================================================
===========================================================================================
===========================================================================================
===========================================================================================
===========================================================================================
===========================================================================================
===========================================================================================
===========================================================================================
===========================================================================================
===========================================================================================
===========================================================================================
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
# Chapter 23 - Confirming Identity Before Going to Main UI - Free Flutter Course 💙
https://www.youtube.com/watch?v=CXhHZ6SBkF4&list=PL6yRaaP0WPkVtoeNIGqILtRAgd3h2CNpT&index=24

Vandad Nahavandipoor
44.7K subscribers  Jan 17, 2022
Part of the Free Flutter Course playlist:    • Free Flutter Course (Full Flutter Cou...  

In this chapter we will modify our business logic so that anybody trying to log in to our app has to have verified their email address already.

----------------------------------------------------------------------


-----       TIME     -----  1   mins    --

<!---  sub-topic--- >  Log out before continuing   --   sub-chapter--- >   -----------    -->
<!---  sub-topic--- >  Log out before continuing   --   sub-chapter--- >   -----------    -->
<!---  sub-topic--- >  Log out before continuing   --   sub-chapter--- >   -----------    -->

Log out of the main interface to go to the login screen




----------------------------------------------------------------------



-----       TIME     -----  2   mins    --
      
<!---  sub-topic--- >  Check if user is verified   --   sub-chapter--- >   -----------    -->
<!---  sub-topic--- >  Check if user is verified   --   sub-chapter--- >   -----------    -->
<!---  sub-topic--- >  Check if user is verified   --   sub-chapter--- >   -----------    -->

Add an if-statement in login_view.dart right after signInWithEmailAndPassword



----------------------------------------------------------------------


-----       TIME     -----  4   mins    --      
<!---  sub-topic--- >  Let's put it to test   --   sub-chapter--- >   -----------    -->
<!---  sub-topic--- >  Let's put it to test   --   sub-chapter--- >   -----------    -->
<!---  sub-topic--- >  Let's put it to test   --   sub-chapter--- >   -----------    -->
Remove your user from Firebase console and then test the process

reload flutter app after deleting user from firebase console
removing cache or invalidating cache in flutter project(in android phone mb=) ---- isn=

----------------------------------------------------------------------





----------------------------------------------------------------------




