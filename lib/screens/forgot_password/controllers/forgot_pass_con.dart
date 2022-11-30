import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:mhm/core/network_helper/app_url.dart';
import 'package:mhm/core/network_helper/network_helper.dart';
import 'package:mhm/screens/auth/models/reg_log_model.dart';
import 'package:mhm/screens/bottom_nav_page.dart';
import 'package:otp_text_field/otp_text_field.dart';

class ForgotController extends GetxController {
  NetworkHelper networkHelper = Get.put(NetworkHelper());

  final emailControlle = TextEditingController();
  final passController = TextEditingController();
  final conPassController = TextEditingController();
  OtpFieldController otpController = OtpFieldController();

  var isLoading = false.obs;

  var otpValue = ''.obs;
  var rememberME = false.obs;

  RegLogModel authData = RegLogModel();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void changeLoading(value) {
    isLoading.value = value;
    update();
  }

  void changeRememberMe(value) {
    rememberME.value = value;
    update();
  }

  //Send OTP
  Future<void> sendOtp() async {
    try {
      changeLoading(true);
      var uri = Uri.parse(AppUrl.forgatePassword);

      Map<String, String> data = {
        "email": emailControlle.text,
      };

      final response = await http.post(uri,
          body: data, headers: networkHelper.getPostHeaders());

      if (response.statusCode == 200) {
        changeLoading(false);
        Get.snackbar("Success", "Sent OTP Successful");
        // Get.to(() => VarifyOtp());
      } else {
        changeLoading(false);
        Get.defaultDialog(
          title: "Error Message",
          content: const Text("Error has occured"),
        );
      }
    } catch (e) {
      changeLoading(false);
      Get.snackbar("Error", e.toString());
      // print("Print Error $e");
    }
  }

  //Varify OTP
  Future<void> varifyOtp() async {
    try {
      changeLoading(true);
      var uri = Uri.parse(AppUrl.varifyOtp);

      Map<String, String> data = {
        "email": emailControlle.text,
        "otp": otpValue.toString(),
      };

      final response = await http.post(uri,
          body: data, headers: networkHelper.getPostHeaders());

      if (response.statusCode == 200) {
        changeLoading(false);
        Get.snackbar("Success", "OTP Varification Successful");
        // Get.to(() => ResetPassword());
      } else {
        changeLoading(false);
        Get.defaultDialog(
          title: "Error Message",
          content: const Text("OTP does not match"),
        );
      }
    } catch (e) {
      changeLoading(false);
      Get.snackbar("Error", e.toString());
      // print("Print Error $e");
    }
  }

  //Reset Password
  Future<void> resetPassword() async {
    try {
      changeLoading(true);
      var uri = Uri.parse(AppUrl.resetPassword);

      Map<String, String> data = {
        "email": emailControlle.text,
        "new_password": passController.text,
        "confirm_password": conPassController.text,
      };

      final response = await http.post(uri,
          body: data, headers: networkHelper.getPostHeaders());

      if (response.statusCode == 200) {
        changeLoading(false);
        Get.snackbar("Success", "Password Reset Successful");
        Get.offAll(() => ShowBottomNavScreen());
      } else {
        changeLoading(false);
        Get.defaultDialog(
          title: "Error Message",
          content: const Text("Error has occured"),
        );
      }
    } catch (e) {
      changeLoading(false);
      Get.snackbar("Error", e.toString());
      // print("Print Error $e");
    }
  }

  // //Sign in with Google
  // Future<UserCredential> signInWithGoogle() async {
  //   final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  //   final GoogleSignInAuthentication? googleAuth =
  //       await googleUser?.authentication;

  //   final credential = GoogleAuthProvider.credential(
  //     accessToken: googleAuth?.accessToken,
  //     idToken: googleAuth?.idToken,
  //   );
  //   print("Credential : $credential");

  //   // Once signed in, return the UserCredential
  //   return await FirebaseAuth.instance.signInWithCredential(credential);
  // }
}
