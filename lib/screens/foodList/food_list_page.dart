// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/material.dart';
import 'package:mhm/utils/constants/color.dart';
import 'constant/food_list_model.dart';
import 'widget/food_list_item.dart';

class FoodListPage extends StatelessWidget {
  static const routeName = 'food-list';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text('Food List'),
      ),
      body: ListView.builder(
        itemCount: foodListList.length,
        itemBuilder: (context, index) {
          final foodM = foodListList[index];
          return FoodListItem(
            foodM: foodM,
          );
        },
      ),
    );
  }
}
