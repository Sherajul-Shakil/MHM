// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mhm/screens/home/home_page.dart';
import 'package:mhm/utils/my_textField.dart';
import '../../utils/constants/color.dart';
import '../../utils/constants/dimsion.dart';
import '../../utils/constants/style.dart';

class B2BPage extends StatelessWidget {
  static const routeName = '/b2b';

  final b2bControlle = TextEditingController();
  final nameControlle = TextEditingController();
  final phoneControlle = TextEditingController();
  final locationControlle = TextEditingController();
  final passwordControlle = TextEditingController();
  final conformPasswordControlle = TextEditingController();
  final emailControlle = TextEditingController();
  final nidControlle = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text('Entrepreneur (B2B)'),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  MyTextField(
                    controller: nameControlle,
                    hintText: 'Full Name',
                    elevation: true,
                    padding: true,
                  ),
                  MyTextField(
                    controller: emailControlle,
                    hintText: 'Email',
                    elevation: true,
                    padding: true,
                  ),
                  MyTextField(
                    controller: nidControlle,
                    hintText: 'NID Number',
                    elevation: true,
                    padding: true,
                  ),
                  MyTextField(
                    controller: phoneControlle,
                    hintText: 'Phone No.',
                    elevation: true,
                    padding: true,
                  ),
                  MyTextField(
                    controller: locationControlle,
                    hintText: 'Location',
                    elevation: true,
                    padding: true,
                  ),
                  MyTextField(
                    controller: passwordControlle,
                    hintText: 'Password',
                    elevation: true,
                    padding: true,
                  ),
                  MyTextField(
                    controller: conformPasswordControlle,
                    hintText: 'Confirm Password',
                    elevation: true,
                    padding: true,
                  ),
                  InkWell(
                    child: SizedBox(
                      height: 170,
                      width: 250,
                      child: Card(
                          elevation: 15,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  Dimensions.RADIUS_EXTRA_LARGE)),
                          child: Icon(
                            Icons.image,
                            size: 150,
                          )),
                    ),
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacementNamed(HomePage.routeName)
                          .then((value) {
                        Navigator.of(context).pop();
                      });
                    },
                    child: Card(
                      elevation: 15,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(Dimensions.RADIUS_DEFAULT)),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 120,
                        child: Text(
                          'Register',
                          style: smallNormal,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
