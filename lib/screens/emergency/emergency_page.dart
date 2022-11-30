// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/material.dart';
import 'package:mhm/screens/emergency/widget/emergency_item.dart';
import '../../utils/constants/color.dart';
import 'constant/emergency_model.dart';

class EmergencyPage extends StatelessWidget {
  static const routeName = 'emergency';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text('Emergency'),
      ),
      body: ListView.builder(
        itemCount: emergencyNumberList.length,
        itemBuilder: (context, index) {
          final emerM = emergencyNumberList[index];
          return EmergencyItem(emerM: emerM);
        },
      ),
    );
  }
}
