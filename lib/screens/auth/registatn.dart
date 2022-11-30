// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhm/screens/auth/controllers/auth_controller.dart';
import 'package:mhm/utils/my_textField.dart';
import '../../utils/constants/color.dart';
import '../../utils/constants/dimsion.dart';
import '../../utils/constants/style.dart';
import 'login-Page.dart';

class RegistationPage extends StatelessWidget {
  static const routeName = '/registation';

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
                  : Center(
                      child: SingleChildScrollView(
                        child: Center(
                          child: Column(
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
                              SizedBox(height: 30),
                              MyTextField(
                                controller: authController.nameControlle,
                                hintText: 'Full Name',
                                elevation: true,
                                padding: true,
                              ),
                              MyTextField(
                                controller: authController.emailControlle,
                                hintText: 'Email',
                                elevation: true,
                                padding: true,
                              ),
                              MyTextField(
                                controller: authController.phoneControlle,
                                hintText: 'Phone No.',
                                elevation: true,
                                padding: true,
                              ),
                              MyTextField(
                                controller: authController.passwordControlle,
                                hintText: 'Pssword',
                                elevation: true,
                                padding: true,
                              ),
                              InkWell(
                                onTap: (() => Navigator.of(context)
                                    .pushNamed(LogInPage.routeName)),
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
                        ),
                      ),
                    ),
            );
          }),
    );
  }
}
