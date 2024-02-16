import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb_admin/Application/coupon/coupon_bloc.dart';
import 'package:glam_garb_admin/Domain/response_models/category_model/category_get_model/category_get_model.dart';
import 'package:glam_garb_admin/Domain/response_models/coupon_model/coupon_get_model/coupon_get_model.dart';
import 'package:glam_garb_admin/Infrastructure/Services/category/category_repo.dart';
import 'package:glam_garb_admin/Infrastructure/Services/coupon/coupon_repo.dart';
import 'package:glam_garb_admin/Presentation/Screens/menu/view/coupons/add_coupon_screen.dart';
import 'package:glam_garb_admin/Presentation/Screens/menu/view/coupons/widgets/coupon_card_widget.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';

class CouponScreen extends StatefulWidget {
  const CouponScreen({Key? key}) : super(key: key);

  @override
  State<CouponScreen> createState() => _CouponScreenState();
}

class _CouponScreenState extends State<CouponScreen> {
  CouponRepo repo = CouponRepo();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblackcolor,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  kheight60,
                  BlocBuilder<CouponBloc, CouponState>(
                    builder: (context, state) {
                      return FutureBuilder<CouponGetModel>(
                        future: repo.getCoupons(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const Center(
                                child: CircularProgressIndicator());
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else if (!snapshot.hasData ||
                              snapshot.data?.couponData == null) {
                            return const Text('No categories found.');
                          } else {
                            final coupon = snapshot.data!.couponData!;
                            return ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: coupon.length,
                              itemBuilder: (context, index) => GestureDetector(
                                onTap: () {
                                  // Navigate or do something with the selected category
                                },
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 8,
                                  ),
                                  child: CouponCardWidget(
                                    date: coupon[index].expiry ?? '',
                                    couponName: coupon[index].code ?? '',
                                    id: coupon[index].id ?? '',
                                    parentContext: context,
                                    discount: coupon[index].discount ?? 0,
                                    minAmount: coupon[index].minimumAmount ?? 0,
                                    maxAmonut: coupon[index].maximumAmount ?? 0,
                                    description:
                                        coupon[index].description ?? '',
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
              top: 650,
              left: 120,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddCouponScreen(),
                    ),
                  );
                },
                style: const ButtonStyle(
                  shadowColor: MaterialStatePropertyAll(Colors.white),
                  backgroundColor: MaterialStatePropertyAll(Colors.amberAccent),
                  elevation: MaterialStatePropertyAll(10),
                ),
                child: const Text(
                  'Add Coupon',
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
