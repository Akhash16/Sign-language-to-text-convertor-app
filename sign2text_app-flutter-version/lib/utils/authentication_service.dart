// // import 'package:firebase_auth/firebase_auth.dart';

// // class AuthenticationService {
// // //  final FirebaseAuth _firebaseAuth;
// // // AuthenticationService(this._firebaseAuth);
// // // Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

// //   Future<String?> signUp(String email, String password) async {
// //     try {
// //       final credential =
// //           await FirebaseAuth.instance.createUserWithEmailAndPassword(
// //         email: email,
// //         password: password,
// //       );
// //     } on FirebaseAuthException catch (e) {
// //       if (e.code == 'weak-password') {
// //         print('The password provided is too weak.');
// //       } else if (e.code == 'email-already-in-use') {
// //         print('The account already exists for that email.');
// //       }
// //     } catch (e) {
// //       print(e);
// //     }
// //   }

// //   Future<String?> signIn(String email, String password) async {
// //     try {
// //       final credential = await FirebaseAuth.instance
// //           .signInWithEmailAndPassword(email: email, password: password);
// //     } on FirebaseAuthException catch (e) {
// //       if (e.code == 'user-not-found') {
// //         print('No user found for that email.');
// //       } else if (e.code == 'wrong-password') {
// //         print('Wrong password provided for that user.');
// //       }
// //     }
// //   }
// // }
// import 'package:firebase_auth/firebase_auth.dart';

// class AuthenticationService {
//   final FirebaseAuth _firebaseAuth;

//   AuthenticationService(this._firebaseAuth);

//   /// Changed to idTokenChanges as it updates depending on more cases.
//   Stream<User?> get authStateChanges => _firebaseAuth.idTokenChanges();

//   /// This won't pop routes so you could do something like
//   /// Navigator.of(context).pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false);
//   /// after you called this method if you want to pop all routes.
//   Future<void> signOut() async {
//     await _firebaseAuth.signOut();
//   }

//   /// There are a lot of different ways on how you can do exception handling.
//   /// This is to make it as easy as possible but a better way would be to
//   /// use your own custom class that would take the exception and return better
//   /// error messages. That way you can throw, return or whatever you prefer with that instead.
//   Future<String?> signIn({required String email, required String password}) async {
//     try {
//       await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
//       return "Signed in";
//     } on FirebaseAuthException catch (e) {
//       return e.message;
//     }
//   }

//   /// There are a lot of different ways on how you can do exception handling.
//   /// This is to make it as easy as possible but a better way would be to
//   /// use your own custom class that would take the exception and return better
//   /// error messages. That way you can throw, return or whatever you prefer with that instead.
//   Future<String?> signUp(String email, String password) async {
//     try {
//       await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
//       return "Signed up";
//     } on FirebaseAuthException catch (e) {
//       return e.message;
//     }
//   }
// }