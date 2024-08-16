
# Chapter 17 - Link Between Login and Register Views - Free Flutter Course 💙
# Chapter 17 - Link Between Login and Register Views - Free Flutter Course 💙
# Chapter 17 - Link Between Login and Register Views - Free Flutter Course 💙
# Chapter 17 - Link Between Login and Register Views - Free Flutter Course 💙
# Chapter 17 - Link Between Login and Register Views - Free Flutter Course 💙

<!-- https://www.youtube.com/watch?v=xVIV0LTchFs&list=PL6yRaaP0WPkVtoeNIGqILtRAgd3h2CNpT&index=18 -->
<!-- https://www.youtube.com/watch?v=xVIV0LTchFs&list=PL6yRaaP0WPkVtoeNIGqILtRAgd3h2CNpT&index=18 -->
<!-- https://www.youtube.com/watch?v=xVIV0LTchFs&list=PL6yRaaP0WPkVtoeNIGqILtRAgd3h2CNpT&index=18 -->
<!-- https://www.youtube.com/watch?v=xVIV0LTchFs&list=PL6yRaaP0WPkVtoeNIGqILtRAgd3h2CNpT&index=18 -->
<!-- https://www.youtube.com/watch?v=xVIV0LTchFs&list=PL6yRaaP0WPkVtoeNIGqILtRAgd3h2CNpT&index=18 -->


-----------------------------------------------------------

<!-- ⌨️ (11:44:45) Link Between Login and Register Views -->
<!-- ⌨️ (11:44:45) Link Between Login and Register Views -->
<!-- ⌨️ (11:44:45) Link Between Login and Register Views -->
<!-- ⌨️ (11:44:45) Link Between Login and Register Views -->
<!-- ⌨️ (11:44:45) Link Between Login and Register Views -->

<!-- https://www.youtube.com/watch?v=VPvVD8t02U8&t=42285s -->
<!-- https://www.youtube.com/watch?v=VPvVD8t02U8&t=42285s -->
<!-- https://www.youtube.com/watch?v=VPvVD8t02U8&t=42285s -->

-----------------------------------------------------------
----------------            TIME            1 mins      ----------------
----------------            TIME            1 mins      ----------------

<!--     -----  sub-topic ---    -----    sub-chapter     --      We need to go between views     -->
<!--     -----  sub-topic ---    -----    sub-chapter     --      We need to go between views     -->
<!--     -----  sub-topic ---    -----    sub-chapter     --      We need to go between views     -->
<!--     -----  sub-topic ---    -----    sub-chapter     --      We need to go between views     -->
right now they are not linked and need manual display

-----------------------------------------------------------

<!-- login_view.dart --> 
TextButton 

TextButton({ required VoidCallback? onPressed, ......... required Widget child}) ---- first write "onPressed" ,
TextButton---- first write "onPressed" , then put "child" argument--- isn= --- https://api.flutter.dev/flutter/material/TextButton-class.html
TextButton---- explained many times by instructor before {{sn=}}

-----------------------------------------------------------
time- 3 mins

<!--     -----       sub-topic     -----    sub-chapter     --      named routes     -->
<!--     -----       sub-topic     -----    sub-chapter     --      named routes     -->
<!--     -----       sub-topic     -----    sub-chapter     --      named routes     -->
https://docs.flutter.dev/cookbook/navigation/named-routes

-----------------------------------------------------------


<!--     -----       sub-topic     -----    sub-chapter     --      Named routes vs anonymous routes    -->
<!--     -----       sub-topic     -----    sub-chapter     --      Named routes vs anonymous routes    -->
<!--     -----       sub-topic     -----    sub-chapter     --      Named routes vs anonymous routes    -->
Anonymous routes are not as reusable

-----------------------------------------------------------

https://www.freecodecamp.org/news/navigation-in-flutter/---https://www.geeksforgeeks.org/routes-and-navigator-in-flutter/---https://medium.com/@chetan.akarte/explain-the-flutter-navigator-widget-and-its-methods-0f6f5023ff0c


-----------------------------------------------------------


<!--     -----       sub-topic     -----    sub-chapter     --      Define login and register routes    -->
<!--     -----       sub-topic     -----    sub-chapter     --      Define login and register routes    -->
<!--     -----       sub-topic     -----    sub-chapter     --      Define login and register routes    -->
In main.dart, define /login/ and /register/ routes


