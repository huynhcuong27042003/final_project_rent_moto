import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rent_moto/widgets/auth/login/login_body.dart';
import 'package:flutter_rent_moto/widgets/auth/login/login_header.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFAD15),
      ),
      body: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 150,
            child: LoginHeader(),
          ),
          LoginBody()
        ],
      ),
    );
  }
}