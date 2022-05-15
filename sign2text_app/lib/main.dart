import 'package:flutter/material.dart';
import 'package:sign2text_app/screens/home_screen.dart';
import 'package:sign2text_app/screens/login_screen.dart';
import 'package:sign2text_app/screens/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sign2Text",
      initialRoute: HomePage.id,
      routes: {
        LoginPage.id: (context) => const LoginPage(),
        RegisterPage.id: (context) => const RegisterPage(),
        HomePage.id: (context) => const HomePage(),
      },
    );
  }
}
