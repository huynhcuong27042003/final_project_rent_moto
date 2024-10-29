class CompanyMoto {
  final String name;
  final bool isHide;

  // Constructor với named parameters
  CompanyMoto({required this.name, required this.isHide});

  // Factory constructor để tạo object từ JSON
  factory CompanyMoto.fromJson(Map<String, dynamic> json) {
    return CompanyMoto(
      name: json['name'],
      isHide: json['isHide'],
    );
  }

  // Phương thức chuyển object thành JSON
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'isHide': isHide,
    };
  }
}
