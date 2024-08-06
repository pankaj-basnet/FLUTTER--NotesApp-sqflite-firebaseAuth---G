# saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/flutter/sagarmatha

# ------------------            $ flutter doctor
Doctor summary (to see all details, run flutter doctor -v):
[√] Flutter (Channel stable, 3.19.5, on Microsoft Windows
    [Version 10.0.22631.3880], locale en-US)
[√] Windows Version (Installed version of Windows is version
    10 or higher)
[!] Android toolchain - develop for Android devices (Android
    SDK version 34.0.0)
    X Android license status unknown.
      Run `flutter doctor --android-licenses` to accept the 
      SDK licenses.
      See
      https://flutter.dev/docs/get-started/install/windows#a
      ndroid-setup for more details.
[√] Chrome - develop for the web
[!] Visual Studio - develop Windows apps (Visual Studio     
    Community 2022 17.9.2)
    X Visual Studio is missing necessary components. Please
      re-run the Visual Studio installer for the "Desktop   
      development with C++" workload, and include these     
      components:
        MSVC v142 - VS 2019 C++ x64/x86 build tools
         - If there are multiple build tool versions        
         available, install the latest
        C++ CMake tools for Windows
        Windows 10 SDK
[√] Android Studio (version 2020.3)
[√] VS Code, 64-bit edition (version 1.85.1)
[√] Connected device (3 available)
[√] Network resources
        java.lang.UnsupportedClassVersionError: com/android/sdklib/tool/sdkmanager/SdkManagerCli has been compiled by a more recent version of the Java Runtime (class file version 61.0), this version of the Java Runtime only recognizes class file versions up to 55.0
        java.lang.UnsupportedClassVersionError: com/android/sdklib/tool/sdkmanager/SdkManagerCli has been compiled by a more recent version of the Java Runtime (class file version 61.0), this version of the Java Runtime only recognizes class file versions up to 55.0
Android sdkmanager tool was found, but failed to run (C:\Users\saurav\AppData\Local\Android\sdk\cmdline-tools\latest\bin\sdkmanager.bat): "exited code 1".
It appears the version of the Java binary used (C:\Program Files\Android\Android Studio\jre\bin\java) is too out-of-date and is incompatible with the
Android sdkmanager tool.
If the Java binary came bundled with Android Studio, consider updating your installation of Android studio. Alternatively, you can uninstall the Android SDKcommand-line tools and install an earlier version.

saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/flutter/sagarmatha

# ------------------            $ flutter create --org np.solukhumbu trekkingmap
Creating project trekkingmap...
Resolving dependencies in trekkingmap... (1.3s)
Got dependencies in trekkingmap.
Wrote 129 files.

All done!
You can find general documentation for Flutter at:
https://docs.flutter.dev/
Detailed API documentation is available at:
https://api.flutter.dev/
If you prefer video documentation, consider:
https://www.youtube.com/c/flutterdev

In order to run your application, type:

  # ------------------            $ cd trekkingmap
  # ------------------            $ flutter run

Your application code is in trekkingmap\lib\main.dart.


# ------------------            $ cd trekkingmap

saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/flutter/sagarmatha/trekkingmap
# ------------------            $ ls -a
./   .dart_tool/  .idea/     analysis_options.yaml  ios/  linux/  pubspec.lock  README.md  trekkingmap.iml  windows/
../  .gitignore   .metadata  android/               lib/  macos/  pubspec.yaml  test/      web/

saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/flutter/sagarmatha/trekkingmap
# ------------------            $ cd ..

saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/flutter/sagarmatha
# ------------------            $ ls -a
./  ../  trekkingmap/

saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/flutter/sagarmatha
# ------------------            $ git init
Initialized empty Git repository in D:/src_dev/flutter/sagarmatha/.git/

saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/flutter/sagarmatha (master)
# ------------------            $ git add .

saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/flutter/sagarmatha (master)
# ------------------            $ git commit -am "created flutter app ------trekkingmap -----"
[master (root-commit) 511d939] created flutter app ------trekkingmap -----
 128 files changed, 4955 insertions(+)






 flutter pub outdated

 flutter pub upgrade --major-versions

========================================================================

saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/flutter/sagarmatha/trekkingmap (master)
$ flutter pub add firebase_core
Resolving dependencies... 
  collection 1.18.0 (1.19.0 available)
+ firebase_core 3.3.0
+ firebase_core_platform_interface 5.2.0
+ firebase_core_web 2.17.4
  flutter_lints 3.0.2 (4.0.0 available)
+ flutter_web_plugins 0.0.0 from sdk flutter
  leak_tracker 10.0.0 (10.0.5 available)       
  leak_tracker_flutter_testing 2.0.1 (3.0.5 available)
  leak_tracker_testing 2.0.1 (3.0.1 available) 
  lints 3.0.0 (4.0.0 available)
  material_color_utilities 0.8.0 (0.12.0 available)
  meta 1.11.0 (1.15.0 available)
