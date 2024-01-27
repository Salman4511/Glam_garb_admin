import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glam_garb_admin/Domain/response_models/product_model/product_get_model/product_get_model.dart';
import 'package:glam_garb_admin/Infrastructure/Services/product/product_repo.dart';
import 'package:glam_garb_admin/Presentation/Screens/product/add_product.dart';
import 'package:glam_garb_admin/Presentation/Screens/product/widgets/product_tile_widget.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
   ProductRepo repo = ProductRepo();
    return Scaffold(
      backgroundColor: kblackcolor,
      body: SafeArea(
          child: Stack(
        children: [
          const Column(
            children: [
              kheight20,
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CupertinoSearchTextField(
                  placeholder: 'Search Product',
                  backgroundColor: Colors.grey,
                  placeholderStyle: TextStyle(),
                ),
              ),
            ],
          ),
         FutureBuilder<ProductGetModel>(
            future: repo.,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else if (!snapshot.hasData || snapshot.data?.products == null) {
                return const Text('No categories found.');
              } else {
                final categories = snapshot.data!.products!;
                return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: categories.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      // Navigate or do something with the selected category
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 8,
                      ),
                      child: ProductTile(name: name, description: description, imageUrl: imageUrl)
                    ),
                  ),
                );
              }
            },
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
