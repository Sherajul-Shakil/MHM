// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhm/screens/category/controllers/product_con.dart';
import 'package:mhm/utils/constants/color.dart';
import '../../utils/constants/dimsion.dart';
import 'constant/category_model.dart';
import 'widget/category_item.dart';

class CategoryPage extends StatelessWidget {
  static const routeName = 'category';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor[200],
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: Text('Category'),
        ),
        body: GetBuilder<ProductController>(
            init: ProductController(),
            builder: (productCon) {
              return Scaffold(
                body: productCon.isLoading.value
                    ? const Center(
                        child: CircularProgressIndicator(
                        color: Colors.amber,
                      ))
                    : ListView.builder(
                        itemCount: productCon.productCat.data!.length,
                        itemBuilder: (context, index) {
                          final catData = productCon.productCat.data![index];
                          return Padding(
                            padding: const EdgeInsets.only(
                                bottom: Dimensions.PADDING_SIZE_EXTRA_SMALL),
                            child: CategoryLisItem(catM: catData),
                          );
                        },
                      ),
              );
            }));
  }
}
