// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:mhm/screens/emergency/emergency_page.dart';
import 'package:mhm/screens/product/product_page.dart';
import '../utils/constants/color.dart';
import '../utils/main_drawer.dart';
import 'home/home_page.dart';

class ShowBottomNavScreen extends StatefulWidget {
  static const routeName = 'btmNav';

  @override
  State<ShowBottomNavScreen> createState() => _ShowBottomNavScreenState();
}

class _ShowBottomNavScreenState extends State<ShowBottomNavScreen> {
  int index = 0;
  final screens = [
    HomePage(),
    EmergencyPage(),
    Center(
      child: Text('My Offer'),
    ),
    MainDrawer(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.grey.withOpacity(0.3),
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ),
        child: NavigationBar(
          height: 65,
          backgroundColor: Colors.white,
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: [
            NavigationDestination(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                label: "Home"),
            NavigationDestination(
                icon: Icon(
                  Icons.call,
                  color: Colors.black,
                ),
                label: "Emergency"),
            NavigationDestination(
                icon: Image.asset('images/myOffer.png', height: 20, width: 20, color: Colors.black,),
                label: "My Offer"),
            NavigationDestination(
                icon: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                label: "Account"),
          ],
        ),
      ),
    );
  }
}
