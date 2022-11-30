import 'package:flutter/material.dart';

class FoodCategoryModel {
  String catName;
  IconData icon;

  FoodCategoryModel({
    required this.catName,
    required this.icon,
  });
}

List<FoodCategoryModel> foodCatList = [
  FoodCategoryModel(catName: 'Cassi', icon: Icons.food_bank),
  FoodCategoryModel(catName: 'Pizza', icon: Icons.food_bank),
  FoodCategoryModel(catName: 'Barger', icon: Icons.food_bank),
  FoodCategoryModel(catName: 'Biriany', icon: Icons.food_bank),
  FoodCategoryModel(catName: 'Vegitables', icon: Icons.food_bank),
];