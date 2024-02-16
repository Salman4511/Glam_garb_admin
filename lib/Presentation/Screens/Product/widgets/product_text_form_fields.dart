import 'package:flutter/material.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';

class ProductTextFieldWidget extends StatelessWidget {
  const ProductTextFieldWidget({
    super.key,
    required this.title,
    this.controller,
    this.validator,
    this.onTap,
    this.keyboardType,
    this.maxlines,
  });
  final String title;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function()? onTap;
  final TextInputType? keyboardType;
  final int? maxlines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxlines,
      keyboardType: keyboardType,
      onTap: onTap,
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 16.0, top: 8),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(25),
          ),
          alignLabelWithHint: true,
          floatingLabelStyle: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.blue),
          labelText: title,
          labelStyle: TextStyle(color: Colors.grey),
          fillColor: kwhite,
          filled: true),
    );
  }
}