home: const HomePage(),
      routes: {
        '/login/':(context) => const LoginView(),
        '/register/':(context) => const RegisterView(),

-----------------------------------------------------------



<!--     -----       sub-topic     -----    sub-chapter     --      Go from login to register view (will cause error)    -->
<!--     -----       sub-topic     -----    sub-chapter     --      Go from login to register view (will cause error)    -->
<!--     -----       sub-topic     -----    sub-chapter     --      Go from login to register view (will cause error)    -->
Using Navigator.of(context).pushNamedAndRemoveUntil


error ------- because no scaffold ---- all removed and Login_view "Column" pushed

-----------------------------------------------------------


-----       TIME     -----    14 mins    --      

<!--     -----       sub-topic     -----    sub-chapter     --      Add scaffold to register view    -->
<!--     -----       sub-topic     -----    sub-chapter     --      Add scaffold to register view    -->
<!--     -----       sub-topic     -----    sub-chapter     --      Add scaffold to register view    -->
We need this to fix our previous error

previously, we removed "Scaffold" of Register view to place "column" on top of Scaffold of HomePage

<!-- D:\src_dev\flutter\sagarmatha\trekkingmap\lib\views\register_view.dart -->
wrap "Column" with widget ---- rename widget to "Scaffold"
 rename child to "body"

-----------------------------------------------------------

we can now go to Register view from Homepage


-----------------------------------------------------------

-----       TIME     -----    14 mins    --      

<!--     -----       sub-topic     -----    sub-chapter     --      Go from register to login view    -->
<!--     -----       sub-topic     -----    sub-chapter     --      Go from register to login view    -->
<!--     -----       sub-topic     -----    sub-chapter     --      Go from register to login view    -->
Add a TextButton below register button to go to login
------
Program the new "go to login view" button
Navigator.of(context).pushNamedAndRemoveUntil('/login/', ()=>false);

-----------------------------------------------------------


-----       TIME     -----    17 mins    --      

<!--     -----       sub-topic     -----    sub-chapter     --      The same error in our new button   -->
<!--     -----       sub-topic     -----    sub-chapter     --      The same error in our new button   -->
<!--     -----       sub-topic     -----    sub-chapter     --      The same error in our new button   -->
Pressing the login button causes error for lack of scaffold



<!-- D:\src_dev\flutter\sagarmatha\trekkingmap\lib\views\login_view.dart -->
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login'),),
      body: Column(


-----------------------------------------------------------


-----       TIME     -----    20 mins    --      

<!--     -----       sub-topic     -----    sub-chapter     --      Remove scaffold from HomePage   -->
<!--     -----       sub-topic     -----    sub-chapter     --      Remove scaffold from HomePage   -->
<!--     -----       sub-topic     -----    sub-chapter     --      Remove scaffold from HomePage   -->
add it instead to our 3 other views


currently, two scaffold seen {{sn=}} -- Scaffold of "homepage" ---welcome to homepage + Scaffold of "login view" -- "Login" title

delele scaffold from Homepage,  scaffold should be in all other views --

-----------------------------------------------------------

<!-- cut and paste these code ---------- -->

FutureBuilder(
        future: Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        ),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              // final user = FirebaseAuth.instance.currentUser;
              // print(user);
              // // final emailVerified = user?.emailVerified ?? false;
              // if (user?.emailVerified ?? false) {
              //   print('verified------------------------------');
              //   return const Text('done ');

              // } else {
              //   print('why????????????? verified?????????????');

              //   return const  VerifyEmailView();

              // }
              return LoginView();

            default:
              return const Text('Loading');
          }
        },
      )

<!-- cut and paste these code ----------///>>> -->


-----------------------------------------------------------

<!-- delele these code ---------- -->

Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to homepage !'),
        backgroundColor: Colors.white54,
      ),
      body: ,
      backgroundColor: const Color.fromARGB(255, 144, 162, 192),
    )

<!-- delele these code ----------//>> -->


-----------------------------------------------------------
<!-- wrap column with "widget" --> Scaffold(body: Column

class VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return  Column(

-----------------------------------

class VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(




-----------------------------------------------------------


        default:
              return const Text('Loading');

------------------------

        default:
              return const CircularProgressIndicator();

-----------------------------------------------------------



-----       TIME     -----    23 mins    --      

<!--     -----       sub-topic     -----    sub-chapter     --      Move verify email view to its own file   -->
<!--     -----       sub-topic     -----    sub-chapter     --      Move verify email view to its own file   -->
<!--     -----       sub-topic     -----    sub-chapter     --      Move verify email view to its own file   -->
lib/views/verify_email_view.dart



create lib/views/verify_email_view.dart
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


-----------------------------------------------------------

if (user != null){
                if (user.emailVerified) {
                  print('Email is verified ');
                } else {
                  return const VerifyEmailView();
                } 
                
              } else {
                return const LoginView();
              }
              return const Text('done --- from Homepage --- after "email is verified" or verifyEmailView or LoginView');

            default:
              return const CircularProgressIndicator();
          }


-----------------------------------------------------------
<!-- in android phone ----- output ---  -->
done --- from Homepage --- after verifyEmailView or LoginView'

<!-- in debug console -->
I/flutter (11653): Email is verified 

once logged into firebase and email verified through flutter, no need to log in again next after turn off computer

-----------------------------------------------------------




-----------------------------------------------------------


