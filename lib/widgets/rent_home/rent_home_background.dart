import 'package:flutter/material.dart';

class RentHomeBackground extends StatelessWidget {
  const RentHomeBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(
              "assets/images/image_background1.jpg",
              height: 300,
              width: 400,
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}
