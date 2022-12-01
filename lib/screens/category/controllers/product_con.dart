import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:mhm/core/network_helper/app_url.dart';
import 'package:mhm/core/network_helper/network_helper.dart';
import 'package:mhm/screens/category/models/product_category.dart';
import 'package:mhm/screens/productDetails/models/product_review.dart';

class ProductController extends GetxController {
  NetworkHelper networkHelper = Get.put(NetworkHelper());

  final emailControlle = TextEditingController();
  final commentController = TextEditingController();

  var isLoading = false.obs;
  var rating = 1.0.obs;

  ProductCategory productCat = ProductCategory();
  ProductReview productReview = ProductReview();

  @override
  void onInit() async {
    super.onInit();
    await getCategory();
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

  void changeRating(value) {
    rating.value = value;
    update();
  }

  // .................... Get Category Info ...................

  Future<ProductCategory> getCategory() async {
    try {
      changeLoading(true);
      var uri = Uri.parse(AppUrl.categoryList);
      final response =
          await http.get(uri, headers: networkHelper.getPostHeaders());
      var data = jsonDecode(response.body.toString());
      if (response.statusCode == 200) {
        productCat = ProductCategory.fromJson(data);
        changeLoading(false);
        return productCat;
      } else {
        changeLoading(false);
        return productCat;
      }
    } catch (e) {
      changeLoading(false);
      print('error in get category: $e');
      return productCat;
    }
  }

  // .................... Get product review Info ...................

  Future<ProductReview> getProductReview(int id) async {
    changeLoading(true);
    var uri = Uri.parse(AppUrl.productReview + id.toString());
    final response =
        await http.get(uri, headers: networkHelper.getPostHeaders());
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      productReview = ProductReview.fromJson(data);
      print("product reviewwwwwwwwwwwwwwwwwwwwwwwwwwwwww:  $productReview");
      changeLoading(false);
      return productReview;
    } else {
      changeLoading(false);
      return productReview;
    }
  }

  //Send OTP
  Future<void> addReview(int productId) async {
    try {
      changeLoading(true);
      var uri = Uri.parse(AppUrl.addReview);

      Map<String, String> data = {
        "product_id": productId.toString(),
        "rating": rating.value.toString(),
        "review": commentController.text,
      };

      final response = await http.post(uri,
          body: data, headers: networkHelper.getPostHeaders());

      if (response.statusCode == 200) {
        changeLoading(false);
        Get.snackbar("Success", "Add review Successful");
        commentController.clear();
        rating.value = 1.0;
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
