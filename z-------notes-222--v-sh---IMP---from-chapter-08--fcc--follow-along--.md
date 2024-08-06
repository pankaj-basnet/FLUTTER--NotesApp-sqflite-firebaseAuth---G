
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
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
