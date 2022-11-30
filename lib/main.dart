// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mhm/provider/call_provider.dart';
import 'package:mhm/screens/spalash_page.dart';
import 'package:provider/provider.dart';
import 'screens/auth/login-Page.dart';
import 'screens/auth/registatn.dart';
import 'screens/b2b/b2b_page.dart';
import 'screens/bottom_nav_page.dart';
import 'screens/category/category_page.dart';
import 'screens/donate/donate_page.dart';
import 'screens/donateList/donate_list.dart';
import 'screens/emergency/emergency_page.dart';
import 'screens/foodCategory/food_category_page.dart';
import 'screens/foodDetails/food_details_page.dart';
import 'screens/foodList/food_list_page.dart';
import 'screens/gift/gift_page.dart';
import 'screens/home/home_page.dart';
import 'screens/product/product_page.dart';
import 'screens/productDetails/product_details_page.dart';
import 'screens/productList/product_list_page.dart';
import 'screens/uploadProduct/upload_product.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CallProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: SpalashPage.routeName,
      routes: {
        SpalashPage.routeName: (context) => SpalashPage(),
        RegistationPage.routeName: (context) => RegistationPage(),
        LogInPage.routeName: (context) => LogInPage(),
        B2BPage.routeName: (context) => B2BPage(),
        HomePage.routeName: (context) => HomePage(),
        ShowBottomNavScreen.routeName: (context) => ShowBottomNavScreen(),
        GiftPage.routeName: (context) => GiftPage(),
        CategoryPage.routeName: (context) => CategoryPage(),
        ProductPage.routeName: (context) => ProductPage(),
        DonatePage.routeName: (context) => DonatePage(),
        DonateListPage.routeName: (context) => DonateListPage(),
        EmergencyPage.routeName: (context) => EmergencyPage(),
        ProductDetailsPage.routeName: (context) => ProductDetailsPage(),
        ProductListPage.routeName: (context) => ProductListPage(),
        FoodCategoryPage.routeName: (context) => FoodCategoryPage(),
        FoodListPage.routeName: (context) => FoodListPage(),
        FoodDetailsPage.routeName: (context) => FoodDetailsPage(),
        UploadProductPage.routeName: (context) => UploadProductPage(),
      },
    );
  }
}
