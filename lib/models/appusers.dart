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
  final bool _isHide;

  AppUser(
      {required String email,
      required String name,
      required String phoneNumber,
      required Roles role,
      required Address address,
      required Information information,
      required bool isHide})
      : _email = email,
        _name = name,
        _phoneNumber = phoneNumber,
        _role = role,
        _address = address,
        _information = information,
        _isHide = isHide;
  Map<String, dynamic> toJson() {
    return {
      'email': _email,
      'name': _name,
      'phoneNumber': _phoneNumber,
      'role': _role.toString(), // chuyển enum thành chuỗi
      'address': _address.toJson(),
      'information': _information.toJson(),
      'isHide': _isHide == 0,
    };
  }

  factory AppUser.fromJson(Map<String, dynamic> json) {
    return AppUser(
      email: json['email'] as String,
      name: json['name'] as String,
      phoneNumber: json['phoneNumber'] as String,
      role: Roles.values.firstWhere((e) => e.toString() == json['role']),
      address: Address.fromJson(json['address']),
      information: Information.fromJson(json['information']),
      isHide:
          json['isHide'] ?? false, // nếu không có giá trị thì mặc định là false
    );
  }
}
