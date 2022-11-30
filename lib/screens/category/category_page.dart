// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:mhm/utils/constants/color.dart';
import '../../utils/constants/dimsion.dart';
import 'constant/category_model.dart';
import 'widget/category_item.dart';

class CategoryPage extends StatelessWidget {
  static const routeName = 'category';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text('Category'),
      ),
      body: ListView.builder(
        itemCount: catList.length,
        itemBuilder: (context, index) {
          final catM = catList[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: Dimensions.PADDING_SIZE_EXTRA_SMALL),
            child: CategoryLisItem(catM: catM),
          );
        },
      ),
    );
  }
}
