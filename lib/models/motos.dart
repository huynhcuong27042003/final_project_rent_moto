import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter_rent_moto/models/company_moto.dart';
import 'package:flutter_rent_moto/models/imformation_moto.dart';

class Motos {
  final String _numberPlate;
  final CompanyMoto _companyMoto;
  final Category _category;
  final ImformationMoto _imformationMoto;
  final Bool _isActive;
  final Bool _isHide;

  Motos(
      {required String numberPlate,
      required CompanyMoto companyMoto,
      required Category category,
      required ImformationMoto imformationMoto,
      required Bool isActive,
      required Bool isHide})
      : _numberPlate = numberPlate,
        _companyMoto = companyMoto,
        _category = category,
        _imformationMoto = imformationMoto,
        _isActive = isActive,
        _isHide = isHide;
}
