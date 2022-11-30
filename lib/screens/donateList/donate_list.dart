// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:mhm/utils/constants/color.dart';

import '../../utils/constants/dimsion.dart';
import 'widget/donate+list_item.dart';

class DonateListPage extends StatelessWidget {
  static const routeName = 'donate-list';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text('Donate List'),
      ),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: Dimensions.PADDING_SIZE_EXTRA_SMALL),
            child: DonateLisItem(),
          );
        },
      ),
    );
  }
}
