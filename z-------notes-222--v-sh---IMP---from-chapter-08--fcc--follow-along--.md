
==================================================================================================
==================================================================================================

<!-- "D:\src\FLUTTER\learningdart\z-------notes-222--v-sh---IMP---from-chapter-08--.md" -->
<!-- "D:\src\FLUTTER\learningdart\z-------notes---v-sh---IMP---.md" -->

continued this project's notes from above above file notes
==================================================================================================
==================================================================================================
==================================================================================================

android version 9 
kernal version 4.4.147

build number lava_LN9910_1_16_S137_INT_21G21

<!-- https://developer.android.com/tools/adb#Enabling -->
<!-- https://developer.android.com/studio/debug/dev-options#enable -->



<!-- https://developer.android.com/studio/run/device#setting-up -->
Windows: Install a USB driver for ADB (if applicable). For an installation guide and links to OEM drivers, see Install OEM USB drivers.


D:\UNREAL-ENGINE\cfehome\scrcpy-win64-v2.6.1>scrcpy
scrcpy 2.6.1 <https://github.com/Genymobile/scrcpy>
ERROR: Could not find any ADB device
ERROR: Server connection failed

D:\UNREAL-ENGINE\cfehome\scrcpy-win64-v2.6.1>scrcpy
scrcpy 2.6.1 <https://github.com/Genymobile/scrcpy>
INFO: ADB device found:
INFO:     -->   (usb)  LN9910222K4002619               device  LN9910
D:\UNREAL-ENGINE\cfehome\scrcpy-win64-v2.6.1\scrcpy-server...1 file pushed, 0 skipped. 5.3 MB/s (71112 bytes in 0.013s)
[server] INFO: Device: [LAVA] LAVA LN9910 (Android 9)
[server] WARN: Audio disabled: it is not supported before Android 11
INFO: Renderer: direct3d
WARN: Demuxer 'audio': stream explicitly disabled by the device
INFO: Texture: 480x848



------------------------------------------------------------------------------------------


BUILD FAILED in 1m 42s

┌─ Flutter Fix ─────────────────────────────────────────────────────────────────────────────────┐
│ The plugin firebase_analytics requires a higher Android SDK version.                          │
│ Fix this issue by adding the following to the file                                            │
│ D:\src_dev\flutter\sagarmatha\trekkingmap\android\app\build.gradle:                           │
│ android {                                                                                     │
│   defaultConfig {                                                                             │
│     minSdkVersion 21                                                                          │
│   }                                                                                           │
│ }                                                                                             │
│                                                                                               │
│ Following this change, your app will not be available to users running Android SDKs below 21. │
│ Consider searching for a version of this plugin that supports these lower versions of the     │
│ Android SDK instead.                                                                          │
│ For more information, see:                                                                    │
│ https://docs.flutter.dev/deployment/android#reviewing-the-gradle-build-configuration          │
└───────────────────────────────────────────────────────────────────────────────────────────────┘
Error: Gradle task assembleDebug failed with exit code 1


------------------------------------------------------------------------------------------

<!-- D:\src_dev\flutter\sagarmatha\trekkingmap\android\app\build.gradle -->
defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId "np.solukhumbu.trekkingmap"
        // You can update the following values to match your application needs.
        // For more information, see: https://docs.flutter.dev/deployment/android#reviewing-the-gradle-build-configuration.
        minSdkVersion flutter.minSdkVersion
}


------------------------------------------------------------------------------------------

saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/flutter/sagarmatha/trekkingmap (master)
$ flutter clean android
Deleting build...                                                   60ms
Deleting .dart_tool...                                               4ms
Deleting Generated.xcconfig...                                       0ms
Deleting flutter_export_environment.sh...                            0ms
Deleting ephemeral...                                                0ms
Deleting ephemeral...                                                0ms
Deleting ephemeral...                                                0ms
Deleting .flutter-plugins-dependencies...                            0ms
Deleting .flutter-plugins...                                         0ms

saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/flutter/sagarmatha/trekkingmap (master)
$ flutter pub get
Resolving dependencies... 
  collection 1.18.0 (1.19.0 available)
  http_parser 4.0.2 (4.1.0 available)
  leak_tracker 10.0.0 (10.0.5 available)
  leak_tracker_flutter_testing 2.0.1 (3.0.5 available)
  leak_tracker_testing 2.0.1 (3.0.1 available)
  material_color_utilities 0.8.0 (0.12.0 available)
  meta 1.11.0 (1.15.0 available)
  string_scanner 1.2.0 (1.3.0 available)
  test_api 0.6.1 (0.7.3 available)
  vm_service 13.0.0 (14.2.4 available)
  web 0.5.1 (1.0.0 available)
