// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhm/core/network_helper/network_helper.dart';
import 'package:mhm/screens/auth/login-Page.dart';
import 'package:mhm/screens/bottom_nav_page.dart';
import 'package:mhm/utils/constants/color.dart';
import 'auth/registatn.dart';

class SpalashPage extends StatefulWidget {
  static const routeName = 'spalash';

  @override
  State<SpalashPage> createState() => _SpalashPageState();
}

class _SpalashPageState extends State<SpalashPage> {
  NetworkHelper networkHelper = Get.put(NetworkHelper());
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      networkHelper.userName.isNotEmpty
          ? Get.offAll(() => ShowBottomNavScreen())
          : Get.offAll(() => LogInPage());

      // Navigator.of(context).pushReplacementNamed(RegistationPage.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor[200],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('images/bismillah2.png', height: 200),
                SizedBox(height: 30),
                Image.asset(
                  'images/logo.png',
                  height: 170,
                  width: 170,
                ),
              ],
            ),
          ),
        ));
  }
}
