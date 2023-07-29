import 'package:flutter/material.dart';

// Widgets
import 'package:app/home.dart';
import 'package:app/auth/login.dart';
import 'package:app/auth/signup.dart';
import 'package:app/base/addnote.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: const LoginPage(),
      debugShowCheckedModeBanner: false,
      routes: {
        "home": (context) => const Home(),
        "login": (context) => const LoginPage(),
        "signup": (context) => const SignupPage(),
        "addnote": (context) => const AddNote(),
      },
      theme: ThemeData(
          primaryColor: Colors.red,
          textTheme: const TextTheme(
            displayMedium: TextStyle(
                fontSize: 15, color: Colors.white, fontWeight: FontWeight.w300),
            displayLarge: TextStyle(
                fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
          )),
    ));
  }
}
