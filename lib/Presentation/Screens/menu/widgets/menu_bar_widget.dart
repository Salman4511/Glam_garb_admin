import 'package:flutter/material.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';

class MenuBarWidget extends StatelessWidget {
  const MenuBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      // color: kwhite,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://img.freepik.com/free-photo/red-light-round-podium-black-background-mock-up_43614-950.jpg?size=626&ext=jpg&ga=GA1.1.1091257421.1705122808&semt=sph'))),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'You Are Welcome',
            style: TextStyle(
                fontSize: 25, color: kwhite, fontWeight: FontWeight.bold),
          ),
          Text(
            'Admin',
            style: TextStyle(
              fontSize: 25,
              color: kwhite,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}
