import 'dart:ffi';

class CategoryMoto {
  final String _name;
  final Bool _isHide;

  CategoryMoto({required String name, required Bool isHide})
      : _name = name,
        _isHide = isHide;
}
