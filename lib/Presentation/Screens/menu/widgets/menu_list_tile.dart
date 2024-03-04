import 'package:flutter/material.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';

class MenuListTile extends StatefulWidget {
  const MenuListTile({
    super.key,
    required this.icon,
    required this.title,
    this.ontap,
  });
  final IconData icon;
  final String title;
  final Function()? ontap;

  @override
  State<MenuListTile> createState() => _MenuListTileState();
}

class _MenuListTileState extends State<MenuListTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        title: Text(
          widget.title,
          style: ktextstyleformenu,
        ),
        leading: Icon(
          widget.icon,
          color: kblackcolor,
          size: 32,
        ),
        onTap: widget.ontap,
      ),
    );
  }
}
