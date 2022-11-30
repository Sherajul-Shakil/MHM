// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../../utils/constants/color.dart';
import '../../utils/constants/dimsion.dart';
import '../../utils/constants/style.dart';
import '../../utils/my_textField.dart';

class DonatePage extends StatelessWidget {
  static const routeName = 'donate';

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final descriptonController = TextEditingController();

    return Scaffold(
      backgroundColor: bgColor[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text('Donate'),
        actions: [
          Image.asset('images/emergency.png', height: 25, width: 25,),
          SizedBox(width: 15)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: Dimensions.PADDING_SIZE_EXTRA_SMALL,
            vertical: Dimensions.PADDING_SIZE_EXTRA_SMALL),
        child: SingleChildScrollView(
          child: Column(
            children: [
              MyTextField(
                controller: titleController,
                hintText: 'Title',
                elevation: false,
                padding: false,
              ),
              MyTextField(
                controller: descriptonController,
                hintText: 'Descripton',
                elevation: false,
                padding: false,
                maxLine: 10,
              ),
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Card(
                  child: Icon(
                    Icons.image,
                    size: 150,
                  ),
                ),
              ),
              SizedBox(height: 15),
              InkWell(
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(Dimensions.RADIUS_DEFAULT)),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 120,
                    child: Text(
                      'Submit',
                      style: smallNormal,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
