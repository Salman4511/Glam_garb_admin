import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb_admin/Application/cateory/category_bloc.dart';
import 'package:glam_garb_admin/Domain/response_models/category_model/category_get_model/category_get_model.dart';
import 'package:glam_garb_admin/Infrastructure/Services/category/category_repo.dart';
import 'package:glam_garb_admin/Presentation/Screens/menu/view/category/add_category_screen.dart';
import 'package:glam_garb_admin/Presentation/Screens/menu/view/category/widgets/category_tile.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  CategoryRepo repo = CategoryRepo();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: kblackcolor,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  kheight60,
                  BlocBuilder<CategoryBloc, CategoryState>(
                    builder: (context, state) {
                      return FutureBuilder<CategoryGetModel>(
                        future: repo.getCategories(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const Center(
                                child: CircularProgressIndicator());
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else if (!snapshot.hasData ||
                              snapshot.data?.category == null) {
                            return const Text('No categories found.');
                          } else {
                            final categories = snapshot.data!.category!;
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
                                  child: CategoryCard(
                                    isActive: categories[index].active ?? false,
                                    categoryName:
                                        categories[index].categoryName ??
                                            'Unnamed Category',
                                    id: categories[index].sId ?? '',
                                    parentContext: context,
                                    catOffer:
                                        categories[index].categoryOffer ?? 0,
                                    minAmount: categories[index].minAmount ?? 0,
                                    maxDiscount:
                                        categories[index].maxDiscount ?? 0,
                                    date: categories[index].expiry ?? '',
                                  ),
                                ),
                              ),
                            );
                          }
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            Positioned(
              top: 500,
              left: 120,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddCategory(),
                    ),
                  );
                },
                style: const ButtonStyle(
                  shadowColor: MaterialStatePropertyAll(Colors.white),
                  backgroundColor: MaterialStatePropertyAll(baseColor),
                  elevation: MaterialStatePropertyAll(10),
                ),
                child: const Text(
                  'Add Category',
                  style: TextStyle(
                    fontSize: 17,
                    color: kwhite,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
            Column(),
          ],
        ),
      ),
    );
  }
}
