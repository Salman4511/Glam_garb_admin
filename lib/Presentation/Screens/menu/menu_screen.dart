import 'package:flutter/material.dart';
import 'package:glam_garb_admin/Infrastructure/Services/auth/Auth_repo.dart';
import 'package:glam_garb_admin/Presentation/Screens/menu/view/banner/banner_screen.dart';
import 'package:glam_garb_admin/Presentation/Screens/menu/view/category/category_screen.dart';
import 'package:glam_garb_admin/Presentation/Screens/menu/view/coupons/coupon_screen.dart';
import 'package:glam_garb_admin/Presentation/Screens/menu/view/users/users_screen.dart';
import 'package:glam_garb_admin/Presentation/Screens/menu/widgets/logout_button_widget.dart';
import 'package:glam_garb_admin/Presentation/Screens/menu/widgets/menu_bar_widget.dart';
import 'package:glam_garb_admin/Presentation/Screens/menu/widgets/menu_list_tile.dart';
import 'package:glam_garb_admin/Presentation/Screens/menu/widgets/policy_dialog.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';

class MenuScreen extends StatefulWidget {
  MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  late final AuthRepo repo = AuthRepo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblackcolor,
      body: Column(
        children: [
          const MenuBarWidget(),
          const SizedBox(
            height: 40,
          ),
          MenuListTile(
            icon: Icons.person_4,
            title: 'Users',
            ontap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const UsersScreen(),
                )),
          ),
          kheight,
          MenuListTile(
            icon: Icons.card_giftcard,
            title: 'Coupons',
            ontap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CouponScreen(),
                )),
          ),
          kheight,
          MenuListTile(
            icon: Icons.screenshot,
            title: 'Banner',
            ontap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BannerScreen(),
                )),
          ),
          kheight,
          MenuListTile(
              icon: Icons.branding_watermark,
              title: 'Privacy Policy',
              ontap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return privacydialoge(mdFileName: 'privacy_policy.md');
                    });
              }),
          kheight,
          // MenuListTile(
          //   icon: Icons.category,
          //   title: 'Terms And Conditions',
          //   ontap: () => Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => const CategoryScreen(),
          //       )),
          // ),
          kheight,
          const SizedBox(
            height: 80,
          ),
          LogoutButtonWidget(repo: repo)
        ],
      ),
    );
  }
}
