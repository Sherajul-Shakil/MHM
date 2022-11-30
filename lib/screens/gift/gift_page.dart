// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:mhm/utils/constants/color.dart';

import '../../utils/constants/dimsion.dart';
import 'widget/gift_item.dart';

class GiftPage extends StatelessWidget {
  static const routeName = 'gift';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text('Gift'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.symmetric(
            horizontal: Dimensions.PADDING_SIZE_DEFAULT,
            vertical: Dimensions.PADDING_SIZE_DEFAULT),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            childAspectRatio: 0.8),
        itemCount: 6,
        itemBuilder: (context, index) {
          return GiftItem(index: index,);
        },
      ),
    );
  }
}
