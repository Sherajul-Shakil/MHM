// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhm/screens/auth/controllers/auth_controller.dart';
import 'package:mhm/screens/forgot_password/controllers/forgot_pass_con.dart';
import 'package:mhm/screens/forgot_password/views/varify_otp.dart';
import 'package:mhm/utils/constants/color.dart';
import 'package:mhm/utils/constants/dimsion.dart';
import 'package:mhm/utils/constants/style.dart';
import 'package:mhm/utils/my_textField.dart';

class ResetPassword extends StatelessWidget {
  // final emailPhoeControlle = TextEditingController();
  // final passwordControlle = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor[200],
      body: GetBuilder<ForgotController>(
        init: ForgotController(),
        builder: (controller) {
          return Scaffold(
            body: controller.isLoading.value
                ? const Center(
                    child: CircularProgressIndicator(
                    color: Colors.amber,
                  ))
                : SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: Get.height * 0.2,
                        ),
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
                        SizedBox(
                          height: Get.height * 0.2,
                        ),
                        Column(
                          children: [
                            MyTextField(
                              controller: controller.emailControlle,
                              hintText: 'Email',
                              elevation: true,
                              padding: true,
                            ),
                            MyTextField(
                              controller: controller.passController,
                              hintText: 'New Password',
                              elevation: true,
                              padding: true,
                              isPassword: true,
                            ),
                            MyTextField(
                              controller: controller.conPassController,
                              hintText: 'confirm Password',
                              elevation: true,
                              padding: true,
                              isPassword: true,
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            if (controller.emailControlle.text.isNotEmpty &&
                                controller.passController.text.isNotEmpty &&
                                controller.conPassController.text.isNotEmpty) {
                              controller.resetPassword();
                            } else {
                              Get.snackbar(
                                "Error",
                                "Please fill all the field",
                                snackPosition: SnackPosition.BOTTOM,
                                backgroundColor: Colors.red,
                              );
                            }
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
                  ),
          );
        },
      ),
    );
  }
}
