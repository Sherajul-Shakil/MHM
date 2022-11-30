// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../../utils/constants/color.dart';
import '../../utils/constants/dimsion.dart';
import '../../utils/constants/style.dart';
import 'constants/product_list.dart';
import 'widget/product_list_item.dart';

class ProductPage extends StatelessWidget {
  static const routeName = 'product';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text('Product'),
      ),
      body: ListView(
        padding: EdgeInsets.all(Dimensions.PADDING_SIZE_EXTRA_SMALL),
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 5),
            alignment: Alignment.center,
            height: 110,
            width: double.infinity,
            color: card2Color,
            child: Text(
              'Porro',
              style: verylargeNomalgrey,
            ),
          ),
          GridView.builder(
            primary: false,
            shrinkWrap: true,
            itemCount: productList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
            ),
            itemBuilder: (context, index) {
              return ProductisItem(
                index: index,
              );
            },
          )
        ],
      ),
    );
  }
}
