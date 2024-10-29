import 'package:flutter/material.dart';
import 'package:flutter_rent_moto/widgets/auth/signup/signup_change_avatar/signup_chang_avatar_infor.dart';
import 'package:flutter_rent_moto/widgets/auth/signup/signup_change_avatar/signup_change_avatar_main.dart';

class SignupChangeAvatarBody extends StatefulWidget {
  const SignupChangeAvatarBody({super.key});

  @override
  State<SignupChangeAvatarBody> createState() => _SignupChangeAvatarBodyState();
}

class _SignupChangeAvatarBodyState extends State<SignupChangeAvatarBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: const Color.fromARGB(133, 240, 239, 239),
      child: const Column(
        children: [
          SizedBox(
            height: 100,
          ),
          SignupChangeAvatarMain(),
          SizedBox(
            height: 30,
          ),
          SignupChangAvatarInfor(),
        ],
      ),
    );
  }
}
