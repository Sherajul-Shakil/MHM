// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:mhm/screens/category/category_page.dart';
import 'package:mhm/utils/constants/style.dart';
import '../../../utils/constants/color.dart';
import '../constants/product_list.dart';

class ProductisItem extends StatelessWidget {
  final int index;

  ProductisItem({
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(CategoryPage.routeName),
      child: Container(
        color: whiteColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              productList[index].image, height: 70, width: 70,
            ),
            SizedBox(height: 15),
            Text(productList[index].title, style: smallBold,)
          ],
        ),
      ),
    );
  }
}
