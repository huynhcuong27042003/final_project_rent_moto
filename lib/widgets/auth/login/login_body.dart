import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rent_moto/widgets/auth/login/login_form.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Đây là logo
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0),
          child: Image.asset("assets/images/logo.png"),
        ),
        const LoginForm()
      ],
    );
  }
}