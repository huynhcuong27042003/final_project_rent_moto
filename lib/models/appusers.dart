import 'dart:ffi';

import 'package:flutter_rent_moto/models/address.dart';
import 'package:flutter_rent_moto/models/enum/roles.dart';
import 'package:flutter_rent_moto/models/information.dart';

class AppUser {
  final String _email;
  final String _name;
  final String _phoneNumber;
  final Roles _role;
  final Address _address;
  final Information _information;
  final Bool _isHide;

  AppUser(
      {required String email,
      required String name,
      required String phoneNumber,
      required Roles role,
      required Address address,
      required Information information,
      required Bool isHide})
      : _email = email,
        _name = name,
        _phoneNumber = phoneNumber,
        _role = role,
        _address = address,
        _information = information,
        _isHide = isHide;
}
