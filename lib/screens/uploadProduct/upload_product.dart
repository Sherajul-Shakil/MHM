// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mhm/screens/home/home_page.dart';
import '../../utils/constants/color.dart';
import '../../utils/constants/dimsion.dart';
import '../../utils/constants/style.dart';
import '../../utils/my_textField.dart';

class UploadProductPage extends StatefulWidget {
  static const routeName = 'upload';

  @override
  State<UploadProductPage> createState() => _UploadProductPageState();
}

class _UploadProductPageState extends State<UploadProductPage> {
  @override
  Widget build(BuildContext context) {
    final items = ['Sports', 'Food', 'Cloth', 'Laptop', 'Smart Phone', 'Others'];
    String? dwValue;
    final titleController = TextEditingController();
    final priceController = TextEditingController();
    final descriptonController = TextEditingController();
    final specificationController = TextEditingController();

    return Scaffold(
      backgroundColor: bgColor[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text('Upload Product'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 300,
              width: double.infinity,
              color: Colors.white,
              child: ClipRRect(
                child: Text(
                  'Choose Product Image',
                  style: smallBold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
              child: Column(
                children: [
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey.withOpacity(0.4), width: 3),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          hint: Text(
                            'Select Category',
                            style: smallBold,
                          ),
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.grey,
                          ),
                          isExpanded: true,
                          value: dwValue,
                          items: items
                              .map(
                                (item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: smallBold,
                                  ),
                                ),
                              )
                              .toList(),
                          onChanged: (value) {
                            setState(() {
                              dwValue = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  MyTextField(
                    controller: titleController,
                    hintText: 'Enter Product Title',
                    elevation: false,
                    padding: false,
                  ),
                  SizedBox(height: 5),
                  MyTextField(
                    controller: priceController,
                    hintText: 'Enter Product Price',
                    elevation: false,
                    padding: false,
                  ),
                  SizedBox(height: 5),
                  MyTextField(
                    controller: specificationController,
                    hintText: 'Enter Product Specification',
                    elevation: false,
                    padding: false,
                  ),
                  SizedBox(height: 5),
                  MyTextField(
                    controller: descriptonController,
                    hintText: 'Descripton',
                    elevation: false,
                    padding: false,
                    maxLine: 10,
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacementNamed(HomePage.routeName);
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
                          'Upload',
                          style: smallNormal,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
