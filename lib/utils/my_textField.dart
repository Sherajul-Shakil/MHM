// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:mhm/utils/constants/style.dart';

import 'constants/dimsion.dart';

class MyTextField extends StatelessWidget {
  TextEditingController controller;
  String hintText;
  IconData? prefixIcon;
  TextInputType? keyBordType;
  int? maxLine;
  bool padding;
  bool elevation;
  bool? isPassword;

  MyTextField({
    required this.controller,
    required this.hintText,
    this.prefixIcon,
    this.keyBordType,
    this.maxLine = 1,
    required this.elevation,
    required this.padding,
    this.isPassword,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding
          ? EdgeInsets.only(
              left: Dimensions.PADDING_SIZE_DEFAULT,
              right: Dimensions.PADDING_SIZE_DEFAULT,
              bottom: Dimensions.PADDING_SIZE_SMALL)
          : EdgeInsets.all(0),
      child: Card(
        elevation: elevation ? 15 : 2,
        child: TextFormField(
          obscureText: isPassword ?? false,
          maxLines: maxLine,
          keyboardType: keyBordType,
          controller: controller,
          cursorColor: Colors.black,
          style: smallBold,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.only(left: 10),
            focusColor: Colors.white,
            hintText: hintText,
            hintStyle:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}
