import 'package:flutter/material.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var dummyimg =
        'https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/18659986/2022/6/7/460b2205-9f40-4e8c-aa4b-527d27fd0f4a1654605536274Dresses1.jpg';
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 7),
      width: 130,
      height: 250,
      decoration: BoxDecoration(
          borderRadius: kradius,
          image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(dummyimg))),
    );
  }
}
