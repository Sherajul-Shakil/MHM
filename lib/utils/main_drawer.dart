// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, must_be_immutable, unused_local_variable, unnecessary_null_comparison, prefer_if_null_operators

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhm/core/network_helper/network_helper.dart';
import 'package:mhm/screens/product/product_page.dart';
import '../screens/donate/donate_page.dart';
import '../screens/donateList/donate_list.dart';

class MainDrawer extends StatelessWidget {
  NetworkHelper networkHelper = Get.put(NetworkHelper());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(25),
          topRight: Radius.circular(25),
        )),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 270,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(25))),
                ),
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        height: 130,
                        width: 130,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '${networkHelper.userName}',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
            Card(
              elevation: 3,
              child: ListTile(
                onTap: () {
                  Navigator.of(context).pushNamed(DonatePage.routeName);
                },
                title: Text('Donate'),
                leading: Icon(Icons.done),
              ),
            ),
            Card(
              elevation: 3,
              child: ListTile(
                onTap: () {
                  Navigator.of(context).pushNamed(DonateListPage.routeName);
                },
                title: Text('Donate List'),
                leading: Icon(Icons.done),
              ),
            ),
            Card(
              elevation: 3,
              child: ListTile(
                onTap: () {
                  Navigator.of(context).pushNamed(ProductPage.routeName);
                },
                title: Text('Shop'),
                leading: Icon(Icons.shop),
              ),
            ),
            Card(
              elevation: 3,
              child: ListTile(
                onTap: () {},
                title: Text('Wallet'),
                leading: Image.asset(
                  'images/wallet.png',
                  height: 25,
                  width: 25,
                  color: Colors.grey,
                ),
              ),
            ),
            Card(
              elevation: 3,
              child: ListTile(
                title: Text('Monthly User'),
                leading: Icon(Icons.person),
              ),
            ),
            Card(
              elevation: 3,
              child: ListTile(
                title: Text('LogOut'),
                leading: Icon(Icons.logout),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
