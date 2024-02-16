import 'package:flutter/material.dart';
import 'package:glam_garb_admin/Presentation/Screens/Product/widgets/product_text_form_fields.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';

class RowTextFormField extends StatefulWidget {
  const RowTextFormField({
    super.key,
    required this.title1,
    required this.title2,
    this.controller1,
    this.controller2,
    this.validator1,
    this.validator2,
    this.onchanged,
    required this.selectedSize,
    required this.dropdownItems,
    required this.hintText,
  });
  final String title1;
  final String title2;
  final TextEditingController? controller1;
  final TextEditingController? controller2;
  final String? Function(String?)? validator1;
  final String? Function(String?)? validator2;
  final String? selectedSize;
  final void Function(String?)? onchanged;
  final List<DropdownMenuItem<String>> dropdownItems;
  final Widget hintText;
  @override
  State<RowTextFormField> createState() => _RowTextFormFieldState();
}

class _RowTextFormFieldState extends State<RowTextFormField> {
  @override
  Widget build(BuildContext context) {
    //  const List<String> sizes = ['XS', 'S', 'M', 'L', 'XL', 'XXL'];
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: kwhite,
              borderRadius: BorderRadius.circular(25),
            ),
            child: DropdownButton<String>(
                dropdownColor: kwhite,
                focusColor: kwhite,
                hint: widget.hintText,
                value: widget
                    .selectedSize, // Make sure you have a variable to store the selected size
                items: widget.dropdownItems,
                //  sizes.map((String size) {
                //   return DropdownMenuItem<String>(
                //     value: size,
                //     child: Text('  $size'),
                //   );
                // }).toList(),
                onChanged: widget.onchanged
                //  (String? newValue) {
                //   setState(() {
                //     wiselectedSize = newValue;
                //   });
                // },
                ),
          ),
        ),
        SizedBox(width: 16), // Adjust spacing between fields
        Expanded(
          child: ProductTextFieldWidget(
            title: widget.title2,
            controller: widget.controller2,
            keyboardType: TextInputType.number,
            validator: widget.validator2,
          ),
        ),
      ],
    );
  }
}
