import 'package:flutter/material.dart';
import 'package:flutter_rent_moto/widgets/rent_home/rent_home_background.dart';
import 'package:flutter_rent_moto/widgets/rent_home/rent_home_search_motos.dart';

class RentHomeCreen extends StatefulWidget {
  const RentHomeCreen({super.key});

  @override
  State<RentHomeCreen> createState() => _RentHomeCreenState();
}

class _RentHomeCreenState extends State<RentHomeCreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          const RentHomeBackground(),
          const RentHomeSearchMotos(),
          Container(
            
          )
        ],
      ),
    );
  }
}
