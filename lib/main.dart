import 'package:flutter/material.dart';
import 'package:flutter_rent_moto/screens/auth/login/login_screen.dart';
import 'package:flutter_rent_moto/screens/auth/signup/signup_enter_code_screen.dart';
import 'package:flutter_rent_moto/screens/auth/signup/signup_enter_password_screen.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
