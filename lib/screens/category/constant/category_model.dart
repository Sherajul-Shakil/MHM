import 'package:flutter/material.dart';

class CategoryModel {
  String catName;
  IconData icon;

  CategoryModel({
    required this.catName,
    required this.icon,
  });
}

List<CategoryModel> catList = [
  CategoryModel(catName: 'Smart Phone', icon: Icons.phone),
  CategoryModel(catName: 'Smart Tv', icon: Icons.phone),
  CategoryModel(catName: 'Telivision', icon: Icons.phone),
  CategoryModel(catName: 'Laptop', icon: Icons.phone),
  CategoryModel(catName: 'Watch', icon: Icons.phone),
  CategoryModel(catName: 'T-shirt', icon: Icons.phone),
];