import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb_admin/Application/banner/banner_bloc.dart';
import 'package:glam_garb_admin/Domain/response_models/banner_model/banner_get_model/banner_get_model.dart';
import 'package:glam_garb_admin/Infrastructure/Services/banner/banner_repo.dart';
import 'package:glam_garb_admin/Infrastructure/Services/category/category_repo.dart';
import 'package:glam_garb_admin/Presentation/Screens/menu/view/banner/add_banner_screen.dart';
import 'package:glam_garb_admin/Presentation/Screens/menu/view/banner/widgets/banner_card_widget.dart';
import 'package:glam_garb_admin/Presentation/Screens/menu/view/coupons/add_coupon_screen.dart';
import 'package:glam_garb_admin/Presentation/Screens/menu/view/coupons/widgets/coupon_card_widget.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';

class BannerScreen extends StatefulWidget {
  const BannerScreen({Key? key}) : super(key: key);

  @override
  State<BannerScreen> createState() => _BannerScreenState();
}

class _BannerScreenState extends State<BannerScreen> {
  BannerRepo repo = BannerRepo();
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
                  BlocBuilder<BannerBloc, BannerState>(
                    builder: (context, state) {
                      return FutureBuilder<BannerGetModel>(
                        future: repo.getBanner(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const Center(
                                child: CircularProgressIndicator());
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else if (!snapshot.hasData ||
                              snapshot.data?.banner == null) {
                            return const Text('No categories found.');
                          } else {
                            final banner = snapshot.data!.banner!;
                            return ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: banner.length,
                              itemBuilder: (context, index) => GestureDetector(
                                onTap: () {
                                  // Navigate or do something with the selected category
                                },
                                child: Container(
                                    margin: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 8,
                                    ),
                                    child: BannerCardWidget(
                                        mainHead: banner[index].p1 ?? '',
                                        id: banner[index].id ?? "",
                                        parentContext: context,
                                        subHead1: banner[index].h1 ?? '',
                                        subHead2: banner[index].h2 ?? '',
                                        subHead3: banner[index].h3 ?? "",
                                        status: banner[index].status.toString(),
                                        description:
                                            banner[index].description ?? "",
                                        imageUrl: banner[index].image ?? '')),
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
              top: 650,
              left: 120,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddBannerScreen(),
                    ),
                  );
                },
                style: const ButtonStyle(
                  shadowColor: MaterialStatePropertyAll(Colors.white),
                  backgroundColor: MaterialStatePropertyAll(baseColor),
                  elevation: MaterialStatePropertyAll(10),
                ),
                child: const Text(
                  'Add Banner',
                  style: TextStyle(
                    fontSize: 17,
                    color: kwhite,
                    fontWeight: FontWeight.w800,
                  ),
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
