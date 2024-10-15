import 'dart:ffi';

import 'package:flutter_rent_moto/models/enum/enery.dart';
import 'package:flutter_rent_moto/models/images_moto.dart';

class ImformationMoto {
  final String _nameMoto;
  final ImagesMoto _imagesMoto;
  final Long _price;
  final String _description;
  final Enery _enery;
  final String _vehicleMass;

  ImformationMoto(
      {required String nameMoto,
      required ImagesMoto imagesMoto,
      required Long price,
      required String description,
      required Enery enery,
      required String vehicleMass})
      : _nameMoto = nameMoto,
        _imagesMoto = imagesMoto,
        _price = price,
        _description = description,
        _enery = enery,
        _vehicleMass = vehicleMass;
}
