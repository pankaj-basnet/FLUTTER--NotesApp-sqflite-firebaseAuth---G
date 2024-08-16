======================================================================================================
======================================================================================================
======================================================================================================
======================================================================================================
======================================================================================================
======================================================================================================

==========================     aug 16     ===== github commit =====
==========================     aug 16     ===== github commit =====
==========================     aug 16     ===== github commit =====

flutter running properly on android 

Current funtionality :
            =   log in
            =   sign in / register
            =   automatic email verification link sent after sign up
            =   log out
            =   firebase authentication


registered and logged in with new email into flutter and firebase
if email not verified, but try to log in , user sent to email verification view
log in user







================================================
<!-- authentication -->


------------------------
------------------------
<!-- unsuccessful authentication -->
<!-- unsuccessful authentication -->
<!-- unsuccessful authentication -->
<!-- unsuccessful authentication -->

I/FirebaseAuth(18660): Creating user with jptthar@gmail with empty reCAPTCHA token
W/System  (18660): Ignoring header X-Firebase-Locale because its value was null.
E/RecaptchaCallWrapper(18660): Initial task failed for action RecaptchaAction(action=signUpPassword)with exception - A network error (such as timeout, interrupted connection or unreachable host) has occurred.

[log] [firebase_auth/network-request-failed] A network error (such as timeout, interrupted connection or unreachable host) has occurred.
------------------------
I/flutter (18660): FirebaseAuth
I/flutter (18660): FirebaseAuth(app: [DEFAULT])
I/FirebaseAuth(18660): Creating user with jptthar@gmail with empty reCAPTCHA token
W/System  (18660): Ignoring header X-Firebase-Locale because its value was null.
E/RecaptchaCallWrapper(18660): Initial task failed for action RecaptchaAction(action=signUpPassword)with exception - The email address is badly formatted.
D/InputConnectionAdaptor(18660): The input method toggled cursor monitoring off
E/RecaptchaCallWrapper(18660): Initial task failed for action RecaptchaAction(action=signUpPassword)with exception - The email address is badly formatted.
[log] invalid email entered
E/RecaptchaCallWrapper(18660): Initial task failed for action RecaptchaAction(action=signUpPassword)with exception - The email address is badly formatted.
[log] invalid email entered
I/mbu.trekkingma(18660): Background concurrent copying GC freed 27138(1454KB) AllocSpace objects, 11(476KB) LOS objects, 49% free, 2MB/4MB, paused 410us total 115.607ms
[log] invalid email entered
D/InputConnectionAdaptor(18660): The input method toggled cursor monitoring on
------------------------
I/flutter (18660): FirebaseAuth
I/flutter (18660): FirebaseAuth(app: [DEFAULT])
I/FirebaseAuth(18660): Creating user with jptthar@gmail.com with empty reCAPTCHA token
W/System  (18660): Ignoring header X-Firebase-Locale because its value was null.
E/RecaptchaCallWrapper(18660): Initial task failed for action RecaptchaAction(action=signUpPassword)with exception - The given password is invalid. [ Password should be at least 6 characters ]
D/InputConnectionAdaptor(18660): The input method toggled cursor monitoring off
[log] Weak password
------------------------
I/flutter (18660): FirebaseAuth
I/flutter (18660): FirebaseAuth(app: [DEFAULT])
I/FirebaseAuth(18660): Creating user with fff@gmail.com with empty reCAPTCHA token
W/System  (18660): Ignoring header X-Firebase-Locale because its value was null.
E/RecaptchaCallWrapper(18660): Initial task failed for action RecaptchaAction(action=signUpPassword)with exception - The email address is already in use by another account.
D/InputConnectionAdaptor(18660): The input method toggled cursor monitoring off
[log] Email is already in use
------------------------
I/FirebaseAuth(18660): Logging in as jptthar@gmail.com with empty reCAPTCHA token
2
W/System  (18660): Ignoring header X-Firebase-Locale because its value was null.
D/FirebaseAuth(18660): Notifying id token listeners about user ( GrFTHfSTXHRc232XwTQd8UeJ9kF3 ).
D/FirebaseAuth(18660): Notifying auth state listeners about user ( GrFTHfSTXHRc232XwTQd8UeJ9kF3 ).
[log] User(displayName: null, email: jptthar@gmail.com, isEmailVerified: true, isAnonymous: false, metadata: UserMetadata(creationTime: 2024-08-16 07:56:38.036Z, lastSignInTime: 2024-08-16 08:08:50.209Z), phoneNumber: null, photoURL: null, providerData, [UserInfo(displayName: null, email: jptthar@gmail.com, phoneNumber: null, photoURL: null, providerId: password, uid: jptthar@gmail.com)], refreshToken: null, tenantId: null, uid: GrFTHfSTXHRc232XwTQd8UeJ9kF3)
[log] current user is: GrFTHfSTXHRc232XwTQd8UeJ9kF3
------------------------
------------------------
<!-- unsuccessful authentication ------------------////>>>> -->
<!-- unsuccessful authentication ------------------////>>>> -->
<!-- unsuccessful authentication ------------------////>>>> -->
<!-- unsuccessful authentication ------------------////>>>> -->

