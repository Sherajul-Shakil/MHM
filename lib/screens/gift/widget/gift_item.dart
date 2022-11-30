// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers, must_be_immutable, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mhm/utils/constants/style.dart';

class GiftItem extends StatelessWidget {
  int index;

  GiftItem({
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _showDialog(context);
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: Container(
          child: Image.asset('images/gift.png'),
        ),
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 300,
                  child: Center(
                    child: Text(
                'From with details',
                style: mediamBold,
              ),
                  )),
            ],
          ),
        );
      },
    );
  }
}
