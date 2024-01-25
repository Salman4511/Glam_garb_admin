import 'package:flutter/material.dart';
import 'package:glam_garb_admin/Presentation/Screens/Product/widgets/product_text_form_fields.dart';

class RowTextFormField extends StatelessWidget {
  const RowTextFormField({
    super.key,
    required this.title1,
    required this.title2,
    this.controller1,
    this.controller2,
  });
  final String title1;
  final String title2;
  final TextEditingController? controller1;
  final TextEditingController? controller2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ProductTextFieldWidget(
            title: title1,
            controller: controller1,
            keyboardType: TextInputType.text,
          ),
        ),
        SizedBox(width: 16), // Adjust spacing between fields
        Expanded(
          child: ProductTextFieldWidget(
            title: title2,
            controller: controller2,
            keyboardType: TextInputType.text,
          ),
        ),
      ],
    );
  }
}
