import 'package:flutter/material.dart';
import 'package:glam_garb_admin/Presentation/Screens/Product/widgets/product_text_form_fields.dart';

class RowTextFormField extends StatelessWidget {
  const RowTextFormField({
    super.key,
    required this.title1,
    required this.title2,
  });
  final String title1;
  final String title2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ProductTextFieldWidget(
            title: title1,
            keyboardType: TextInputType.text,
          ),
        ),
        SizedBox(width: 16), // Adjust spacing between fields
        Expanded(
          child: ProductTextFieldWidget(
            title: title2,
            keyboardType: TextInputType.text,
          ),
        ),
      ],
    );
  }
}
