// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mhm/screens/gift/gift_page.dart';
import 'package:mhm/screens/home/constants/grid_list_item_model.dart';
import 'package:mhm/utils/constants/color.dart';
import 'package:mhm/utils/constants/style.dart';
import '../../utils/constants/dimsion.dart';
import '../../utils/main_drawer.dart';
import '../emergency/emergency_page.dart';
import 'widget/grid_list_item.dart';

class HomePage extends StatelessWidget {
  static const routeName = 'home';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: MainDrawer(),
      backgroundColor: bgColor[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text('Home'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            height: size.height * 0.33,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: size.height * 0.16,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey.withOpacity(0.5), width: 3),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('images/coin.png',
                                    height: 22, width: 22),
                                SizedBox(width: 5),
                                Text(
                                  '0.00',
                                  style: verylargeBold,
                                ),
                              ],
                            ),
                            Text(
                              'Available',
                              style: smallNormal,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListTile(
                        onTap: () {
                          Navigator.of(context).pushNamed(GiftPage.routeName);
                        },
                        title: Text(
                          'Surprice Gift',
                          style: smallBold,
                        ),
                        leading: Image.asset(
                          'images/gift.png',
                          height: 25,
                          width: 25,
                        ),
                      ),
                      Divider(),
                      ListTile(
                          onTap: () => Navigator.of(context)
                              .pushNamed(EmergencyPage.routeName),
                          title: Text(
                            'Emergency',
                            style: smallBold,
                          ),
                          leading: Icon(
                            Icons.phone,
                            color: Colors.red,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.grey[200],
            height: size.height * 0.01,
          ),
          Container(
            color: Colors.white,
            height: size.height * 0.10,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: Dimensions.PADDING_SIZE_DEFAULT),
              child: Row(
                children: [
                  Image.asset(
                    'images/bkash.png',
                    height: 40,
                    width: 35,
                  ),
                  SizedBox(width: 10),
                  Image.asset(
                    'images/nagad2.png',
                    height: 40,
                    width: 35,
                  ),
                  SizedBox(width: 10),
                  Image.asset(
                    'images/upay.png',
                    height: 35,
                    width: 35,
                  ),
                  SizedBox(width: 10),
                  Image.asset(
                    'images/bank.png',
                    height: 40,
                    width: 35,
                  ),
                  Spacer(),
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(16)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        'Payment',
                        style: smallBold,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            color: Colors.grey[200],
            height: size.height * 0.01,
          ),
          Container(
            color: Colors.white,
            height: size.height * 0.36,
            child: GridView.builder(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.PADDING_SIZE_DEFAULT,
                  vertical: Dimensions.PADDING_SIZE_DEFAULT),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              itemCount: gridListItemModel.length,
              itemBuilder: (context, index) {
                final model = gridListItemModel[index];
                return GridLisItem(
                  model: model,
                  size: size,
                  index: index,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