+ plugin_platform_interface 2.1.8
  string_scanner 1.2.0 (1.3.0 available)       
  test_api 0.6.1 (0.7.3 available)
  vm_service 13.0.0 (14.2.4 available)
+ web 0.5.1 (1.0.0 available)
th dependency constraints.
Try `flutter pub outdated` for more information.
Building with plugins requires symlink support.
Please enable Developer Mode in your system
settings. Run
  start ms-settings:developers
to open settings.

saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/flutter/sagarmatha/trekkingmap (master)
$ start ms-settings:developers

saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/flutter/sagarmatha/trekkingmap (master)
$ flutter pub add firebase_core
"firebase_core" is already in "dependencies". Will try to update the constraint.
Resolving dependencies... 
  collection 1.18.0 (1.19.0 available)
  flutter_lints 3.0.2 (4.0.0 available)
  leak_tracker 10.0.0 (10.0.5 available)
  leak_tracker_flutter_testing 2.0.1 (3.0.5 available)
  leak_tracker_testing 2.0.1 (3.0.1 available)
  lints 3.0.0 (4.0.0 available)
  material_color_utilities 0.8.0 (0.12.0 available)
  meta 1.11.0 (1.15.0 available)
  string_scanner 1.2.0 (1.3.0 available)
  test_api 0.6.1 (0.7.3 available)
  vm_service 13.0.0 (14.2.4 available)
  web 0.5.1 (1.0.0 available)
Got dependencies!
12 packages have newer versions incompatible with dependency constraints.
Try `flutter pub outdated` for more information.

saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/flutter/sagarmatha/trekkingmap (master)
$ flutter pub outdated
Showing outdated packages.
[*] indicates versions that are not the latest available.

Package Name   Current  Upgradable  Resolvable  Latest

direct dependencies: all up-to-date.

dev_dependencies:
flutter_lints  *3.0.2   *3.0.2      4.0.0       4.0.0

1 dependency is constrained to a version that is older than a resolvable version.
To update it, edit pubspec.yaml, or run `flutter pub upgrade --major-versions`.

saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/flutter/sagarmatha/trekkingmap (master)
$ flutter pub upgrade --major-versions
Resolving dependencies... (8.1s)
  collection 1.18.0 (1.19.0 available)
> flutter_lints 4.0.0 (was 3.0.2)
  leak_tracker 10.0.0 (10.0.5 available)
  leak_tracker_flutter_testing 2.0.1 (3.0.5 available)
  leak_tracker_testing 2.0.1 (3.0.1 available)
> lints 4.0.0 (was 3.0.0)
  material_color_utilities 0.8.0 (0.12.0 available)
  meta 1.11.0 (1.15.0 available)
  string_scanner 1.2.0 (1.3.0 available)
  test_api 0.6.1 (0.7.3 available)
  vm_service 13.0.0 (14.2.4 available)
  web 0.5.1 (1.0.0 available)
Changed 2 dependencies!
10 packages have newer versions incompatible with dependency constraints.
Try `flutter pub outdated` for more information.

Changed 1 constraint in pubspec.yaml:
  flutter_lints: ^3.0.0 -> ^4.0.0

saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/flutter/sagarmatha/trekkingmap (master)
$ flutter pub add firebase_auth
Resolving dependencies... 
+ _flutterfire_internals 1.3.40
  collection 1.18.0 (1.19.0 available)
+ firebase_auth 5.1.3
+ firebase_auth_platform_interface 7.4.3
+ firebase_auth_web 5.12.5
+ http_parser 4.0.2 (4.1.0 available)
  leak_tracker 10.0.0 (10.0.5 available)
  leak_tracker_flutter_testing 2.0.1 (3.0.5 available)
  leak_tracker_testing 2.0.1 (3.0.1 available)
  material_color_utilities 0.8.0 (0.12.0 available)
  meta 1.11.0 (1.15.0 available)
  string_scanner 1.2.0 (1.3.0 available)
  test_api 0.6.1 (0.7.3 available)
+ typed_data 1.3.2
  vm_service 13.0.0 (14.2.4 available)
  web 0.5.1 (1.0.0 available)
Changed 6 dependencies!
11 packages have newer versions incompatible with dependency constraints.
Try `flutter pub outdated` for more information.

========================================================================

# saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/flutter/sagarmatha/trekkingmap (master)
$ flutter pub add cloud_firestore
Resolving dependencies... 
+ cloud_firestore 5.2.0
+ cloud_firestore_platform_interface 6.3.0
+ cloud_firestore_web 4.1.0
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
Changed 3 dependencies!
11 packages have newer versions incompatible with dependency constraints.
Try `flutter pub outdated` for more information.

# saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/flutter/sagarmatha/trekkingmap (master)
$ flutter pub add firebase_analytics
Resolving dependencies... 
  collection 1.18.0 (1.19.0 available)
