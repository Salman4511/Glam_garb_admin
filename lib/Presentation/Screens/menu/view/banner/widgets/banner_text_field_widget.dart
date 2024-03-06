import 'package:flutter/material.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';

class BannerTextFieldWidget extends StatefulWidget {
  final String labelText;
  final TextEditingController? textFieldController;
  final String helperText;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final void Function()? onTap;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final bool? readonly;
  const BannerTextFieldWidget({
    super.key,
    required this.labelText,
    this.textFieldController,
    required this.helperText,
    this.suffixIcon,
    this.keyboardType,
    this.onTap,
    this.floatingLabelBehavior,
    this.readonly,
  });

  @override
  State<BannerTextFieldWidget> createState() => _BannerTextFieldWidgetState();
}

class _BannerTextFieldWidgetState extends State<BannerTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: widget.readonly ?? false,
      style: const TextStyle(color: kblackcolor),
      onTap: widget.onTap,
      controller: widget.textFieldController,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
          floatingLabelBehavior: widget.floatingLabelBehavior,
          labelText: widget.labelText,
          suffixIcon: widget.suffixIcon,
          suffixIconColor: kwhite,
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          labelStyle: const TextStyle(color: Colors.grey),
          helperText: widget.helperText,
          helperStyle: const TextStyle(color: kblackcolor),
          fillColor: kwhite,
          filled: true),
    );
  }
}
