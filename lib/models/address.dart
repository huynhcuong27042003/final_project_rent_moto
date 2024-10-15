class Address {
  final String _streetName;
  final String _city;
  final String _district;
  final String _ward; //Phường

  Address(
      {required String streetName,
      required String city,
      required String district,
      required String ward})
      : _streetName = streetName,
        _city = city,
        _district = district,
        _ward = ward;
}
