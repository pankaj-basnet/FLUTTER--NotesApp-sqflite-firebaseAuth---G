

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

# Chapter 24 - Auth Service - Free Flutter Course 💙
# Chapter 24 - Auth Service - Free Flutter Course 💙
# Chapter 24 - Auth Service - Free Flutter Course 💙
# Chapter 24 - Auth Service - Free Flutter Course 💙
# Chapter 24 - Auth Service - Free Flutter Course 💙
# Chapter 24 - Auth Service - Free Flutter Course 💙
# Chapter 24 - Auth Service - Free Flutter Course 💙
# Chapter 24 - Auth Service - Free Flutter Course 💙
# Chapter 24 - Auth Service - Free Flutter Course 💙
# Chapter 24 - Auth Service - Free Flutter Course 💙
# Chapter 24 - Auth Service - Free Flutter Course 💙
# Chapter 24 - Auth Service - Free Flutter Course 💙
# Chapter 24 - Auth Service - Free Flutter Course 💙
# Chapter 24 - Auth Service - Free Flutter Course 💙
# Chapter 24 - Auth Service - Free Flutter Course 💙
# Chapter 24 - Auth Service - Free Flutter Course 💙
# Chapter 24 - Auth Service - Free Flutter Course 💙
# Chapter 24 - Auth Service - Free Flutter Course 💙
# Chapter 24 - Auth Service - Free Flutter Course 💙
# Chapter 24 - Auth Service - Free Flutter Course 💙
# Chapter 24 - Auth Service - Free Flutter Course 💙
# Chapter 24 - Auth Service - Free Flutter Course 💙
# Chapter 24 - Auth Service - Free Flutter Course 💙
# Chapter 24 - Auth Service - Free Flutter Course 💙
# Chapter 24 - Auth Service - Free Flutter Course 💙
# Chapter 24 - Auth Service - Free Flutter Course 💙
# Chapter 24 - Auth Service - Free Flutter Course 💙
# Chapter 24 - Auth Service - Free Flutter Course 💙
# Chapter 24 - Auth Service - Free Flutter Course 💙
# Chapter 24 - Auth Service - Free Flutter Course 💙
# Chapter 24 - Auth Service - Free Flutter Course 💙
# Chapter 24 - Auth Service - Free Flutter Course 💙
# Chapter 24 - Auth Service - Free Flutter Course 💙
# Chapter 24 - Auth Service - Free Flutter Course 💙
# Chapter 24 - Auth Service - Free Flutter Course 💙
# Chapter 24 - Auth Service - Free Flutter Course 💙
# Chapter 24 - Auth Service - Free Flutter Course 💙
# Chapter 24 - Auth Service - Free Flutter Course 💙
# Chapter 24 - Auth Service - Free Flutter Course 💙
https://www.youtube.com/watch?v=D6OxB6w465M&list=PL6yRaaP0WPkVtoeNIGqILtRAgd3h2CNpT&index=25



-----       TIME     -----  0:30   mins    --      
<!---  sub-topic--- >   Auth provider and auth service  --   sub-chapter--- >   -----------    -->
<!---  sub-topic--- >   Auth provider and auth service  --   sub-chapter--- >   -----------    -->
<!---  sub-topic--- >   Auth provider and auth service  --   sub-chapter--- >   -----------    -->
We need an auth provider abstract class and AuthService








----------------------------------------------------------------------


-----       TIME     -----  07:15    mins    --      
<!---  sub-topic--- >   Let's clean up our exceptions first  --   sub-chapter--- >   -----------    -->
<!---  sub-topic--- >   Let's clean up our exceptions first  --   sub-chapter--- >   -----------    -->
<!---  sub-topic--- >   Let's clean up our exceptions first  --   sub-chapter--- >   -----------    -->
create file lib/services/auth/auth_exceptions.dart


create trekkingmap\lib\services\auth\auth_exceptions.dart



----------------------------------------------------------------------

-----       TIME     -----  09:37    mins    --     
<!---  sub-topic--- >   UserNotFoundAuthException  --   sub-chapter--- >   -----------    --> 
<!---  sub-topic--- >   UserNotFoundAuthException  --   sub-chapter--- >   -----------    --> 
<!---  sub-topic--- >   UserNotFoundAuthException  --   sub-chapter--- >   -----------    --> 
 Add it in lib/services/auth/auth_exceptions.dart





