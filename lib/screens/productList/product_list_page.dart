// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/material.dart';
import 'package:mhm/screens/productList/widget/product_list_item.dart';
import 'package:mhm/utils/constants/color.dart';
import 'constant/productI_list_model.dart';

class ProductListPage extends StatelessWidget {
  static const routeName = 'Product-list';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text('Product List'),
      ),
      body: ListView.builder(
        itemCount: productListList.length,
        itemBuilder: (context, index) {
          final productM = productListList[index];
          return ProductListItem(
            productM: productM,
          );
        },
      ),
    );
  }
}
