// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import '../../../utils/constants/color.dart';
import '../../../utils/constants/dimsion.dart';
import '../../../utils/constants/style.dart';

class DonateLisItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 70,
        color: cardColor,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.PADDING_SIZE_DEFAULT),
          child: Row(
            children: [
              Expanded(child: Text('Man', style: mediamBoldW)),
              Image.asset('images/offer2.png', height: 30, width: 30, color: whiteColor,),
            ],
          ),
        ),
      ),
    );
  }
}