----------------------------------------------------------------------

// login exceptions
class UserNotFoundAuthException implements Exception {}


class WrongPasswordAuthException implements Exception {}


// register exceptions
class WeakPasswordAuthException implements Exception {}


class EmailAlreadyInUseAuthException implements Exception {}


class InvalidEmailAuthException implements Exception {}


// generic exceptions
class GenericAuthException implements Exception {}






----------------------------------------------------------------------
abstract class in dart may contain login
abstract class AuthProvider will not contain logic
abstract class AuthProvider will be a protocol or interface or abstract class


AuthUser? get currentUser ---- AuthProvider eg, google,facebook must optionally return authenticated user called currentUser

Future<AuthUser> logIn()----AuthProvider will have logIn function ((log in)) which completes in a "Future" and returns "AuthUser"

----------------------------------------------------------------------

firebase wants us to handle exception if our login or password is wrong ((Usercredential))----- firebase avoided writing "Usercredential?" which would give null if no user after signinwithemail --- optional return




----------------------------------------------------------------------

we are going to abstract away firebase authentication in our own provider ---{{firebase_auth_provider.dart }}




----------------------------------------------------------------------

@override
this was not async in function definition --- Future<AuthUser> createUser({...}) async { try { await FirebaseAuth.instance.createUserWithEmailAndPassword( ----- dart allows to make function async later in implementation {{asyn implementation in firebase_auth_provider.dart}}

----- 




----------------------------------------------------------------------







----------------------------------------------------------------------

<!-- 39:46 Implementing createUser -->






----------------------------------------------------------------------





Timestamps:

10:45 WrongPasswordAuthException
11:26 WeakPasswordAuthException
12:06 EmailAlreadyInUseAuthException
14:19 GenericAuthException
14:31 UserNotLoggedInAuthException
15:47 We need an auth user
18:03 Create auth user dart file
18:31 Import the Firebase user
20:10 AuthUser class
24:20 We need a factory initializer
26:18 We also need an auth provider
27:31 Import our auth user
29:03 Abstract auth provider
29:38 We should be able to get the current user
30:09 We need a login function
32:24 We also need a function to create a new user
32:59 And we should be able to logout as well
33:21 We also need to be able to send a verification email
33:39 Now we implement a concrete class of our auth provider
35:15 We need to import a new files
36:46 And import Firebase as Well
37:18 Then we create our class
38:31 Implementing currentUser
39:46 Implementing createUser
46:58 Implementing logIn
51:41 Implementing logOut
53:03 We need an auth service
54:44 Create our file
55:00 Import some files
55:35 Create the basic AuthService class
56:14 Our AuthService contains an AuthProvider
56:52 Create constructor for our AuthService
57:42 From AuthService. delegate to AuthProvider
1:01:04 Let's commit and tag
1:02:20 Next chapter




----------------------------------------------------------------------


# Chapter 25 -  - Free Flutter Course 💙
# Chapter 25 -  - Free Flutter Course 💙
# Chapter 25 -  - Free Flutter Course 💙
# Chapter 25 -  - Free Flutter Course 💙
# Chapter 25 -  - Free Flutter Course 💙
# Chapter 25 -  - Free Flutter Course 💙



----------------------------------------------------------------------

before using AuthService -- user?.sendEmailVerification() ---by firebase
AuthService.firebase().sendEmailVerification() used now instead od "" -- user?.sendEmailVerification() ""




----------------------------------------------------------------------

# Chapter 26 -  - Free Flutter Course 💙
# Chapter 26 -  - Free Flutter Course 💙
# Chapter 26 -  - Free Flutter Course 💙
# Chapter 26 -  - Free Flutter Course 💙
# Chapter 26 -  - Free Flutter Course 💙
# Chapter 26 -  - Free Flutter Course 💙
# Chapter 26 -  - Free Flutter Course 💙


---------------------------------------

tdd (Test Driven Development) --- done before starting to write software
this course for beginner goes to advanced topic----did not start with tdd

-------------------------------

https://youtu.be/nbUAZfJIQec?list=PL6yRaaP0WPkVtoeNIGqILtRAgd3h2CNpT&t=984
flutter pub add test --dev


like -D ---- {{in npm}} ---- flutter pub add test --dev 

delete all files inside of "test" folder

create auth_test.dart

----------------------------------------------------------------------

<!-- https://youtu.be/nbUAZfJIQec?list=PL6yRaaP0WPkVtoeNIGqILtRAgd3h2CNpT&t=1524 -->
required --- factory ---- AuthUser(isEmailVerified: user.emailVerified)




----------------------------------------------------------------------

if (!isInitialized) throw NotInitializedException() --- time 33


Future<dynamic>-----we have to put async await --- await Future.delayed


----------------------------------------------------------------------


time 40
https://youtu.be/nbUAZfJIQec?list=PL6yRaaP0WPkVtoeNIGqILtRAgd3h2CNpT&t=2431

@override
  Future<AuthUser> logIn----- on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {   -----------    if (email == 'foo@bar.com') throw UserNotFoundAuthException(); //test

----------------------------------------------------------------------

<!-- https://youtu.be/nbUAZfJIQec?list=PL6yRaaP0WPkVtoeNIGqILtRAgd3h2CNpT&t=2495 -->
time 41

return Future.value(user)

every function needs to be initialized ---- isn= 

----------------------------------------------------------------------

@override
  Future<void> sendEmailVerification() async {
    if (!isInitialized) throw NotInitializedException();
    final user = _user; <<----------------------------------------
    if (user == null) throw UserNotFoundAuthException();
    const newUser = AuthUser(isEmailVerified: true);
    _user = newUser; <<----------------------------------------
}

----------------------------------------------------------------------

var _isInitialized = false; ----- important






----------------------------------------------------------------------
time 53

test('User should be null after initialization', () {





----------------------------------------------------------------------

# flutter test test/auth_test.dart

# git tag "step-10" --- Chapter 25 -         - Free Flutter Course 💙



----------------------------------------------------------------------
==================================================================================
==================================================================================
==================================================================================
==================================================================================
==================================================================================
==================================================================================
==================================================================================
==================================================================================
==================================================================================
==================================================================================
==================================================================================
==================================================================================
==================================================================================
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# Chapter 27 - CRUD Local Storage - Free Flutter Course 💙
# git tag "step-11" --- Chapter 27 - CRUD Local Storage - Free Flutter Course 💙

https://www.youtube.com/watch?v=IXNjoByIX5Y&list=PL6yRaaP0WPkVtoeNIGqILtRAgd3h2CNpT&index=28



----------------------------------------------------------------------

install db browser for sqlite

create database "testing"


-----       TIME     -----  10mins    mins    --     
<!---  sub-topic--- >   Creating our user table  --   sub-chapter--- > Creating a Database  -----------    --> 
<!---  sub-topic--- >   Creating our user table  --   sub-chapter--- > Creating a Database  -----------    --> 
<!---  sub-topic--- >   Creating our user table  --   sub-chapter--- > Creating a Database  -----------    --> 
Create table if not exists "user"...

Create "user" and "email" table

----------------------------------------------------------------------


-----       TIME     -----  17mins    mins    --     
<!---  sub-topic--- >   Creating our note table  --   sub-chapter--- > Creating a note table  -----------    --> 
>Create Table if not exists "note"

<!---  sub-topic--- >   Creating our note table  --   sub-chapter--- > Creating a note table  -----------    --> 
<!---  sub-topic--- >   Creating our note table  --   sub-chapter--- > Creating a note table  -----------    --> 
<!---  sub-topic--- >   Creating our note table  --   sub-chapter--- > Creating a note table  -----------    --> 



to link "foreign key" --- use "constraints" in DB browser



----------
CREATE TABLE "user" (
	"id"	INTEGER NOT NULL,
	"email"	INTEGER NOT NULL UNIQUE,
	PRIMARY KEY("id" AUTOINCREMENT)
)
------------------------------------------------------------

CREATE TABLE "note" (
	"id"	INTEGER NOT NULL,
	"user_id"	INTEGER NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY() REFERENCES "",
	FOREIGN KEY("user_id") REFERENCES "user"("id")
);





----------------------------------------------------------------------

some developer use sqlite database for "notes" data and use utility service in the backend to sync data to firebase
later in this course, we will store notes data in firebase instead of sqlite




----------------------------------------------------------------------


-----       TIME     -----  25 mins        --     
<!---  sub-topic--- >   Creating these programmatically  --   sub-chapter--- > Creating Tables programmatically  -----------    -->
We need to create this programmatically otherwise we have to move it to docs folder manually
<!---  sub-topic--- >   Creating these programmatically  --   sub-chapter--- > Creating Tables programmatically  -----------    -->
<!---  sub-topic--- >   Creating these programmatically  --   sub-chapter--- > Creating Tables programmatically  -----------    -->
<!---  sub-topic--- >   Creating these programmatically  --   sub-chapter--- > Creating Tables programmatically  -----------    -->




----------------------------------------------------------------------


-----       TIME     -----  26 mins        --     
<!---  sub-topic--- >   We need a few dependencies  --   sub-chapter--- > Creating Tables programmatically  -----------    -->
flutter pub add => sqflite, path_provider, path


<!---  sub-topic--- >   We need a few dependencies  --   sub-chapter--- > Creating Tables programmatically  -----------    -->
<!---  sub-topic--- >   We need a few dependencies  --   sub-chapter--- > Creating Tables programmatically  -----------    -->
<!---  sub-topic--- >   We need a few dependencies  --   sub-chapter--- > Creating Tables programmatically  -----------    -->




----------------------------------------------------------------------



-----       TIME     -----  27 mins        --     
<!---  sub-topic--- >   Why do we need the sqflite package?  --   sub-chapter--- > Creating Tables programmatically  -----------    -->
For storage of our data

     
<!---  sub-topic--- >   Why do we need the sqflite package?  --   sub-chapter--- > Creating Tables programmatically  -----------    -->
<!---  sub-topic--- >   Why do we need the sqflite package?  --   sub-chapter--- > Creating Tables programmatically  -----------    -->
<!---  sub-topic--- >   Why do we need the sqflite package?  --   sub-chapter--- > Creating Tables programmatically  -----------    -->



----------------------------------------------------------------------


https://source.android.com/docs/security/app-sandbox


----------------------------------------------------------------------




-----       TIME     -----  29 mins        --     
<!---  sub-topic--- >   Why do we need the path package?  --   sub-chapter--- > Creating Tables programmatically  -----------    -->
It has a useful "join" function





----------------------------------------------------------------------

-----       TIME     -----  30 mins        --     
<!---  sub-topic--- >   Let's create our notes_service.dart file  --   sub-chapter--- > Adding dependencies  -----------    -->
lib/services/crud/notes_service.dart


<!---  sub-topic--- >   Let's create our notes_service.dart file  --   sub-chapter--- > Adding dependencies  -----------    -->
<!---  sub-topic--- >   Let's create our notes_service.dart file  --   sub-chapter--- > Adding dependencies  -----------    -->
<!---  sub-topic--- >   Let's create our notes_service.dart file  --   sub-chapter--- > Adding dependencies  -----------    -->


flutter pub add sqflite
flutter pub add path_provider
flutter pub add path

----------------------------------------------------------------------

create lib/services/crud/notes_service.dart


----------------------------------------------------------------------

https://youtu.be/IXNjoByIX5Y?list=PL6yRaaP0WPkVtoeNIGqILtRAgd3h2CNpT&t=2070



-----       TIME     -----  34 mins        --     
<!---  sub-topic--- >   Let's import our dependencies  --   sub-chapter--- > Adding dependencies  -----------    -->
Import all 3 dependencies in notes_service.dart




----------------------------------------------------------------------



-----       TIME     -----  35 mins        --     
<!---  sub-topic--- >   We need to construct our db path  --   sub-chapter--- > Adding dependencies  -----------    -->
Use path and path_provider to do that



----------------------------------------------------------------------



-----       TIME     -----  37 mins        --     
<!---  sub-topic--- >   We need database users  --   sub-chapter--- > Adding dependencies  -----------    -->
Create DatabaseUser class inside notes_service.dart


@immutable --- foundation --dart



----------------------------------------------------------------------


DatabaseUser.fromRow(Map<String, Object?> map)
      : id = map[idColumn] as int,
        email = map[emailColumn] as String;



----------------------------------------------------------------------


-----       TIME     -----  45 mins        --     
<!---  sub-topic--- >   We also need a class for our notes  --   sub-chapter--- > Creating database nodes  -----------    -->
Create DatabaseNote in notes_service.dart

<!---  sub-topic--- >   We also need a class for our notes  --   sub-chapter--- > Creating database nodes  -----------    -->
<!---  sub-topic--- >   We also need a class for our notes  --   sub-chapter--- > Creating database nodes  -----------    -->
<!---  sub-topic--- >   We also need a class for our notes  --   sub-chapter--- > Creating database nodes  -----------    -->


----------------------------------------------------------------------



-----       TIME     ----- after 45 mins        --     
<!---  sub-topic--- >   Let's open our DB  --   sub-chapter--- > Creating constants  -----------    -->
Future<void> open() async



<!---  sub-topic--- >   Let's open our DB  --   sub-chapter--- > Creating constants  -----------    -->
<!---  sub-topic--- >   Let's open our DB  --   sub-chapter--- > Creating constants  -----------    -->
<!---  sub-topic--- >   Let's open our DB  --   sub-chapter--- > Creating constants  -----------    -->


----------------------------------------------------------------------



-----       TIME     ----- after 45 mins        --     
<!---  sub-topic--- >   Let's open our DB  --   sub-chapter--- > Creating constants  -----------    -->
Future<void> open() async



<!---  sub-topic--- >   Let's open our DB  --   sub-chapter--- > Creating constants  -----------    -->
<!---  sub-topic--- >   Let's open our DB  --   sub-chapter--- > Creating constants  -----------    -->
<!---  sub-topic--- >   Let's open our DB  --   sub-chapter--- > Creating constants  -----------    -->


----------------------------------------------------------------------


-----       TIME     ----- 1-hr-06-mins        --     
<!---  sub-topic--- >   Closing the DB  --   sub-chapter--- > Creating constants  -----------    -->
Future<void> close() async



<!---  sub-topic--- >   Closing the DB  --   sub-chapter--- > Creating constants  -----------    -->
<!---  sub-topic--- >   Closing the DB  --   sub-chapter--- > Creating constants  -----------    -->
<!---  sub-topic--- >   Closing the DB  --   sub-chapter--- > Creating constants  -----------    -->


----------------------------------------------------------------------



-----       TIME     ----- 1-hr-08-mins        --     
<!---  sub-topic--- >   Convenience function for getting current DB  --   sub-chapter--- > Creating constants  -----------    -->
Database _getDatabaseOrThrow(){}

<!---  sub-topic--- >   Convenience function for getting current DB  --   sub-chapter--- > Creating constants  -----------    -->
<!---  sub-topic--- >   Convenience function for getting current DB  --   sub-chapter--- > Creating constants  -----------    -->
<!---  sub-topic--- >   Convenience function for getting current DB  --   sub-chapter--- > Creating constants  -----------    -->


----------------------------------------------------------------------


-----       TIME     ----- 1-hr-09-mins        --     
<!---  sub-topic--- >   Allowing users to be deleted  --   sub-chapter--- > Creating constants  -----------    -->
Future<void> deleteUser({required String email}) async

<!---  sub-topic--- >   Allowing users to be deleted  --   sub-chapter--- > Creating constants  -----------    -->
<!---  sub-topic--- >   Allowing users to be deleted  --   sub-chapter--- > Creating constants  -----------    -->
<!---  sub-topic--- >   Allowing users to be deleted  --   sub-chapter--- > Creating constants  -----------    -->



----------------------------------------------------------------------



-----       TIME     ----- 1-hr-13-mins        --     
<!---  sub-topic--- >   Allowing users to be created  --   sub-chapter--- > Creating constants  -----------    -->
Future<DatabaseUser> createUser({required String email}) async

<!---  sub-topic--- >   Allowing users to be created  --   sub-chapter--- > Creating constants  -----------    -->
<!---  sub-topic--- >   Allowing users to be created  --   sub-chapter--- > Creating constants  -----------    -->
<!---  sub-topic--- >   Allowing users to be created  --   sub-chapter--- > Creating constants  -----------    -->



----------------------------------------------------------------------

https://youtu.be/IXNjoByIX5Y?list=PL6yRaaP0WPkVtoeNIGqILtRAgd3h2CNpT&t=4758

-----       TIME     ----- 1-hr-19-mins        --     
<!---  sub-topic--- >   Ability to fetch users  --   sub-chapter--- > Creating constants  -----------    -->
Future<DatabaseUser> getUser({required String email}) async

<!---  sub-topic--- >   Ability to fetch users  --   sub-chapter--- > Creating constants  -----------    -->
<!---  sub-topic--- >   Ability to fetch users  --   sub-chapter--- > Creating constants  -----------    -->
<!---  sub-topic--- >   Ability to fetch users  --   sub-chapter--- > Creating constants  -----------    -->

----------------------------------------------------------------------

https://youtu.be/IXNjoByIX5Y?list=PL6yRaaP0WPkVtoeNIGqILtRAgd3h2CNpT&t=4804


-----       TIME     ----- 1-hr-21-mins        --     
<!---  sub-topic--- >   Allow creation of new notes  --   sub-chapter--- > Creating constants  -----------    -->
Future<DatabaseNote> createNote({required DatabaseUser owner}) async

<!---  sub-topic--- >   Allow creation of new notes  --   sub-chapter--- > Creating constants  -----------    -->
<!---  sub-topic--- >   Allow creation of new notes  --   sub-chapter--- > Creating constants  -----------    -->
<!---  sub-topic--- >   Allow creation of new notes  --   sub-chapter--- > Creating constants  -----------    -->

----------------------------------------------------------------------


-----       TIME     ----- 1-hr-29-mins        --     
<!---  sub-topic--- >   Allow notes to be deleted  --   sub-chapter--- > Creating constants  -----------    -->
Future<void> deleteNote({required int id}) async

<!---  sub-topic--- >   Allow notes to be deleted  --   sub-chapter--- > Creating constants  -----------    -->
<!---  sub-topic--- >   Allow notes to be deleted  --   sub-chapter--- > Creating constants  -----------    -->
<!---  sub-topic--- >   Allow notes to be deleted  --   sub-chapter--- > Creating constants  -----------    -->

----------------------------------------------------------------------


-----       TIME     ----- 1-hr-31-mins        --     
<!---  sub-topic--- >   And ability to delete all notes  --   sub-chapter--- > Creating constants  -----------    -->
Future<int> deleteAllNotes() async

<!---  sub-topic--- >   And ability to delete all notes  --   sub-chapter--- > Creating constants  -----------    -->
<!---  sub-topic--- >   And ability to delete all notes  --   sub-chapter--- > Creating constants  -----------    -->
<!---  sub-topic--- >   And ability to delete all notes  --   sub-chapter--- > Creating constants  -----------    -->

----------------------------------------------------------------------

-----       TIME     ----- 1-hr-32-mins        --     
<!---  sub-topic--- >   Fetching a specific note  --   sub-chapter--- > Creating constants  -----------    -->
Future<DatabaseNote> getNote({required int id}) async

<!---  sub-topic--- >   Fetching a specific note  --   sub-chapter--- > Creating constants  -----------    -->
<!---  sub-topic--- >   Fetching a specific note  --   sub-chapter--- > Creating constants  -----------    -->
<!---  sub-topic--- >   Fetching a specific note  --   sub-chapter--- > Creating constants  -----------    -->

----------------------------------------------------------------------


-----       TIME     ----- 1-hr-34-mins        --     
<!---  sub-topic--- >   Fetching all notes  --   sub-chapter--- > Creating constants  -----------    -->
Future<List<DatabaseNote>> getAllNotes() async

<!---  sub-topic--- >   Fetching all notes  --   sub-chapter--- > Creating constants  -----------    -->
<!---  sub-topic--- >   Fetching all notes  --   sub-chapter--- > Creating constants  -----------    -->
<!---  sub-topic--- >   Fetching all notes  --   sub-chapter--- > Creating constants  -----------    -->


----------------------------------------------------------------------


-----       TIME     ----- 1-hr-38-mins        --     
<!---  sub-topic--- >   Updating existing notes  --   sub-chapter--- > Creating constants  -----------    -->
Future<DatabaseNote> updateNote

<!---  sub-topic--- >   Updating existing notes  --   sub-chapter--- > Creating constants  -----------    -->
<!---  sub-topic--- >   Updating existing notes  --   sub-chapter--- > Creating constants  -----------    -->
<!---  sub-topic--- >   Updating existing notes  --   sub-chapter--- > Creating constants  -----------    -->


----------------------------------------------------------------------


-----       TIME     ----- 1-hr-43-mins        --     
<!---  sub-topic--- >   Let's put all our CRUD exceptions in our file  --   sub-chapter--- > Creating constants  -----------    -->
lib/services/crud/crud_exceptions.dart

<!---  sub-topic--- >   Let's put all our CRUD exceptions in our file  --   sub-chapter--- > Creating constants  -----------    -->
<!---  sub-topic--- >   Let's put all our CRUD exceptions in our file  --   sub-chapter--- > Creating constants  -----------    -->
<!---  sub-topic--- >   Let's put all our CRUD exceptions in our file  --   sub-chapter--- > Creating constants  -----------    -->


create lib/services/crud/crud_exceptions.dart

----------------------------------------------------------------------

-----       TIME     ----- 1-hr-44-mins        --     
<!---  sub-topic--- >  Use crud/crud_exceptions.dart in notes_service.dart  --   sub-chapter--- > Creating constants  -----------    -->
Just an import and change existing code

<!---  sub-topic--- >  Use crud/crud_exceptions.dart in notes_service.dart  --   sub-chapter--- > Creating constants  -----------    -->
<!---  sub-topic--- >  Use crud/crud_exceptions.dart in notes_service.dart  --   sub-chapter--- > Creating constants  -----------    -->
<!---  sub-topic--- >  Use crud/crud_exceptions.dart in notes_service.dart  --   sub-chapter--- > Creating constants  -----------    -->

----------------------------------------------------------------------

============================================================================================
============================================================================================
============================================================================================
============================================================================================
============================================================================================
============================================================================================
============================================================================================
============================================================================================
============================================================================================
============================================================================================
============================================================================================
============================================================================================
============================================================================================
============================================================================================
============================================================================================
============================================================================================
============================================================================================

# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙
# Chapter 28 - Working with Streams in Notes Service - Free Flutter Course 💙

https://www.youtube.com/watch?v=yhd-7zXR2uY&list=PL6yRaaP0WPkVtoeNIGqILtRAgd3h2CNpT&index=29




----------------------------------------------------------------------

-----       TIME     ----- 2-mins        --     
<!---  sub-topic--- >  Caching data  --   sub-chapter--- > Introduction  -----------    -->
We need the stream and stream controller to cache data

----------------------------------------------------------------------


-----       TIME     ----- 6-mins        --     
<!---  sub-topic--- >  Local list of fetched notes  --   sub-chapter--- > Introduction  -----------    -->
List<DatabaseNote> _notes = [];


<!---  sub-topic--- >  Local list of fetched notes  --   sub-chapter--- > Introduction  -----------    -->
<!---  sub-topic--- >  Local list of fetched notes  --   sub-chapter--- > Introduction  -----------    -->
<!---  sub-topic--- >  Local list of fetched notes  --   sub-chapter--- > Introduction  -----------    -->

----------------------------------------------------------------------

-----       TIME     ----- 7-mins        --     
<!---  sub-topic--- >  StreamController  --   sub-chapter--- > StreamController  -----------    -->
final _notesStreamController = StreamController<List<DatabaseNote>>.broadcast();

<!---  sub-topic--- >  StreamController  --   sub-chapter--- > StreamController  -----------    -->
<!---  sub-topic--- >  StreamController  --   sub-chapter--- > StreamController  -----------    -->
<!---  sub-topic--- >  StreamController  --   sub-chapter--- > StreamController  -----------    -->


----------------------------------------------------------------------


-----       TIME     ----- 11-mins        --     
<!---  sub-topic--- >  Reading and caching notes  --   sub-chapter--- > Cache Notes  -----------    -->
Future<void> _cacheNotes() async

<!---  sub-topic--- >  Reading and caching notes  --   sub-chapter--- > Cache Notes  -----------    -->
<!---  sub-topic--- >  Reading and caching notes  --   sub-chapter--- > Cache Notes  -----------    -->
<!---  sub-topic--- >  Reading and caching notes  --   sub-chapter--- > Cache Notes  -----------    -->

----------------------------------------------------------------------



-----       TIME     ----- 16-mins        --     
<!---  sub-topic--- >  Read all notes upon opening DB  --   sub-chapter--- > Cache Notes  -----------    -->
In open(), call _cacheNotes

<!---  sub-topic--- >  Read all notes upon opening DB  --   sub-chapter--- > Cache Notes  -----------    -->
<!---  sub-topic--- >  Read all notes upon opening DB  --   sub-chapter--- > Cache Notes  -----------    -->
<!---  sub-topic--- >  Read all notes upon opening DB  --   sub-chapter--- > Cache Notes  -----------    -->



----------------------------------------------------------------------


-----       TIME     ----- 17-mins        --     
<!---  sub-topic--- >  Cache note in createNote  --   sub-chapter--- > Create Notes  -----------    -->
In createNote, add the new note to _notes and _notesStreamController

<!---  sub-topic--- >  Cache note in createNote  --   sub-chapter--- > Create Notes  -----------    -->
<!---  sub-topic--- >  Cache note in createNote  --   sub-chapter--- > Create Notes  -----------    -->
<!---  sub-topic--- >  Cache note in createNote  --   sub-chapter--- > Create Notes  -----------    -->


----------------------------------------------------------------------

-----       TIME     ----- 19-mins        --     
<!---  sub-topic--- >  Delete note from cache in deleteNote()  --   sub-chapter--- > Delete Notes  -----------    -->
_notes.removeWhere((note) => note.id == id);

<!---  sub-topic--- >  Delete note from cache in deleteNote()  --   sub-chapter--- > Delete Notes  -----------    -->
<!---  sub-topic--- >  Delete note from cache in deleteNote()  --   sub-chapter--- > Delete Notes  -----------    -->
<!---  sub-topic--- >  Delete note from cache in deleteNote()  --   sub-chapter--- > Delete Notes  -----------    -->



----------------------------------------------------------------------


-----       TIME     ----- 20-mins        --     
<!---  sub-topic--- >  Invalidate cache upon deleteAllNote()  --   sub-chapter--- > Delete All Notes  -----------    -->
Future<int> deleteAllNotes() async, delete cache as well

<!---  sub-topic--- >  Invalidate cache upon deleteAllNote()  --   sub-chapter--- > Delete All Notes  -----------    -->
<!---  sub-topic--- >  Invalidate cache upon deleteAllNote()  --   sub-chapter--- > Delete All Notes  -----------    -->
<!---  sub-topic--- >  Invalidate cache upon deleteAllNote()  --   sub-chapter--- > Delete All Notes  -----------    -->


----------------------------------------------------------------------


-----       TIME     ----- 22-mins        --     
<!---  sub-topic--- >  Update cache in getNote({required int id})  --   sub-chapter--- > Update Cache  -----------    -->
Remove old note with same id and add the new one and update stream

<!---  sub-topic--- >  Update cache in getNote({required int id})  --   sub-chapter--- > Update Cache  -----------    -->
<!---  sub-topic--- >  Update cache in getNote({required int id})  --   sub-chapter--- > Update Cache  -----------    -->
<!---  sub-topic--- >  Update cache in getNote({required int id})  --   sub-chapter--- > Update Cache  -----------    -->



----------------------------------------------------------------------

-----       TIME     ----- 24-mins        --     
<!---  sub-topic--- >  Update the cache in updateNote() --   sub-chapter--- > Update Notes -----------    -->
Future<DatabaseNote> updateNote, update _notes and stream

<!---  sub-topic--- >  Update the cache in updateNote() --   sub-chapter--- > Update Notes -----------    -->
<!---  sub-topic--- >  Update the cache in updateNote() --   sub-chapter--- > Update Notes -----------    -->
<!---  sub-topic--- >  Update the cache in updateNote() --   sub-chapter--- > Update Notes -----------    -->



----------------------------------------------------------------------

-----       TIME     ----- 26-mins        --     
<!---  sub-topic--- > Get or create user in notes_service.dart  --   sub-chapter--- > Get or Create User -----------    -->
Future<DatabaseUser> getOrCreateUser({required String email})


<!---  sub-topic--- > Get or create user in notes_service.dart  --   sub-chapter--- > Get or Create User -----------    -->
<!---  sub-topic--- > Get or create user in notes_service.dart  --   sub-chapter--- > Get or Create User -----------    -->
<!---  sub-topic--- > Get or create user in notes_service.dart  --   sub-chapter--- > Get or Create User -----------    -->


----------------------------------------------------------------------


# Chapter 29 - Preparing Notes View to Read All Notes - Free Flutter Course 💙
