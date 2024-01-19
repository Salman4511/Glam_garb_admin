import 'package:flutter/material.dart';
import 'package:glam_garb_admin/Presentation/Screens/menu/view/category/add_category_screen.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kblackcolor,
        body: SafeArea(
            child: Stack(children: [
          Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: kBackBtn),
                ],
              ),
            ],
          ),
          Positioned(
            top: 650,
            left: 120,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddCategory(),
                    ));
              },
              child: Text(
                'Add Category',
                style: TextStyle(
                    fontSize: 17, color: kwhite, fontWeight: FontWeight.w800),
              ),
              style: ButtonStyle(
                  shadowColor: MaterialStatePropertyAll(Colors.white),
                  backgroundColor: MaterialStatePropertyAll(Colors.amberAccent),
                  elevation: MaterialStatePropertyAll(10)),
            ),
          ),
        ])));
  }
}
