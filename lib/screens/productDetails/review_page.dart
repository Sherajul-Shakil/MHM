// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/rating/gf_rating.dart';
import 'package:mhm/screens/category/controllers/product_con.dart';
import 'package:mhm/screens/forgot_password/controllers/forgot_pass_con.dart';
import 'package:mhm/screens/forgot_password/views/varify_otp.dart';
import 'package:mhm/screens/productDetails/models/product_review.dart';
import 'package:mhm/utils/constants/color.dart';
import 'package:mhm/utils/constants/dimsion.dart';
import 'package:mhm/utils/constants/style.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:mhm/utils/my_textField.dart';
// import 'package:getwidget/components/rating/gf_rating.dart';

class ReviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor[200],
      body: GetBuilder<ProductController>(
        init: ProductController(),
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: Get.height * 0.02,
                        ),

                        //user name rating and date
                        controller.productReview.data!.isNotEmpty
                            ? Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount:
                                      controller.productReview.data!.length,
                                  itemBuilder: (context, index) {
                                    ReviewData model = controller
                                        .productReview.data!
                                        .elementAt(index);
                                    return Column(
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              height: 50,
                                              width: 50,
                                              margin: const EdgeInsets.only(
                                                right: 10,
                                              ),
                                              child: CachedNetworkImage(
                                                imageUrl:
                                                    'https://uxwing.com/wp-content/themes/uxwing/download/peoples-avatars/user-profile-icon.png',
                                                // '${AppConfig.customerImageUrl}${model.rating!.customer!.image}',
                                                placeholder: (context, url) {
                                                  return SizedBox();
                                                },
                                                errorWidget:
                                                    (context, url, error) {
                                                  return Image.asset(
                                                    'assets/images/empty_box.png',
                                                    fit: BoxFit.cover,
                                                  );
                                                },
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Expanded(
                                              flex: 4,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    '${model.userName}',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              flex: 7,
                                              child: GFRating(
                                                color: Colors.amber[600],
                                                size: 20,
                                                borderColor: Colors.amber[600],
                                                value: model.rating!.toDouble(),
                                                onChanged: (value) {
                                                  print('');
                                                },
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            '${model.review}',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                        Divider(
                                          height: 20,
                                          color: Colors.grey,
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              )
                            : Text(
                                'No Review Yet',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                              ),
                        SizedBox(
                          height: 20,
                        ),

                        //Add Review
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GFRating(
                                color: Colors.amber[600],
                                size: 28,
                                borderColor: Colors.amber[600],
                                value: controller.rating.value,
                                onChanged: (value) {
                                  controller.changeRating(value);
                                  print('');
                                },
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              MyTextField(
                                controller: controller.commentController,
                                hintText: 'Your Review',
                                elevation: true,
                                padding: true,
                              ),
                            ],
                          ),
                        ),

                        //Submit Button
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                if (controller
                                    .commentController.text.isNotEmpty) {
                                  controller.addReview(1);
                                } else {
                                  Get.snackbar(
                                    'Error',
                                    'Please add your review',
                                    snackPosition: SnackPosition.BOTTOM,
                                    backgroundColor: Colors.red,
                                    colorText: Colors.white,
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
                            ),
                          ],
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