================================================
after starting flutter in android phone, messages in "debug console"

<!-- 
Launching lib\main.dart on LN9910 in debug mode...
√  Built build\app\outputs\flutter-apk\app-debug.apk.
Connecting to VM Service at ws://127.0.0.1:62064/4HhHaf1orgw=/ws
I/flutter (18660): homepage view ------------------sn=----
I/flutter (18660): login view ------------------sn=----
I/gralloc (18660): gralloc_register_buffer hnd=0x968b0540, share_fd=83, share_attr_fd=-1, magic=51647890, format=1, internal_format=1, byte_stride=1920, flags=4, usage=0xb00, size=1639680, width=480, height=854, internalWidth=480, internalHeight=854, stride=480, base=0x85bef000, writeOwner=0, attr_base=0xffffffff, yuv_info=1, fd=-1, buf_idx=0, offset=0, min_pgsz=4096, phyaddr=0
E/        (18660): Shared attribute region not available to be mapped
I/gralloc (18660): gralloc_register_buffer hnd=0x968b0a80, share_fd=85, share_attr_fd=-1, magic=51647890, format=1, internal_format=1, byte_stride=1920, flags=4, usage=0xb00, size=1639680, width=480, height=854, internalWidth=480, internalHeight=854, stride=480, base=0x85771000, writeOwner=0, attr_base=0xffffffff, yuv_info=1, fd=-1, buf_idx=0, offset=0, min_pgsz=4096, phyaddr=0
E/        (18660): Shared attribute region not available to be mapped
I/gralloc (18660): gralloc_register_buffer hnd=0x968b0b40, share_fd=86, share_attr_fd=-1, magic=51647890, format=1, internal_format=1, byte_stride=1920, flags=4, usage=0xb00, size=1639680, width=480, height=854, internalWidth=480, internalHeight=854, stride=480, base=0x855e0000, writeOwner=0, attr_base=0xffffffff, yuv_info=1, fd=-1, buf_idx=0, offset=0, min_pgsz=4096, phyaddr=0
E/        (18660): Shared attribute region not available to be mapped
I/flutter (18660): register email view  ========== sn=----
I/gralloc (18660): gralloc_register_buffer hnd=0xab32a640, share_fd=87, share_attr_fd=-1, magic=51647890, format=1, internal_format=1, byte_stride=1920, flags=4, usage=0xb00, size=1639680, width=480, height=854, internalWidth=480, internalHeight=854, stride=480, base=0x87d6f000, writeOwner=0, attr_base=0xffffffff, yuv_info=1, fd=-1, buf_idx=0, offset=0, min_pgsz=4096, phyaddr=0
E/        (18660): Shared attribute region not available to be mapped
I/AssistStructure(18660): Flattened final assist data: 856 bytes, containing 1 windows, 3 views
D/InputConnectionAdaptor(18660): The input method toggled cursor monitoring on
I/AssistStructure(18660): Flattened final assist data: 860 bytes, containing 1 windows, 3 views
D/InputConnectionAdaptor(18660): The input method toggled cursor monitoring on
D/InputConnectionAdaptor(18660): The input method toggled cursor monitoring off
D/InputConnectionAdaptor(18660): The input method toggled cursor monitoring on
I/gralloc (18660): gralloc_register_buffer hnd=0xab32a1c0, share_fd=88, share_attr_fd=-1, magic=51647890, format=1, internal_format=1, byte_stride=1920, flags=4, usage=0xb00, size=1639680, width=480, height=854, internalWidth=480, internalHeight=854, stride=480, base=0x85071000, writeOwner=0, attr_base=0xffffffff, yuv_info=1, fd=-1, buf_idx=0, offset=0, min_pgsz=4096, phyaddr=0
E/        (18660): Shared attribute region not available to be mapped
 -->


======================================================================================================
======================================================================================================
======================================================================================================
======================================================================================================
======================================================================================================
======================================================================================================

==========      --- step 10--- chapter- 26 ---      ===== github commit =====
==========      --- step 10--- chapter- 26 ---      ===== github commit =====
==========      --- step 10--- chapter- 26 ---      ===== github commit =====

flutter running properly on android 

Current funtionality :
            =   log in
            =   sign in / register
            =   automatic email verification link sent after sign up
            =   log out
            =   firebase authentication


registered and logged in with new email into flutter and firebase
if email not verified, but try to log in , user sent to email verification view
log in user
Using AuthService ----- distancing firebase and our main UI

==========================  

saurav@LAPTOP-JS10JJ6V MINGW64 /d/src_dev/flutter/sagarmatha (main)
$ git commit -am "--- step 10--- chapter- 26 --- log in , register, log out --- "





======================================================================================================
======================================================================================================
======================================================================================================
======================================================================================================
======================================================================================================
======================================================================================================

==========      --- step 16--- chapter- 33 ---      ===== github commit =====

% flutter running properly on android 

Current funtionality :
            =   log in
            =   sign in / register
            =   automatic email verification link sent after sign up
            =   log out
            =   firebase authentication
            =   Create note, delete note, database