Got dependencies!
11 packages have newer versions incompatible with dependency constraints.
Try `flutter pub outdated` for more information.

------------------------------------------------------------------------------------------
<!-- didnot solve the error above -->

remove earlier code added -- flutter.minSdkVersion=21 -------- D:\src_dev\flutter\sagarmatha\trekkingmap\android\local.properties


------------------------------------------------------------------------------------------


BUILD FAILED in 8s

┌─ Flutter Fix ─────────────────────────────────────────────────────────────────────────────────┐
│ The plugin firebase_auth requires a higher Android SDK version.                               │
│ Fix this issue by adding the following to the file                                            │
│ D:\src_dev\flutter\sagarmatha\trekkingmap\android\app\build.gradle:                           │
│ android {                                                                                     │
│   defaultConfig {                                                                             │
│     minSdkVersion 23                                                                          │
│   }                                                                                           │
│ }                                                                                             │
│                                                                                               │
│ Following this change, your app will not be available to users running Android SDKs below 23. │
│ Consider searching for a version of this plugin that supports these lower versions of the     │
│ Android SDK instead.                                                                          │
│ For more information, see:                                                                    │
│ https://docs.flutter.dev/deployment/android#reviewing-the-gradle-build-configuration          │
└───────────────────────────────────────────────────────────────────────────────────────────────┘

------------------------------------------------------------------------------------------


==========          TIME        24 MINS            =============
==========          TIME        24 MINS            =============

<!-- https://youtu.be/gOQeEXVa2Wo?t=1496 -->
<!-- ERROR on instructor vscode pc -->

------------------------------------------------------------------------------------------


==================================================================================
==================================================================================
==================================================================================
==================================================================================
==================================================================================
==================================================================================
==================================================================================
==================================================================================

# Chapter 11 - Firebase Backend Setup - Free Flutter Course 💙
# Chapter 11 - Firebase Backend Setup - Free Flutter Course 💙
# Chapter 11 - Firebase Backend Setup - Free Flutter Course 💙
# Chapter 11 - Firebase Backend Setup - Free Flutter Course 💙
# Chapter 11 - Firebase Backend Setup - Free Flutter Course 💙
# Chapter 11 - Firebase Backend Setup - Free Flutter Course 💙
# Chapter 11 - Firebase Backend Setup - Free Flutter Course 💙
########################################################################################################################

     Welcome to...
   ######## #### ########  ######## ########     ###     ######  ########  ##
   ##        ##  ##     ## ##       ##     ##  ##   ##  ##       ##        ##
   ######    ##  ########  ######   ########  #########  ######  ######    ##
   ##        ##  ##    ##  ##       ##     ## ##     ##       ## ##
   ##       #### ##     ## ######## ########  ##     ##  ######  ########  ##


########################################################################################################################
~ Let's make sure your Firebase CLI is ready...
~ Looks like your CLI needs to be set up.

~ This may take a moment
+ Alright, your CLI is set up!

~ Looks like you're not authenticated. Let's log in!
i  Firebase optionally collects CLI and Emulator Suite usage and error reporting information to help improve our products. Data is collected in accordance with Google's privacy policy (https://policies.google.com/privacy) and is not used to identify you.

? Allow Firebase to collect CLI and Emulator Suite usage and error reporting information? Yes
i  To change your data collection preference at any time, run `firebase logout` and log in again.

Visit this URL on this device to log in:
https://accounts.google.com/o/oauth2/auth?client_id=563584335869-fgrhgmd47bqnekij5i8b5pr03ho849e6.apps.googleusercontent.com&scope=email%20openid%20https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fcloudplatformprojects.readonly%20https%3A%2F%2Fwww.googleapis.com%2Fauth%2Ffirebase%20https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fcloud-platform&response_type=code&state=790760067&redirect_uri=http%3A%2F%2Flocalhost%3A9005

Waiting for authentication...

+  Success! Logged in as agrimbhujel2023@gmail.com

+ You can now use the 'firebase' or 'npm' commands!
~ For more help see https://firebase.google.com/docs/cli/

------------------------------------------------------------------------------------------------------------------------

Waiting for authentication...

+  Success! Logged in as agrimbhujel2023@gmail.com

+ You can now use the 'firebase' or 'npm' commands!
~ For more help see https://firebase.google.com/docs/cli/

