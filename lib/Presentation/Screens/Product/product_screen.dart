import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glam_garb_admin/Presentation/Screens/product/add_product.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblackcolor,
      body: SafeArea(
          child: Stack(
        children: [
          Column(
            children: [
              kheight20,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CupertinoSearchTextField(
                  placeholder: 'Search Product',
                  backgroundColor: Colors.grey,
                  placeholderStyle: TextStyle(),
                ),
              ),
            ],
          ),
          Positioned(
            top: 600,
            left: 120,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddProduct(),
                    ));
              },
              child: Text(
                'Add Product',
                style: TextStyle(
                    fontSize: 17, color: kwhite, fontWeight: FontWeight.w800),
              ),
              style: ButtonStyle(
                  shadowColor: MaterialStatePropertyAll(Colors.white),
                  backgroundColor: MaterialStatePropertyAll(Colors.amberAccent),
                  elevation: MaterialStatePropertyAll(10)),
            ),
          ),
        ],
      )),
    );
  }
}
