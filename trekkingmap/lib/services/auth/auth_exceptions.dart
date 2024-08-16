// import 'package:firebase_auth/firebase_auth.dart' as FirebaseAuth show User; // good practice but not used in this course isn=
// import 'package:firebase_auth/firebase_auth.dart' show User;

// login exceptions
class UserNotFoundAuthException implements Exception {}


class WrongPasswordAuthException implements Exception {}


// register exceptions
class WeakPasswordAuthException implements Exception {}


class EmailAlreadyInUseAuthException implements Exception {}


class InvalidEmailAuthException implements Exception {}


// generic exceptions
class GenericAuthException implements Exception {}


