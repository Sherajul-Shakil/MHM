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

class AuthController extends GetxController {
  NetworkHelper networkHelper = Get.put(NetworkHelper());

  final nameControlle = TextEditingController();
  final emailControlle = TextEditingController();
  final phoneControlle = TextEditingController();
  final passwordControlle = TextEditingController();

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

  //Registration
  Future<void> register() async {
    try {
      changeLoading(true);
      var uri = Uri.parse(AppUrl.registration);

      Map<String, String> data = {
        "name": nameControlle.text,
        "email": emailControlle.text,
        "phone": phoneControlle.text,
        "password": passwordControlle.text,
        "confirm_password": passwordControlle.text,
      };

      //, headers: NetworkHelper().getPostHeaders()
      final response = await http.post(uri, body: data, headers: {
        "Accept": "application/json",
        "Content-Type": "application/x-www-form-urlencoded"
      });
      var value = json.decode(response.body.toString());
      if (response.statusCode == 200) {
        // userDetails = Register.fromJson(value);
        // networkHelper.setUserToken(userDetails.token, userDetails.data!.name);

        // changeLoading(false);
        // Get.snackbar("Success", "Registration Successful");
        // Get.offAll(() => NavigationPage());
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

  //login
  Future<void> login() async {
    try {
      changeLoading(true);
      var uri = Uri.parse(AppUrl.login);

      Map<String, String> data = {
        "email": emailControlle.text,
        "password": passwordControlle.text,
      };

      //, headers: NetworkHelper().getPostHeaders()
      final response = await http.post(uri, body: data, headers: {
        "Accept": "application/json",
        "Content-Type": "application/x-www-form-urlencoded"
      });
      var value = json.decode(response.body.toString());
      if (response.statusCode == 200) {
        authData = RegLogModel.fromJson(value);
        networkHelper.setUserToken(authData.token, authData.data!.name);
        networkHelper.getUserToken();

        changeLoading(false);
        Get.snackbar("Success", "Login Successful");
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
    }
  }

  // //Send OTP
  // Future<void> sendOtp() async {
  //   try {
  //     changeLoading(true);
  //     var uri = Uri.parse(AppUrl.forgatePassword);

  //     Map<String, String> data = {
  //       "email": emailController.text,
  //     };

  //     final response = await http.post(uri,
  //         body: data, headers: networkHelper.getPostHeaders());

  //     if (response.statusCode == 200) {
  //       changeLoading(false);
  //       Get.snackbar("Success", "Sent OTP Successful");
  //       Get.to(() => VarifyOtp());
  //     } else {
  //       changeLoading(false);
  //       Get.defaultDialog(
  //         title: "Error Message",
  //         content: const Text("Error has occured"),
  //       );
  //     }
  //   } catch (e) {
  //     changeLoading(false);
  //     Get.snackbar("Error", e.toString());
  //     // print("Print Error $e");
  //   }
  // }

  // //Varify OTP
  // Future<void> varifyOtp() async {
  //   try {
  //     changeLoading(true);
  //     var uri = Uri.parse(AppUrl.varifyOtp);

  //     Map<String, String> data = {
  //       "email": emailController.text,
  //       "otp": otpValue.toString(),
  //     };

  //     final response = await http.post(uri,
  //         body: data, headers: networkHelper.getPostHeaders());

  //     if (response.statusCode == 200) {
  //       changeLoading(false);
  //       Get.snackbar("Success", "OTP Varification Successful");
  //       Get.to(() => ResetPassword());
  //     } else {
  //       changeLoading(false);
  //       Get.defaultDialog(
  //         title: "Error Message",
  //         content: const Text("OTP does not match"),
  //       );
  //     }
  //   } catch (e) {
  //     changeLoading(false);
  //     Get.snackbar("Error", e.toString());
  //     // print("Print Error $e");
  //   }
  // }

  // //Reset Password
  // Future<void> resetPassword() async {
  //   try {
  //     changeLoading(true);
  //     var uri = Uri.parse(AppUrl.resetPassword);

  //     Map<String, String> data = {
  //       "email": emailController.text,
  //       "new_password": passController.text,
  //       "confirm_password": conPassController.text,
  //     };

  //     final response = await http.post(uri,
  //         body: data, headers: networkHelper.getPostHeaders());

  //     if (response.statusCode == 200) {
  //       changeLoading(false);
  //       Get.snackbar("Success", "Password Reset Successful");
  //       Get.offAll(() => NavigationPage());
  //     } else {
  //       changeLoading(false);
  //       Get.defaultDialog(
  //         title: "Error Message",
  //         content: const Text("Error has occured"),
  //       );
  //     }
  //   } catch (e) {
  //     changeLoading(false);
  //     Get.snackbar("Error", e.toString());
  //     // print("Print Error $e");
  //   }
  // }

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
