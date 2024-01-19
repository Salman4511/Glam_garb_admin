import 'package:flutter/material.dart';
import 'package:glam_garb_admin/Presentation/Screens/Product/widgets/add_product_form.dart';
import 'package:glam_garb_admin/Presentation/Screens/Product/widgets/product_text_form_fields.dart';
import 'package:glam_garb_admin/Presentation/Screens/Product/widgets/row_text_field.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';
import 'package:image_picker/image_picker.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblackcolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: kBackBtn),
                    ],
                  ),
                  kheight,
                  const ProductTextFieldWidget(
                    title: '     Product Name',
                  ),
                  kheight,
                  const ProductTextFieldWidget(
                    title: '     Product Description',
                    maxlines: 4,
                  ),
                  kheight,
                  const ProductTextFieldWidget(title: '     Color'),
                  kheight20,
                  Row(
                    children: [
                      Text(
                        '    Gender:',
                        style: ktextstyleformenu,
                      ),
                    ],
                  ),
                  Theme(
                    data: ThemeData(
                      unselectedWidgetColor: Colors
                          .grey, // Set the color for unselected radio button
                    ),
                    child: Row(
                      children: [
                        Radio(
                          value: 1,
                          groupValue: 1,
                          onChanged: (value) {},
                        ),
                        Text(
                          'Male',
                          style: ktextstyleformenu,
                        ),
                        const SizedBox(width: 16),
                        Radio(
                          value: 2,
                          groupValue: 1,
                          onChanged: (value) {},
                        ),
                        Text(
                          'Female',
                          style: ktextstyleformenu,
                        ),
                      ],
                    ),
                  ),
                  kheight,
                  const RowTextFormField(
                    title1: '     Size',
                    title2: '     Stoke',
                  ),
                  kheight,
                  const RowTextFormField(
                    title1: '     Brand',
                    title2: '     Category',
                  ),
                  kheight,
                  const ProductTextFieldWidget(
                    title: '     Regular Prize',
                  ),
                  kheight,
                  const ProductTextFieldWidget(
                    title: '     Sale Prize',
                  ),
                  kheight,
                  TextFormField(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text("Pick image"),
                            actions: [
                              IconButton(
                                onPressed: () async {
                                  // Open gallery
                                  final image = await ImagePicker().pickImage(
                                    source: ImageSource.gallery,
                                  );
                                  if (image != null) {
                                    // Process the selected image
                                    print(
                                        "Image selected from gallery: ${image.path}");
                                  }
                                },
                                icon: const Icon(Icons.browse_gallery),
                              ),
                              IconButton(
                                onPressed: () async {
                                  // Open camera
                                  final image = await ImagePicker().pickImage(
                                    source: ImageSource.camera,
                                  );
                                  if (image != null) {
                                    // Process the captured image
                                    print(
                                        "Image captured from camera: ${image.path}");
                                  }
                                },
                                icon: const Icon(Icons.camera),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    showCursor: false,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 8),
                      prefixIcon: const Icon(
                        Icons.file_copy_outlined,
                        color: kblackcolor,
                      ),
                      labelText: 'Upload Image',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      fillColor: kwhite,
                      filled: true,
                    ),
                    keyboardType: TextInputType.none,
                  ),
                  kheight20,
                  ElevatedButton(
                    onPressed: () {},
                    style: submitbuttonStyle,
                    child: Text(
                      'Submit',
                      style: ktextstyleformenu,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget kBackBtn = const Icon(
  Icons.arrow_back_ios,
  color: Colors.white,
);
