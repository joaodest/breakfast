import 'package:flutter/material.dart';

class CategoryItemModel {
  final String icon;
  final String itemName;
  final Color boxColor;

  CategoryItemModel({
    required this.icon,
    required this.itemName,
    required this.boxColor,
  });

  static List<CategoryItemModel> getCategories() {
    List<CategoryItemModel> categories = [];
    categories.add(CategoryItemModel(
      itemName: 'Salad',
      icon: 'assets/icons/plate.svg',
      boxColor: Color(0xff9DCEFF),
    ));
    categories.add(CategoryItemModel(
      itemName: 'Cake',
      icon: 'assets/icons/pancakes.svg',
      boxColor: Color(0xffEEA4CE),
    ));
    categories.add(CategoryItemModel(
      itemName: 'Pie',
      icon: 'assets/icons/pie.svg',
      boxColor: Color(0xff9DCEFF),
    ));
    categories.add(CategoryItemModel(
      itemName: 'Smoothies',
      icon: 'assets/icons/orange-snacks.svg',
      boxColor: Color(0xffEEA4CE),
    ));

    return categories;
  }
}
