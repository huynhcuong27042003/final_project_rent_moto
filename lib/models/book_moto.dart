import 'dart:ffi';

import 'package:flutter_rent_moto/models/appusers.dart';
import 'package:flutter_rent_moto/models/motos.dart';

class BookMoto {
  final AppUser _appUser;
  final Motos _moto;
  final DateTime _rentDate;
  final DateTime _returnDate;
  final Int numberOfRentalDay;
  final Bool isAccept;
  final Bool _isHide;

  BookMoto(
      {required AppUser appUser,
      required Motos moto,
      required DateTime rentDate,
      required DateTime returnDate,
      required this.numberOfRentalDay,
      required this.isAccept,
      required Bool isHide})
      : _appUser = appUser,
        _moto = moto,
        _rentDate = rentDate,
        _returnDate = returnDate,
        _isHide = isHide;
}
