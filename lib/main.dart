import 'package:flutter/material.dart';
import 'package:flutter_rent_moto/screens/home/rent_home/rent_home_creen.dart';
import 'package:flutter_rent_moto/widgets/modals/calendar_rental.dart';

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
    return MaterialApp(
      home: BookingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
