import 'package:flutter/material.dart';
import 'package:glam_garb_admin/Infrastructure/Services/auth/Auth_repo.dart';
import 'package:glam_garb_admin/Presentation/Screens/menu/view/brand/brand_screen.dart';
import 'package:glam_garb_admin/Presentation/Screens/menu/view/category/category_screen.dart';
import 'package:glam_garb_admin/Presentation/Screens/menu/widgets/logout_button_widget.dart';
import 'package:glam_garb_admin/Presentation/Screens/menu/widgets/menu_bar_widget.dart';
import 'package:glam_garb_admin/Presentation/Screens/menu/widgets/menu_list_tile.dart';
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
          MenuBarWidget(),
          SizedBox(
            height: 40,
          ),
          MenuListTile(
            icon: Icons.person_4,
            title: 'Users',
          ),
          kheight,
          MenuListTile(
            icon: Icons.branding_watermark,
            title: 'Brand',
            ontap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BrandScreen(),
                )),
          ),
          kheight,
          MenuListTile(
            icon: Icons.category,
            title: 'Category',
            ontap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CategoryScreen(),
                )),
          ),
          kheight,
          MenuListTile(icon: Icons.card_giftcard, title: 'Coupons'),
          kheight,
          MenuListTile(icon: Icons.screenshot, title: 'Banner'),
          kheight,
          SizedBox(
            height: 80,
          ),
          LogoutButtonWidget(repo: repo)
        ],
      ),
    );
  }
}
