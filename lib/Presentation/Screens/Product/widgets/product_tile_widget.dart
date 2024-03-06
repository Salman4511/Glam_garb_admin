import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb_admin/Application/product/product_bloc.dart';
import 'package:glam_garb_admin/Domain/response_models/product_model/product_get_model/image.dart';
import 'package:glam_garb_admin/Domain/response_models/product_model/product_get_model/product.dart';
import 'package:glam_garb_admin/Presentation/Screens/product/edit_product.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';

class ProductCard extends StatefulWidget {
  final String name;
  final String description;
  final String id;
  final String imageUrl;
  final String? brand;
  final String? category;
  final int? regularPrice;
  final int? salePrice;
  final int? offerPrice;
  final String? gender;
  final List<String>? color;
  final List<Images>? images;
  final bool isActive;

  const ProductCard({
    Key? key,
    required this.name,
    required this.description,
    required this.id,
    required this.imageUrl,
    this.brand,
    this.category,
    this.regularPrice,
    this.salePrice,
    this.offerPrice,
    this.gender,
    this.color,
    required this.isActive,
    this.images,
  }) : super(key: key);

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    var baseUrl = 'https://www.elegancestores.online/admin/assets/imgs/products/';

    return Card(
      color: baseColor.shade100,
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: InkWell(
        // onTap: () {
        //   // Handle tap event
        // },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // You can customize the height and aspect ratio of the image container

            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(baseUrl + widget.imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                    height: 80,
                    width: 80,
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.name,
                          style: ktextstyle3,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          widget.description,
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    children: [
                      ElevatedButton.icon(
                        icon: const Icon(Icons.edit,color: kwhite,),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EditProduct(
                                    initialProduct: Product(
                                  id: widget.id,
                                  productName: widget.name,
                                  description: widget.description,
                                  brand: widget.brand,
                                  category: widget.category,
                                  regularPrice: widget.regularPrice,
                                  salePrice: widget.salePrice,
                                  color: widget.color,
                                )),
                              ));
                        },
                        label: const Text('Edit',style: TextStyle(color: kwhite),),
                        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(baseColor.shade400)),
                      ),
                      ElevatedButton.icon(
                        icon: const Icon(Icons.delete,color: kwhite,),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                title: Text("Delete this item?"),
                                content: Text("This action cannot be undone."),
                                actions: <Widget>[
                                  ElevatedButton(
                                      onPressed: () =>
                                          Navigator.pop(context, false),
                                      child: Text("Cancel",style: TextStyle(color: kwhite),),
                        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(baseColor.shade400)),

                                      ),
                                  BlocConsumer<ProductBloc, ProductState>(
                                    listener: (context, state) {
                                      // TODO: implement listener
                                    },
                                    builder: (context, state) {
                                      return ElevatedButton.icon(
                                        icon: const Icon(Icons.delete,color: kwhite,),
                                        onPressed: () {
                                          widget.isActive
                                              ? context.read<ProductBloc>().add(
                                                    ProductEvent.deleteProduct(
                                                        widget.id),
                                                  )
                                              : ScaffoldMessenger.of(context)
                                                  .showSnackBar(const SnackBar(
                                                  content:
                                                      Text('Already Blocked'),
                                                  backgroundColor: Colors.red,
                                                ));
                                          // ProductRepoo repo = ProductRepoo();
                                          // repo.deleteProduct(widget.id);
                                          print(widget.id);
                                        },
                                        label: Text(widget.isActive
                                            ? 'Delete'
                                            : 'Blocked',style: TextStyle(color: kwhite),),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                                    baseColor.shade400)),

                                      );
                                    },
                                  )
                                ]),
                          );
                        },
                        label: Text(widget.isActive ? 'Delete' : 'Blocked',style: TextStyle(color: kwhite),),
                             style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(baseColor.shade400)),
                 
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
