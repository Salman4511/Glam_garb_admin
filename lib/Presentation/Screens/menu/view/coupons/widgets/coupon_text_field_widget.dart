import 'package:flutter/material.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';

class CouponTextFieldWidget extends StatefulWidget {
  final String labelText;
  final TextEditingController? textFieldController;
  final String helperText;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final void Function()? onTap;
  const CouponTextFieldWidget({
    super.key,
    required this.labelText,
    this.textFieldController,
    required this.helperText,
    this.suffixIcon,
    this.keyboardType,
    this.onTap,
  });

  @override
  State<CouponTextFieldWidget> createState() => _CouponTextFieldWidgetState();
}

class _CouponTextFieldWidgetState extends State<CouponTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: kwhite),
      onTap: widget.onTap,
      controller: widget.textFieldController,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        labelText: widget.labelText,
        suffixIcon: widget.suffixIcon,
        suffixIconColor: kwhite,
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        labelStyle: const TextStyle(color: Colors.grey),
        helperText: widget.helperText,
        helperStyle: const TextStyle(color: kwhite),
      ),
    );
  }
}
