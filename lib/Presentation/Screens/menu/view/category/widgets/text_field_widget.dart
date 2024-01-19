import 'package:flutter/material.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({
    super.key,
    required this.title,
    required this.controller,
    this.validator,
    this.onTap,
    this.keyboardType,
  });
  final String title;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final void Function()? onTap;
  final TextInputType? keyboardType;

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.keyboardType,
      onTap: widget.onTap,
      validator: widget.validator,
      controller: widget.controller,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(25),
          ),
          labelText: widget.title,
          labelStyle: TextStyle(color: Colors.grey),
          fillColor: kwhite,
          filled: true),
    );
  }
}
