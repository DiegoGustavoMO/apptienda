import 'dart:ui';

class Category {
  late String name;
  late String icon;
  Color color;
  late String imgName;
  List<Category> subCategories;

  Category(
      {required this.name,
      required this.icon,
      required this.color,
      required this.imgName,
      required this.subCategories});
}
