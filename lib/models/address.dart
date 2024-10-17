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

  Map<String, dynamic> toJson() {
    return {
      'streetName': _streetName,
      'city': _city,
      'district': _district,
      'ward': _ward,
    };
  }

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      streetName: json['streetName'] as String,
      city: json['city'] as String,
      district: json['district'] as String,
      ward: json['ward'] as String,
    );
  }
}
