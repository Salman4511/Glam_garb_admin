import 'package:flutter/material.dart';
import 'package:glam_garb_admin/Presentation/Screens/menu/view/brand/brand_screen.dart';
import 'package:glam_garb_admin/Presentation/Screens/menu/view/category/category_screen.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        // backgroundColor: kwhite,
        appBar: AppBar(
          backgroundColor: baseColor.shade200,
          automaticallyImplyLeading: false,
          title: const Column(
            children: [
              Text('Catalog Management',
                  style: TextStyle(fontFamily: 'Courier', color: kblackcolor)),
              // Text('Management',
              //     style: TextStyle(
              //         fontFamily: 'Courier',
              //         color: kwhite)),
            ],
          ),
          centerTitle: true,
          bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 0.5,
              labelColor: Colors.black,
              isScrollable: true,
              labelStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              unselectedLabelColor: kwhite,
              
              indicator: BoxDecoration(
                color: baseColor.shade400,
                borderRadius: BorderRadius.circular(15),
              ),
              tabs: const [
                Tab(
                  text: 'Catagory',
                ),
                Tab(
                  text: "Brand",
                ),
              ]),
        ),
        body: TabBarView(children: [CategoryScreen(), BrandScreen()]),
      ),
    );
  }
}
