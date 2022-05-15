import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sign2text_app/screens/home_screen.dart';
import 'package:sign2text_app/screens/login_screen.dart';
import 'package:sign2text_app/screens/register_screen.dart';

Future<void> main() async  {
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sign2Text",
      initialRoute:  LoginPage.id,
routes: {
        LoginPage.id: (context) => const LoginPage(),
        RegisterPage.id: (context) => const RegisterPage(),
        HomePage.id: (context) => const HomePage(),
      },
    );

  }
}

// import 'package:firebase_auth/firebase_auth.dart';

// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:sign2text_app/screens/home_screen.dart';
// import 'package:sign2text_app/screens/login_screen.dart';
// import 'package:sign2text_app/screens/register_screen.dart';
// import 'package:sign2text_app/utils/authentication_service.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         Provider<AuthenticationService>(
//           create: (_) => AuthenticationService(FirebaseAuth.instance),
//         ),
//         StreamProvider(
//           create: (context) =>
//               context.read<AuthenticationService>().authStateChanges,
//           initialData: null,
//         )
//       ],
//       child: MaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//           visualDensity: VisualDensity.adaptivePlatformDensity,
//         ),
//         home: MainPage(),
//          routes: {
//         LoginPage.id: (context) => const LoginPage(),
//         RegisterPage.id: (context) => const RegisterPage(),
//         HomePage.id: (context) => const HomePage(),
//       },
//       ),
//     );
//   }
// }

// class MainPage extends StatelessWidget {
//   const MainPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: StreamBuilder<User?>(
//         stream: FirebaseAuth.instance.authStateChanges(),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             return HomePage();
//           } else {
//             return LoginPage();
//           }
//         },
//       ),
//     );
//   }
// }
// // class AuthenticationWrapper extends StatelessWidget {
// //   const AuthenticationWrapper({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     final firebaseUser = context.watch<User>();

// //     if (firebaseUser != null) {
// //       return const HomePage();
// //     }
// //     return const LoginPage();
// //   }
// // }