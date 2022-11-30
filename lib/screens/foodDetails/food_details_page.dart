// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mhm/utils/constants/color.dart';
import 'package:mhm/utils/constants/style.dart';

class FoodDetailsPage extends StatelessWidget {
  static const routeName = 'food-details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text('Food Details'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  color: Colors.white,
                  child: ClipRRect(
                    child: Image.asset('images/product.png'),
                  ),
                ),
                SizedBox(height: 2),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: EdgeInsets.all(12),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sonpapri Small Size Jar',
                          style: mediamNormal,
                        ),
                        SizedBox(height: 15),
                        Text(
                          '৳ 99',
                          style: mediamBold,
                        ),
                        SizedBox(height: 3),
                        Divider(
                          color: Colors.black38,
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            SizedBox(width: 10),
                            Text(
                              '4/5',
                              style: mediamNormal,
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Divider(
                          color: Colors.black38,
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(
                              Icons.message,
                              color: Colors.black54,
                            ),
                            SizedBox(width: 10),
                            Text(
                              '64 comments',
                              style: mediamNormal,
                            ),
                            Spacer(),
                            Icon(Icons.arrow_right)
                          ],
                        ),
                        SizedBox(height: 5),
                        Divider(color: Colors.black38),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              color: Colors.black54,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Bondhon store',
                              style: smallBold,
                            ),
                            SizedBox(width: 10),
                            Container(
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text(
                                '88% positive review',
                                style: verysmallBold,
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.arrow_right)
                          ],
                        ),
                        SizedBox(height: 5),
                        Divider(color: Colors.black38),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        SizedBox(height: 2),
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: Text(
                                'Specification',
                                style: verysmallBoldgrey,
                              ),
                            ),
                            Text(
                              'Brand, Box details',
                              style: verysmallBold,
                            ),
                            Spacer(),
                            Icon(Icons.arrow_right)
                          ],
                        ),
                        SizedBox(height: 5),
                        Divider(color: Colors.black38),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: Text(
                                'Delivery',
                                style: verysmallBoldgrey,
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Brand, Box details Brand, Box details Brand, Box details Brand, Box details Brand, Box details ',
                                    style: verysmallBold,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Standart delivery, 5-9 days  70',
                                    style: verysmallBold,
                                  ),
                                ],
                              ),
                            ),
                            Icon(Icons.arrow_right)
                          ],
                        ),
                        SizedBox(height: 5),
                        Divider(color: Colors.black38),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: Text(
                                'Service',
                                style: verysmallBoldgrey,
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '7 days return',
                                    style: verysmallBold,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'No worenty',
                                    style: verysmallBold,
                                  ),
                                ],
                              ),
                            ),
                            Icon(Icons.arrow_right)
                          ],
                        ),
                        SizedBox(height: 5),
                        Divider(color: Colors.black38),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: Text(
                                'Courier',
                                style: verysmallBoldgrey,
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Mirpur 10, Dhaka',
                                    style: verysmallBold,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                            Icon(Icons.arrow_right)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 120,
                  color: Colors.grey.withOpacity(0.4),
                  child: Text(
                    'Buy Now',
                    style: smallBold,
                  ),
                ),
                SizedBox(width: 15),
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 120,
                  color: Colors.grey.withOpacity(0.4),
                  child: Text(
                    'Add to Cart',
                    style: smallBold,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
