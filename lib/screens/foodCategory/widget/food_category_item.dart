// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, must_be_immutable

import 'package:flutter/material.dart';
import '../../../utils/constants/color.dart';
import '../../../utils/constants/dimsion.dart';
import '../../../utils/constants/style.dart';
import '../../foodList/food_list_page.dart';
import '../constant/food_category_model.dart';

class FoodCategoryLisItem extends StatelessWidget {
  FoodCategoryModel catM;

  FoodCategoryLisItem({
    required this.catM,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(FoodListPage.routeName),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: Dimensions.PADDING_SIZE_SMALL),
        child: Container(
          margin: EdgeInsets.only(top: 5),
          height: 65,
          color: appColor,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Dimensions.PADDING_SIZE_DEFAULT),
            child: Row(
              children: [
                Expanded(child: Text(catM.catName, style: mediamBoldW)),
                Icon(
                  catM.icon,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
