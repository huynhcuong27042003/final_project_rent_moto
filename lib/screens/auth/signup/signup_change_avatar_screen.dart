import 'package:flutter/material.dart';
import 'package:flutter_rent_moto/widgets/auth/signup/signup_change_avatar/signup_change_avatar_body.dart';

class SignupChangeAvatarScreen extends StatefulWidget {
  const SignupChangeAvatarScreen({super.key});

  @override
  State<SignupChangeAvatarScreen> createState() =>
      _SignupChangeAvatarScreenState();
}

class _SignupChangeAvatarScreenState extends State<SignupChangeAvatarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Uptdate Avatar',
          style: TextStyle(
              fontWeight: FontWeight.w700, color: Colors.white, fontSize: 30),
        ),
        backgroundColor: const Color(0xFFFFAD15),
      ),
      body: const SignupChangeAvatarBody(),
    );
  }
}