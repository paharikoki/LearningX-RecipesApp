import 'package:flutter/material.dart';

enum Category {
  breakfast,
  lunch,
  dinner,
  dessert,
  snacks,
}

extension CategoryExtension on Category {
  String get name {
    switch (this) {
      case Category.breakfast:
        return 'Breakfast';
      case Category.lunch:
        return 'Lunch';
      case Category.dinner:
        return 'Dinner';
      case Category.dessert:
        return 'Dessert';
      case Category.snacks:
        return 'Snacks';
    }
  }

  Color get categoryColor {
    switch (this) {
      case Category.breakfast:
        return Colors.orange;
      case Category.lunch:
        return Colors.blueAccent;
      case Category.dinner:
        return Colors.green;
      case Category.dessert:
        return Colors.purple;
      case Category.snacks:
        return Colors.indigo;
    }
  }
}

class Recipe {
  String title;
  int time;
  Category category;
  String image;

  Recipe({
    required this.title,
    required this.time,
    required this.category,
    required this.image,
  });
}
