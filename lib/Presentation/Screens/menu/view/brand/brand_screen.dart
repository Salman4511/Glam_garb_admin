import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb_admin/Application/brand/brand_bloc.dart';
import 'package:glam_garb_admin/Domain/response_models/brand_model/brand_get_model/brand_get_model.dart';
import 'package:glam_garb_admin/Infrastructure/Services/brand/brand_repo.dart';
import 'package:glam_garb_admin/Presentation/Screens/menu/view/brand/add_brand_screen.dart';
import 'package:glam_garb_admin/Presentation/Screens/menu/view/brand/widgets/brand_card_widget.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';

class BrandScreen extends StatelessWidget {
  const BrandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BrandRepo repo = BrandRepo();

    return Scaffold(
      backgroundColor: kblackcolor,
      body: SafeArea(
        child: Stack(
          children: [
            BlocBuilder<BrandBloc, BrandState>(
              builder: (context, state) {
                return FutureBuilder<BrandGetModel>(
                  // Replace String with your Brand model
                  future: repo
                      .getBrands(), // Update this method based on your API call
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator());
                    } else if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    } else if (!snapshot.hasData ||
                        snapshot.data?.brands == null) {
                      return Text('No brands found.');
                    } else {
                      final brands = snapshot.data!;
                      return SingleChildScrollView(
                        child: Column(
                          children: [
                            kheight60,
                            GridView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisSpacing: 20,
                                crossAxisCount: 2,
                              ),
                              itemCount: brands.brands!.length,
                              itemBuilder: (context, index) => GestureDetector(
                                onTap: () {
                                  // Handle brand item tap
                                },
                                child: BrandCard(
                                  width: 180,
                                  bName: brands.brands![index].brandName ?? "",
                                  image: brands.brands![index].image ?? "",
                                  id: brands.brands![index].sId ?? "",
                                ),
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
              top: 650,
              left: 120,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddBrand(),
                    ),
                  );
                },
                child: Text(
                  'Add Brand',
                  style: TextStyle(
                    fontSize: 17,
                    color: kwhite,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                style: ButtonStyle(
                  shadowColor: MaterialStatePropertyAll(Colors.white),
                  backgroundColor: MaterialStatePropertyAll(Colors.amberAccent),
                  elevation: MaterialStatePropertyAll(10),
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: kBackBtn,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
