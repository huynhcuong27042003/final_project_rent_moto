import 'package:flutter/material.dart';
import 'package:flutter_rent_moto/widgets/auth/signup_enter_email/signup_enter_email_body.dart';
import 'package:flutter_rent_moto/widgets/auth/signup_enter_email/signup_enter_email_header.dart';

class SignupEnterEmailScreen extends StatefulWidget {
  const SignupEnterEmailScreen({super.key});

  @override
  State<SignupEnterEmailScreen> createState() => _SignupEnterEmailScreenState();
}

class _SignupEnterEmailScreenState extends State<SignupEnterEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          'Step 1',
          style: TextStyle(
              fontWeight: FontWeight.w700, color: Colors.white, fontSize: 30),
        ),
        backgroundColor: const Color(0xFFFFAD15),
      ),
      body: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 150,
            child: SignupEnterEmailHeader(),
          ),
          SignupEnterEmailBody(),
        ],
      ),
    );
  }
}