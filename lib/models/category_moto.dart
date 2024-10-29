class CategoryMoto {
  // Các thuộc tính của lớp
  String name;
  bool isHide;

  // Constructor với named parameters
  CategoryMoto({required this.name, required this.isHide});

  // Phương thức factory để tạo đối tượng từ JSON
  factory CategoryMoto.fromJson(Map<String, dynamic> json) {
    return CategoryMoto(
      name: json['name'],
      isHide: json['isHide'],
    );
  }

  // Phương thức chuyển đối tượng thành JSON
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'isHide': isHide,
    };
  }
}