------------------------------------------------------------------------------------------
saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/flutter/sagarmatha/trekkingmap (master)
$ dart pub global activate flutterfire_cli
The Dart CLI developer tool uses Google Analytics to report usage and diagnostic
data along with package dependencies, and crash reporting to send basic crash
reports. This data is used to help improve the Dart platform, Flutter framework,
and related tools.

Telemetry is not sent on the very first run. To disable reporting of telemetry,
run this terminal command:

    dart --disable-analytics

If you opt out of telemetry, an opt-out event will be sent, and then no further
information will be sent. This data is collected in accordance with the Google
Privacy Policy (https://policies.google.com/privacy).

+ ansi_styles 0.3.2+1s... (1.2s)
+ args 2.5.0
+ async 2.11.0
+ boolean_selector 2.1.1
+ characters 1.3.0
+ ci 0.1.0
+ cli_util 0.4.1
+ clock 1.1.1
+ collection 1.18.0 (1.19.0 available)
+ dart_console 1.2.0 (4.1.0 available)
+ deep_pick 1.0.0
+ ffi 2.1.2
+ file 6.1.4 (7.0.0 available)
+ flutterfire_cli 1.0.0
+ http 0.13.6 (1.2.2 available)
+ http_parser 4.0.2 (4.1.0 available)
+ interact 2.2.0
+ intl 0.18.1 (0.19.0 available)
+ json_annotation 4.9.0
+ matcher 0.12.16+1
+ meta 1.15.0
+ path 1.9.0
+ petitparser 6.0.2
+ platform 3.1.5
+ process 4.2.4 (5.0.2 available)
+ pub_semver 2.1.4
+ pub_updater 0.2.4 (0.4.0 available)
+ pubspec 2.3.0
+ quiver 3.2.1
+ source_span 1.10.0
+ stack_trace 1.11.1
+ stream_channel 2.1.2
+ string_scanner 1.3.0
+ term_glyph 1.2.1
+ test_api 0.7.2 (0.7.3 available)
+ tint 2.0.1
+ typed_data 1.3.2
+ uri 1.0.0
+ win32 5.5.0 (5.5.3 available)
+ xml 6.5.0
+ yaml 3.1.2
Building package executables... (6.6s)
Built flutterfire_cli:flutterfire.
Installed executable flutterfire.
Warning: Pub installs executables into C:\Users\saurav\AppData\Local\Pub\Cache\bin, which is not on your path.
You can fix that by adding that directory to your system's "Path" environment variable.
A web search for "configure windows path" will show you how.
Activated flutterfire_cli 1.0.0.

------------------------------------------------------------------------------------------

saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/flutter/sagarmatha/trekkingmap (master)
$ flutterfire configure
bash: flutterfire: command not found

------------------------------------------------------------------------------------------

D:\src_dev\flutter\sagarmatha\trekkingmap

------------------------------------------------------------------------------------------
<!-- instructor's PC -->
firebase login
firebase logout
npm install -g firebase-tools

------------------------------------------------------------------------------------------

ios bundle id ------- se.pixolity.mynotes ----- by instructor in terminal 

not done in nitro sn==  --------    project created from firebase website --- not terminal
automatic 


Package name --- np.solukhumbu.trekkingmap --- automatically created ----- no "ios bundle id" was done --- instructor put same bundle id  for android and ios

------------------------------------------------------------------------------------------

App ID 
1:104854087001:android:40a78e782baaa88f951848

app ID different for Android and different for ios in firebase------even if same flutter project

apiKey: 'AIzaSyCKtytEe8aOTXcCRJnf4WobLvq6GXbcVVc', ----- SECRET ---- IMP ----- SENSITIVE __ HIDE IT -----
appId: '1:104854087001:android:40a78e782baaa88f951848',----- SECRET ---- IMP ----- SENSITIVE __ HIDE IT -----


------------------------------------------------------------------------------------------


<!-- successfully run on android device --- using usb cable ----- vscode -->
<!-- successfully run on android device --- using usb cable ----- vscode -->
<!-- successfully run on android device --- using usb cable ----- vscode -->

Launching lib\main.dart on LN9910 in debug mode...
Note: Some input files use or override a deprecated API.
Note: Recompile with -Xlint:deprecation for details.
√  Built build\app\outputs\flutter-apk\app-debug.apk.
Connecting to VM Service at ws://127.0.0.1:51608/XXXF1pPFIRE=/ws
I/gralloc ( 9792): gralloc_register_buffer hnd=0x92c27c00, share_fd=83, share_attr_fd=-1, magic=51647890, format=1, internal_format=1, byte_stride=1920, flags=4, usage=0xb00, size=1639680, width=480, height=854, internalWidth=480, internalHeight=854, stride=480, base=0x8366f000, writeOwner=0, attr_base=0xffffffff, yuv_info=1, fd=-1, buf_idx=0, offset=0, min_pgsz=4096, phyaddr=0
E/        ( 9792): Shared attribute region not available to be mapped
I/gralloc ( 9792): gralloc_register_buffer hnd=0x92c28140, share_fd=85, share_attr_fd=-1, magic=51647890, format=1, internal_format=1, byte_stride=1920, flags=4, usage=0xb00, size=1639680, width=480, height=854, internalWidth=480, internalHeight=854, stride=480, base=0x830f1000, writeOwner=0, attr_base=0xffffffff, yuv_info=1, fd=-1, buf_idx=0, offset=0, min_pgsz=4096, phyaddr=0
E/        ( 9792): Shared attribute region not available to be mapped
I/gralloc ( 9792): gralloc_register_buffer hnd=0x92c285c0, share_fd=86, share_attr_fd=-1, magic=51647890, format=1, internal_format=1, byte_stride=1920, flags=4, usage=0xb00, size=1639680, width=480, height=854, internalWidth=480, internalHeight=854, stride=480, base=0x82e6f000, writeOwner=0, attr_base=0xffffffff, yuv_info=1, fd=-1, buf_idx=0, offset=0, min_pgsz=4096, phyaddr=0
E/        ( 9792): Shared attribute region not available to be mapped
I/gralloc ( 9792): gralloc_register_buffer hnd=0x92c28740, share_fd=88, share_attr_fd=-1, magic=51647890, format=1, internal_format=1, byte_stride=1920, flags=4, usage=0xb00, size=1639680, width=480, height=854, internalWidth=480, internalHeight=854, stride=480, base=0x82aef000, writeOwner=0, attr_base=0xffffffff, yuv_info=1, fd=-1, buf_idx=0, offset=0, min_pgsz=4096, phyaddr=0
E/        ( 9792): Shared attribute region not available to be mapped



==================================================================================
==================================================================================
==================================================================================
==================================================================================
==================================================================================
==================================================================================
==================================================================================
==================================================================================


# Chapter 12 - Basic Registration Screen - Free Flutter Course 💙
# Chapter 12 - Basic Registration Screen - Free Flutter Course 💙
# Chapter 12 - Basic Registration Screen - Free Flutter Course 💙
# Chapter 12 - Basic Registration Screen - Free Flutter Course 💙
# Chapter 12 - Basic Registration Screen - Free Flutter Course 💙
# Chapter 12 - Basic Registration Screen - Free Flutter Course 💙
# Chapter 12 - Basic Registration Screen - Free Flutter Course 💙
# Chapter 12 - Basic Registration Screen - Free Flutter Course 💙
# Chapter 12 - Basic Registration Screen - Free Flutter Course 💙


-----------------------------------------------------------------------------------------------

put MaterialApp into main() { runApp()}

void main() {
  runApp(

MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        


        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Hello world'),
    ),
------------------------------------------------------------------------------------------
<!-- delete "class MyApp"  -->
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return 
  }
}

