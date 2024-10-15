import 'dart:ffi';

import 'package:flutter_rent_moto/models/book_moto.dart';

class Bill {
  final BookMoto _bookMoto;
  final Long _price;
  final Long _deposit;
  final DateTime _createDate;

  Bill(
      {required BookMoto bookMoto,
      required Long price,
      required Long deposit,
      required DateTime createDate})
      : _bookMoto = bookMoto,
        _price = price,
        _deposit = deposit,
        _createDate = createDate;
}
