class Information {
  final String _name;
  final String _dayOfBrith;
  final String _avatar;
  final String _gplx;
  Information(
      {required String name,
      required String dayOfBrith,
      required String avatar,
      required String gplx})
      : _name = name,
        _dayOfBrith = dayOfBrith,
        _avatar = avatar,
        _gplx = gplx;
  Map<String, dynamic> toJson() {
    return {
      'name': _name,
      'dayOfBrith': _dayOfBrith,
      'avatar': _avatar,
      'gplx': _gplx,
    };
  }

  factory Information.fromJson(Map<String, dynamic> json) {
    return Information(
      name: json['name'] as String,
      dayOfBrith: json['dayOfBrith'] as String,
      avatar: json['avatar'] as String,
      gplx: json['gplx'] as String,
    );
  }
}