<!-- MaterialApp inside runApp  &  HomePage widget ----- chapter done  -->
<!-- MaterialApp inside runApp  &  HomePage widget ----- chapter done  -->

------------------------------------------------------------------------------------------

<!-- Stateless and Stateful  ----- chapter   -----   -->
<!-- Stateless and Stateful  ----- chapter   -----   -->


 Stateful  ----- StatefulWidget ----- 0 number can be changed by clicking of user ---- mutable variable 

 https://api.flutter.dev/flutter/widgets/StatefulWidget-class.html----api.flutter.dev/flutter/widgets/State-class.html 

------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------

<!-- delete code below "void main()" function -->

void main() {
  runApp(MaterialApp(

------------------------------------------------------------------------------------------

<!-- scaffold    -----     sub-chapter      -----    chapter-stateless vs stateful  -->



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder(color: Colors.red,);
  }
}

------------------------------------------------------------------------------------------

https://api.flutter.dev/flutter/widgets/StatelessWidget-class.html

<!-- ------     IMPORTANT       ------     widget        -->
in flutter , we use everything is a widget . we try to use stateless Widget as much as possible.
stateless widget changes but unlike , stateful widget doesnot have mutable variables. isn=

------------------------------------------------------------------------------------------

<!--     -----    Register button    -----     sub-chapter      -----    chapter-stateless vs stateful  -->

Register button
Button on home page in the center to register

------------

body: TextButton(
        onPressed: () {}, 
        child: const Text('Register'),
      ),

-----------

<!-- wrap TextButton widget with Center Widget ---- ctrl + .  --- wrap with center -->


body: Center(
        child: TextButton(
          onPressed: () {}, 
          child: const Text('Register'),
        ),
      ),

-------------------------------------------------------------------


<!--     -----    Login upon button press    -----     sub-chapter      -----    chapter-stateless vs stateful  -->

   Login upon button press --- Change onPressed to async

   when button pressed, register user with firebase


login via email

anonymous user

------------------------------------------------------------------------------------------
 sub-chapter--Firebase Authenticaton
<!--     -----     -----  sub-topic      -----    sub-chapter--Firebase Authenticaton   -->

------------------------------------------------------------------------------------------
sub-chapter-- Column widget 
<!--     -----     -----  sub-topic      -----    sub-chapter-- Column widget   -->

change body: center to Column 
remove center widget
wrap TextButton widget with Column widget

change HomePage to StatefulWidget --- Screenshot (6686) ---- Chapter 12 - Basic Registration Screen - --time ---  33 mins  ----.png"

"D:\src--FOLDER\FLUTTER\TUTORIALS\fl\screenshot--v-v-sh---prac\Screenshot (6686) ---- Chapter 12 - Basic Registration Screen - --time ---  33 mins  ----.png"

------------------------------------------------------------------------------------------

TextEditingController --- explaination

late keyword --- late variable --- explaination
  late final TextEditingController _email;
  late final TextEditingController _password;

initState() --- explaination --- initState function


dispose() --- explaination --- dispose function
 dispose function after creating TextEditingController --- {{imp=}}

{{subtopic= }} TextEditingController --- initState() --- dispose() ---

<!-- https://api.flutter.dev/flutter/widgets/State/dispose.html -->
------------------------------------------------------------------------------------------
<!-- https://dart.dev/language/variables#late-variables -->
late keyword explaination --- 

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

<!-- body: Column(children: [ -->

TextField(controller: _email,
          ),
          TextField(controller: _password,
          ),

------------------------------------------------------------------------------------------
<!--     -----  sub-topic ---  Hint on text fields   -----    sub-chapter-- Adding Hints  -->


            decoration: const InputDecoration(
              hintText: 'Enter email',
            ),

------------------------------------------------------------------------------------------
<!--     -----  sub-topic ---   -----    sub-chapter-- Authentication  -->

import 'package:firebase_auth/firebase_auth.dart';


  TextButton(
            onPressed: () async {
              final email = _email.text;
              final password = _password.text;
              await FirebaseAuth.instance.createUserWithEmailAndPassword(
                  email: email, password: password);
            },
              

  await added --- to remove error ---- to get output instead of "Future" object --- {{sh exp==}} {{subtopic=}}
  <!-- https://dart.dev/libraries/async/async-await -->
------------------------------------------------------------------------------------------
<!--     -----  sub-topic ---   -----    sub-chapter-- Troubleshooting  -->

saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/flutter/sagarmatha/trekkingmap (master)
$ firebase login
Already logged in as agrimbhujel2023@gmail.com

saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/flutter/sagarmatha/trekkingmap (master)
$ date
Wed, Aug  7, 2024 12:37:49 PM

------------------------------------------------------------------------------------------
 <!-- No Firebase App ------ ERROR -->
E/flutter (20172): [ERROR:flutter/runtime/dart_vm_initializer.cc(41)] Unhandled Exception: [core/no-app] No Firebase App '[DEFAULT]' has been created - call Firebase.initializeApp()
E/flutter (20172): #0      MethodChannelFirebase.app (package:firebase_core_platform_interface/src/method_channel/method_channel_firebase.dart:195:5)
E/flutter (20172): #1      Firebase.app (package:firebase_core/src/firebase.dart:79:41)
E/flutter (20172): #2      FirebaseAuth.instance (package:firebase_auth/src/firebase_auth.dart:38:47)

------------------------------------------------------------------------------------------
<!--     -----  sub-topic --- make out password text field secure   -----    sub-chapter-- Troubleshooting  -->

TextField(
            obscureText: true,
            enableSuggestions: true,
            autocorrect: true,
            keyboardType: TextInputType.emailAddress,

------------------------------------------------------------------------------------------
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

  final userCredential = await FirebaseAuth.instance
                  .createUserWithEmailAndPassword(
                      email: email, password: password);
              print(userCredential);
------------------------------------------------------------------------------------------
<!-- network-request-failed ---- no wifi in phone ERROR -->
E/flutter (20172): [ERROR:flutter/runtime/dart_vm_initializer.cc(41)] Unhandled Exception: [firebase_auth/network-request-failed] A network error (such as timeout, interrupted connection or unreachable host) has occurred.

------------------------------------------------------------------------------------------
<!--     -----  sub-topic ---    -----    sub-chapter-- handling "configuration not found" error  -->

<!-- CONFIGURATION_NOT_FOUND error -->

E/flutter (20172): [ERROR:flutter/runtime/dart_vm_initializer.cc(41)] Unhandled Exception: [firebase_auth/unknown] An internal error has occurred. [ CONFIGURATION_NOT_FOUND

------------------------------------------------------------------------------------------

https://console.firebase.google.com/project/flutter-trekkingmap/authentication
https://console.firebase.google.com/project/flutter-trekkingmap/authentication/providers

https://firebase.google.com/products-build---https://firebase.google.com/products/auth---Getting started button
https://console.firebase.google.com/project/_/authentication/users?_gl=1*145be1f*_ga*MTY4ODQyODE4LjE3MjMwMTUxNjc.*_ga_CW55HF8NVT*MTcyMzAxNTE2Ny4xLjEuMTcyMzAxNTMyMS40Ny4wLjA.
https://console.firebase.google.com/project/flutter-trekkingmap/authentication/users

Sign-in providers---Email/Password---enable
------------------------------------------------------------------------------------------

didnot enter valid email ---- worked----user created -----agrimbhujel@gmail.com 

              print(userCredential);


I/flutter (20172): UserCredential(additionalUserInfo: AdditionalUserInfo(isNewUser: true, profile: {}, providerId: null, username: null, authorizationCode: null), credential: null, user: User(displayName: null, email: agrimbhujel@gmail.com, isEmailVerified: false, isAnonymous: false, metadata: UserMetadata(creationTime: 2024-08-07 07:27:19.126Z, lastSignInTime: 2024-08-07 07:27:19.126Z), phoneNumber: null, photoURL: null, providerData, [UserInfo(displayName: null, email: agrimbhujel@gmail.com, phoneNumber: null, photoURL: null, providerId: password, uid: agrimbhujel@gmail.com)], refreshToken: null, tenantId: null, uid: nsj4LY7xGcZeK8vbcvtNAGo3Fdp1))
------------------------------------------------------------------------------------------

mb- in case we have three buttons or more and, want to do more work with firebase, we need to initialize firebase app at the start of "app starting"
mb- trying to remove " await Firebase.initializeApp() "


void main() {
  WidgetsFlutterBinding.ensureInitialized();


https://api.flutter.dev/flutter/widgets/widgets-library.html
https://api.flutter.dev/flutter/widgets/WidgetsFlutterBinding/ensureInitialized.html


------------------------------------------------------------------------------------------
FutureBuilder explaination

wrap "Column" with widget ----- ctrl + . ---- FutureBuilder
body: FutureBuilder(
        child: Column(

------------------------------------------------------------------------------------------

      body: FutureBuilder(
        builder: (context, snapshot) {

return "Column" widget from "builder"

------------------------------------------------------------------------------------------
<!-- cut paster code from ""TextButton( onPressed:"" to ""body: FutureBuilder"" -->

Firebase.initializeApp(
                  options: DefaultFirebaseOptions.currentPlatform,
                )

--------------------------------

body: FutureBuilder(
        future: Firebase.initializeApp(
                  options: DefaultFirebaseOptions.currentPlatform,
                ),
        builder: (context, snapshot) {

--------------------------------

TextButton(
              onPressed: () async {
                
                final email = _email.text;
                final password = _password.text;
                final userCredential = await FirebaseAuth.instance
                    .createUserWithEmailAndPassword(
                        email: email, password: password);
                print(userCredential);
              },
              child: const Text('Register here ...'),
              
------------------------------------------------------------------------------------------
<!-- no wifi in phone --> [firebase_auth/network-request-failed] 


I/FirebaseAuth(28731): Creating user with pankajbasnet2020@hotmail.com with empty reCAPTCHA token
W/System  (28731): Ignoring header X-Firebase-Locale because its value was null.
E/RecaptchaCallWrapper(28731): Initial task failed for action RecaptchaAction(action=signUpPassword)with exception - A network error (such as timeout, interrupted connection or unreachable host) has occurred.
E/flutter (28731): [ERROR:flutter/runtime/dart_vm_initializer.cc(41)] Unhandled Exception: [firebase_auth/network-request-failed] A network error (such as timeout, interrupted connection or unreachable host) has occurred.
E/flutter (28731): #0      FirebaseAuthHostApi.createUserWithEmailAndPassword (package:firebase_auth_platform_interface/src/pigeon/messages.pigeon.dart:1038:7)
E/flutter (28731): <asynchronous suspension>
E/flutter (28731): #1      MethodChannelFirebaseAuth.createUserWithEmailAndPassword (package:firebase_auth_platform_interface/src/method_channel/method_channel_firebase_auth.dart:271:22)
E/flutter (28731): <asynchronous suspension>
E/flutter (28731): #2      FirebaseAuth.createUserWithEmailAndPassword (package:firebase_auth/src/firebase_auth.dart:243:7)
E/flutter (28731): <asynchronous suspension>
E/flutter (28731): #3      _HomePageState.build.<anonymous closure>.<anonymous closure> (package:trekkingmap/main.dart:84:40)
E/flutter (28731): <asynchronous suspension>
E/flutter (28731): 

------------------------------------------------------------------------------------------
 <!-- Creating user with pankajbasnet2020@hotmail.com -->

I/FirebaseAuth(28731): Creating user with pankajbasnet2020@hotmail.com with empty reCAPTCHA token
2
W/System  (28731): Ignoring header X-Firebase-Locale because its value was null.
I/mbu.trekkingma(28731): Waiting for a blocking GC ProfileSaver
I/mbu.trekkingma(28731): WaitForGcToComplete blocked ProfileSaver on ProfileSaver for 39.204ms
D/FirebaseAuth(28731): Notifying id token listeners about user ( v8lNUgYzA2ddc8cq8sPijttkXG12 ).
D/FirebaseAuth(28731): Notifying auth state listeners about user ( v8lNUgYzA2ddc8cq8sPijttkXG12 ).
I/flutter (28731): UserCredential(additionalUserInfo: AdditionalUserInfo(isNewUser: true, profile: {}, providerId: null, username: null, authorizationCode: null), credential: null, user: User(displayName: null, email: pankajbasnet2020@hotmail.com, isEmailVerified: false, isAnonymous: false, metadata: UserMetadata(creationTime: 2024-08-07 09:53:16.396Z, lastSignInTime: 2024-08-07 09:53:16.396Z), phoneNumber: null, photoURL: null, providerData, [UserInfo(displayName: null, email: pankajbasnet2020@hotmail.com, phoneNumber: null, photoURL: null, providerId: password, uid: pankajbasnet2020@hotmail.com)], refreshToken: null, tenantId: null, uid: v8lNUgYzA2ddc8cq8sPijttkXG12))

------------------------------------------------------------------------------------------
<!-- ERROR ---- already used email bu user registration -->  [firebase_auth/email-already-in-use] 

I/FirebaseAuth(28731): Creating user with pankajbasnet2020@hotmail.com with empty reCAPTCHA token
W/System  (28731): Ignoring header X-Firebase-Locale because its value was null.
E/RecaptchaCallWrapper(28731): Initial task failed for action RecaptchaAction(action=signUpPassword)with exception - The email address is already in use by another account.
E/flutter (28731): [ERROR:flutter/runtime/dart_vm_initializer.cc(41)] Unhandled Exception: [firebase_auth/email-already-in-use] The email address is already in use by another account.
E/flutter (28731): #0      FirebaseAuthHostApi.createUserWithEmailAndPassword (package:firebase_auth_platform_interface/src/pigeon/messages.pigeon.dart:1038:7)
E/flutter (28731): <asynchronous suspension>
E/flutter (28731): #1      MethodChannelFirebaseAuth.createUserWithEmailAndPassword (package:firebase_auth_platform_interface/src/method_channel/method_channel_firebase_auth.dart:271:22)
E/flutter (28731): <asynchronous suspension>
E/flutter (28731): #2      FirebaseAuth.createUserWithEmailAndPassword (package:firebase_auth/src/firebase_auth.dart:243:7)
E/flutter (28731): <asynchronous suspension>
E/flutter (28731): #3      _HomePageState.build.<anonymous closure>.<anonymous closure> (package:trekkingmap/main.dart:84:40)
E/flutter (28731): <asynchronous suspension>
E/flutter (28731): 

------------------------------------------------------------------------------------------

<!--     -----  sub-topic ---    -----    sub-chapter-- future builder ----END-------///>  -->

------------------------------------------------------------------------------------------

<!--     -----  sub-topic ---    -----    sub-chapter     --      Connection States     -->
<!--     -----  sub-topic ---    -----    sub-chapter     --      Connection States     -->

------------------------------------------------------------------------------------------

        add--  switch (snapshot.connectionState) {
            
          }


""Add missing case clauses"" --- ctrl+. on "switch"

copy paste "Column" widget into switch (snapshot.connectionState)


 builder: (context, snapshot) {
          switch (snapshot.connectionState){
            
            case ConnectionState.done:
              return Column(
          children: [
            TextField(
------------------------------------------------------------------------------------------
<!-- 
 body: FutureBuilder(
        future: Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        ),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              return Column(
                children: [
                  TextField( -->

------------------------------------------------------------------------------------------
 switch (snapshot.connectionState){

default: 
              return const Text('Loading');

------------------------------------------------------------------------------------------


snapshot ---- connectionState --- ConnectionState.done: --- explaination ----- {{subtopic==}}

"Loading..." cannot be seen when register --- because firebase registers user very fast

<!-- hot restart done -->
Created user with jp5tttttttt@gmail.com
Created user with jp5ttttt@gmail.com


Restarted application in 6,692ms.
I/AssistStructure(28731): Flattened final assist data: 856 bytes, containing 1 windows, 3 views
D/InputConnectionAdaptor(28731): The input method toggled cursor monitoring on
D/InputConnectionAdaptor(28731): The input method toggled cursor monitoring off
2
D/InputConnectionAdaptor(28731): The input method toggled cursor monitoring on
I/AssistStructure(28731): Flattened final assist data: 860 bytes, containing 1 windows, 3 views
D/InputConnectionAdaptor(28731): The input method toggled cursor monitoring off
D/InputConnectionAdaptor(28731): The input method toggled cursor monitoring on
========================================
I/FirebaseAuth(28731): Creating user with jp5tttttttt@gmail.com with empty reCAPTCHA token
2
W/System  (28731): Ignoring header X-Firebase-Locale because its value was null.
D/FirebaseAuth(28731): Notifying id token listeners about user ( SQRWmOqLyVZgelLn5EYuvwj37ZI2 ).
D/FirebaseAuth(28731): Notifying auth state listeners about user ( SQRWmOqLyVZgelLn5EYuvwj37ZI2 ).
I/flutter (28731): UserCredential(additionalUserInfo: AdditionalUserInfo(isNewUser: true, profile: {}, providerId: null, username: null, authorizationCode: null), credential: null, user: User(displayName: null, email: jp5tttttttt@gmail.com, isEmailVerified: false, isAnonymous: false, metadata: UserMetadata(creationTime: 2024-08-07 10:23:50.748Z, lastSignInTime: 2024-08-07 10:23:50.748Z), phoneNumber: null, photoURL: null, providerData, [UserInfo(displayName: null, email: jp5tttttttt@gmail.com, phoneNumber: null, photoURL: null, providerId: password, uid: jp5tttttttt@gmail.com)], refreshToken: null, tenantId: null, uid: SQRWmOqLyVZgelLn5EYuvwj37ZI2))
D/InputConnectionAdaptor(28731): The input method toggled cursor monitoring on
D/InputConnectionAdaptor(28731): The input method toggled cursor monitoring off
D/InputConnectionAdaptor(28731): The input method toggled cursor monitoring on
========================================
I/FirebaseAuth(28731): Creating user with jp5ttttt@gmail.com with empty reCAPTCHA token
2
W/System  (28731): Ignoring header X-Firebase-Locale because its value was null.
D/FirebaseAuth(28731): Notifying id token listeners about user ( 4hzaStj5jJPWrr7TEC0hIWbSbat1 ).
D/FirebaseAuth(28731): Notifying auth state listeners about user ( 4hzaStj5jJPWrr7TEC0hIWbSbat1 ).
I/flutter (28731): UserCredential(additionalUserInfo: AdditionalUserInfo(isNewUser: true, profile: {}, providerId: null, username: null, authorizationCode: null), credential: null, user: User(displayName: null, email: jp5ttttt@gmail.com, isEmailVerified: false, isAnonymous: false, metadata: UserMetadata(creationTime: 2024-08-07 10:24:06.379Z, lastSignInTime: 2024-08-07 10:24:06.379Z), phoneNumber: null, photoURL: null, providerData, [UserInfo(displayName: null, email: jp5ttttt@gmail.com, phoneNumber: null, photoURL: null, providerId: password, uid: jp5ttttt@gmail.com)], refreshToken: null, tenantId: null, uid: 4hzaStj5jJPWrr7TEC0hIWbSbat1))

------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
