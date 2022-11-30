// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhm/screens/auth/controllers/auth_controller.dart';
import 'package:mhm/screens/forgot_password/controllers/forgot_pass_con.dart';
import 'package:mhm/screens/forgot_password/views/reset_pass.dart';
import 'package:mhm/utils/constants/color.dart';
import 'package:mhm/utils/constants/dimsion.dart';
import 'package:mhm/utils/constants/style.dart';
import 'package:mhm/utils/my_textField.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class VarifyOtp extends StatelessWidget {
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
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              child: OTPTextField(
                                  // controller: authController.otpController,
                                  length: 5,
                                  width: MediaQuery.of(context).size.width,
                                  textFieldAlignment:
                                      MainAxisAlignment.spaceAround,
                                  fieldWidth: 45,
                                  fieldStyle: FieldStyle.box,
                                  outlineBorderRadius: 15,
                                  style: TextStyle(fontSize: 17),
                                  onChanged: (pin) {
                                    controller.otpValue.value = pin;
                                    print("Changed: " +
                                        controller.otpValue.value);
                                  },
                                  onCompleted: (pin) {
                                    // print("Completed: " + pin);
                                  }),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: Get.height * 0.03,
                        ),
                        InkWell(
                          onTap: () {
                            if (controller.emailControlle.text.isNotEmpty &&
                                controller.otpValue.value.isNotEmpty) {
                              // controller.varifyOtp();
                              Get.to(() => ResetPassword());
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
