import 'package:flutter/material.dart';

class DietItemModel {
  String name;
  String icon;
  String level;
  String duration;
  String calorie;
  Color boxColor;
  bool viewIsSelected;

  DietItemModel({
    required this.name,
    required this.icon,
    required this.level,
    required this.duration,
    required this.calorie,
    required this.boxColor,
    required this.viewIsSelected,
  });

  static List<DietItemModel> getDietItems() {
    List<DietItemModel> items = [];

    items.add(DietItemModel(
      name: 'Honey Pancake',
      icon: 'assets/icons/honey-pancakes.svg',
      level: 'Easy',
      duration: '30mins',
      calorie: '180kCal',
      viewIsSelected: true,
      boxColor: Color(0xff9DCEFF),
    ));

    items.add(
      DietItemModel(
        name: 'Canai Bread',
        icon: 'assets/icons/canai-bread.svg',
        level: 'Easy',
        duration: '20mins',
        calorie: '230kCal',
        viewIsSelected: false,
        boxColor: Color(0xffEEA4CE),
      ),
    );

    return items;
  }
}
