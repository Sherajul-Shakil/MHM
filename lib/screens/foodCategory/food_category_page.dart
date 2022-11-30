// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:mhm/utils/constants/color.dart';
import '../../utils/constants/dimsion.dart';
import 'constant/food_category_model.dart';
import 'widget/food_category_item.dart';

class FoodCategoryPage extends StatelessWidget {
  static const routeName = 'food-category';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text('Food Category'),
      ),
      body: ListView.builder(
        itemCount: foodCatList.length,
        itemBuilder: (context, index) {
          final catM = foodCatList[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: Dimensions.PADDING_SIZE_EXTRA_SMALL),
            child: FoodCategoryLisItem(catM: catM),
          );
        },
      ),
    );
  }
}
