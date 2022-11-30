// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhm/screens/auth/controllers/auth_controller.dart';
import 'package:mhm/utils/constants/style.dart';
import 'package:mhm/utils/my_textField.dart';
import '../../utils/constants/color.dart';
import '../../utils/constants/dimsion.dart';
import '../bottom_nav_page.dart';
import '../home/home_page.dart';

class LogInPage extends StatelessWidget {
  static const routeName = '/login';

  // final emailPhoeControlle = TextEditingController();
  // final passwordControlle = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor[200],
      body: GetBuilder<AuthController>(
        init: AuthController(),
        builder: (authController) {
          return Scaffold(
            body: authController.isLoading.value
                ? const Center(
                    child: CircularProgressIndicator(
                    color: Colors.amber,
                  ))
                : Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        elevation: 15,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                        child: Padding(
                          padding: const EdgeInsets.all(
                              Dimensions.PADDING_SIZE_DEFAULT),
                          child: Image.asset(
                            'images/logo.png',
                            height: 100,
                            width: 100,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          MyTextField(
                            controller: authController.emailControlle,
                            hintText: 'Email/Phone',
                            elevation: true,
                            padding: true,
                          ),
                          MyTextField(
                            controller: authController.passwordControlle,
                            hintText: 'Pssword',
                            elevation: true,
                            padding: true,
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          authController.login();

                          // Navigator.pushAndRemoveUntil(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (BuildContext context) =>
                          //         ShowBottomNavScreen(),
                          //   ),
                          //   (route) => false,
                          // );
                        },
                        child: Card(
                          elevation: 15,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  Dimensions.RADIUS_DEFAULT)),
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
          );
        },
      ),
    );
  }
}
