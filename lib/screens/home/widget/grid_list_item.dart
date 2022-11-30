// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_constructors_in_immutables, non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:mhm/screens/product/product_page.dart';
import '../../../utils/constants/dimsion.dart';
import '../../../utils/constants/style.dart';
import '../../b2b/b2b_page.dart';
import '../../emergency/emergency_page.dart';
import '../../foodCategory/food_category_page.dart';
import '../../gift/gift_page.dart';
import '../../uploadProduct/upload_product.dart';
import '../constants/grid_list_item_model.dart';

class GridLisItem extends StatelessWidget {
  bool isEntrepreneur = false;
  final GridListItemModel model;
  final Size size;
  final int index;

  GridLisItem({
    required this.model,
    required this.size,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (index == 3) {
          isEntrepreneur
              ? Navigator.of(context).pushNamed(UploadProductPage.routeName)
              : showBottomSheat(context);
        }
        Navivator(context);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          index == 1
              ? Icon(
                  Icons.phone,
                  color: Colors.red,
                )
              : Image.asset(
                  model.image,
                  height: 30,
                  width: 30,
                ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Text(
            model.title,
            style: verysmallBold,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  void Navivator(BuildContext context) {
    index == 0
        ? Navigator.of(context).pushNamed(ProductPage.routeName)
        : index == 1
            ? Navigator.of(context).pushNamed(EmergencyPage.routeName)
            : index == 2
                ? Navigator.of(context).pushNamed(GiftPage.routeName)
                : index == 4
                    ? Navigator.of(context)
                        .pushNamed(FoodCategoryPage.routeName)
                    : index == 5
                        ? null
                        : index == 6
                            ? null
                            : null;
  }

  void showBottomSheat(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Container(
                height: 5,
                width: 70,
                color: Colors.grey.withOpacity(0.4),
              ),
              SizedBox(height: 35),
              Text(
                'যারা ক্ষুদ্র ব্যাবসায়ী তারাই শুধু মাত্র তাদের পণ্যের ছবি গুলো আপলোড করতে পারবেন না হলে কেউ ক্ষুদ্র  ব্যাবসায়ী ছাড়া ছবি আপলোড করতে পারবেন না।  এই মর্মে গ্রহীত থাকলে নিচের বাটন টি প্রেস করুন।',
                style: smallBold,
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(B2BPage.routeName)
                      .then((value) {
                    Navigator.of(context).pop();
                  });
                },
                child: Card(
                  elevation: 15,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(Dimensions.RADIUS_LARGE)),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: double.infinity,
                    child: Text(
                      'Confirm',
                      style: smallBold,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }
}
