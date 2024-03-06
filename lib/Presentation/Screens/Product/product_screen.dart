import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb_admin/Application/product/product_bloc.dart';
import 'package:glam_garb_admin/Domain/response_models/product_model/product_get_model/product_get_model.dart';
import 'package:glam_garb_admin/Infrastructure/Services/Product/product_repo.dart';
import 'package:glam_garb_admin/Presentation/Screens/product/add_product.dart';
import 'package:glam_garb_admin/Presentation/Screens/product/widgets/product_tile_widget.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    ProductRepoo repo = ProductRepoo();
    return Scaffold(
      // backgroundColor: kblackcolor,
      body: SafeArea(
          child: Stack(
        children: [
          BlocBuilder<ProductBloc, ProductState>(
            builder: (context, state) {
              return FutureBuilder<ProductGetModel>(
                future: repo.getProducts(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else if (!snapshot.hasData ||
                      snapshot.data?.products == null) {
                    return const Text('No categories found.');
                  } else {
                    final products = snapshot.data!.products!;

                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          kheight80,
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: products.length,
                            itemBuilder: (context, index) => GestureDetector(
                              onTap: () {
                                // Navigate or do something with the selected category
                              },
                              child: Container(
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 8,
                                  ),
                                  child: ProductCard(
                                    name: products[index].productName ?? "",
                                    description:
                                        products[index].description ?? "",
                                    id: products[index].id ?? '',
                                    imageUrl:
                                        products[index].images![1].url ?? '',
                                    isActive: products[index].active ?? true,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                },
              );
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
              style: ButtonStyle(
                  shadowColor: MaterialStatePropertyAll(Colors.white),
                  backgroundColor: MaterialStatePropertyAll(baseColor.shade800),
                  elevation: MaterialStatePropertyAll(10)),
              child: const Text(
                'Add Product',
                style: TextStyle(
                    fontSize: 17, color: kwhite, fontWeight: FontWeight.w800),
              ),
            ),
          ),
          Column(
            children: [
              kheight20,
              Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Product Details',
                    style: ktextStyleForAppBar,
                  )),
            ],
          ),
        ],
      )),
    );
  }
}
