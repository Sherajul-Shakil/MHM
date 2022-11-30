// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, must_be_immutable

import 'package:flutter/material.dart';
import '../../../utils/constants/style.dart';
import '../../foodDetails/food_details_page.dart';
import '../constant/food_list_model.dart';

class FoodListItem extends StatelessWidget {
  FoodListModel foodM;

  FoodListItem({
    required this.foodM,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(FoodDetailsPage.routeName),
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          height: 140,
          width: double.infinity,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.grey.withOpacity(0.2),
                    child: Image.asset(
                      foodM.image,
                      height: 132,
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            foodM.title,
                            style: smallNormal,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                          SizedBox(height: 15),
                          Text(
                            '৳ ${foodM.price}',
                            style: mediamBoldRed,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