+ firebase_analytics 11.2.1
+ firebase_analytics_platform_interface 4.2.1
+ firebase_analytics_web 0.5.9+1
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
Changed 3 dependencies!
11 packages have newer versions incompatible with dependency constraints.
Try `flutter pub outdated` for more information.

# saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/flutter/sagarmatha/trekkingmap (master)
$ date
Tue, Aug  6, 2024 11:17:31 AM

========================================================================

Note: Recompile with -Xlint:deprecation for details.
√  Built build\app\outputs\flutter-apk\app-debug.apk.
Connecting to VM Service at ws://127.0.0.1:58263/Jt33NjTBOo0=/ws
I/gralloc ( 8190): gralloc_register_buffer hnd=0x92c0b9c0, share_fd=83, share_attr_fd=-1, magic=51647890, format=1, internal_format=1, byte_stride=1920, flags=4, usage=0xb00, size=1639680, width=480, height=854, internalWidth=480, internalHeight=854, stride=480, base=0x83c6f000, writeOwner=0, attr_base=0xffffffff, yuv_info=1, fd=-1, buf_idx=0, offset=0, min_pgsz=4096, phyaddr=0
E/        ( 8190): Shared attribute region not available to be mapped
I/gralloc ( 8190): gralloc_register_buffer hnd=0x92c0bfc0, share_fd=85, share_attr_fd=-1, magic=51647890, format=1, internal_format=1, byte_stride=1920, flags=4, usage=0xb00, size=1639680, width=480, height=854, internalWidth=480, internalHeight=854, stride=480, base=0x83771000, writeOwner=0, attr_base=0xffffffff, yuv_info=1, fd=-1, buf_idx=0, offset=0, min_pgsz=4096, phyaddr=0
E/        ( 8190): Shared attribute region not available to be mapped



% flutter successfully run on android phone sn=
% flutter successfully run on android phone sn=
% flutter successfully run on android phone sn=
% flutter successfully run on android phone sn=
% flutter successfully run on android phone sn=
% flutter successfully run on android phone sn=
% flutter successfully run on android phone sn=
% flutter successfully run on android phone sn=

========================================================================

#  saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/flutter/sagarmatha/trekkingmap (master)
$ firebase login
bash: firebase: command not found

# saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/flutter/sagarmatha/trekkingmap (master)
$ npm install -g firebase-tools

added 630 packages in 49s

69 packages are looking for funding
  run `npm fund` for details

# saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/flutter/sagarmatha/trekkingmap (master)
$ firebase login
Already logged in as agrimbhujel2023@gmail.com


========================================================================

<!-- flutterfire.bat configure          -------     IMPORTANT         -------      -->
<!-- flutterfire.bat configure          -------     IMPORTANT         -------      -->

# saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/flutter/sagarmatha/trekkingmap (master)
$ flutterfire.bat configure
i Found 0 Firebase projects.
✔ Enter a project id for your new Firebase project (e.g. my-cool-project) · sagarmatha-trekkingmap-flutter
⠧ Creating new Firebase project sagarmatha-trekkingmap-flutter...
FirebaseCommandException: An error occured on the Firebase CLI when attempting to run a command.
COMMAND: firebase projects:create sagarmatha-trekkingmap-flutter --json
ERROR: Failed to create project. See firebase-debug.log for more info.

# saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/flutter/sagarmatha/trekkingmap (master)
$ flutterfire.bat configure
i Found 1 Firebase projects.
✔ Select a Firebase project to configure your Flutter application with · flutter-trekkingmap (flutter-trekkingmap)
✔ Which platforms should your configuration support (use arrow keys & space to select)? · android
i Firebase android app np.solukhumbu.trekkingmap is not registered on Firebase project flutter-trekkingmap.
i Registered a new Firebase android app on Firebase project flutter-trekkingmap.

Firebase configuration file lib\firebase_options.dart generated successfully with the following Firebase apps:

Platform  Firebase App Id
android   1:104854087001:android:40a78e782baaa88f951848

Learn more about using this file and next steps from the documentation:
 > https://firebase.google.com/docs/flutter/setup

========================================================================
<!-- https://console.firebase.google.com/project/flutter-trekkingmap/settings/general/android:np.solukhumbu.trekkingmap -->
flutter-trekkingmap

Project name
flutter-trekkingmap
Project ID 
flutter-trekkingmap
Project number 
104854087001
Web API Key 
No Web API Key for this project
Environment
This setting customizes your project for different stages of the app lifecycle
Environment type
Unspecified
Your apps
Android apps
trekkingmap (android)
np.solukhumbu.trekkingmap
SDK setup and configuration
Need to reconfigure the Firebase SDKs for your app? Revisit the SDK setup instructions or just download the configuration file containing keys and identifiers for your app.
App ID 
1:104854087001:android:40a78e782baaa88f951848
App nickname
trekkingmap (android)

Package name
np.solukhumbu.trekkingmap

========================================================================


========================================================================


========================================================================

