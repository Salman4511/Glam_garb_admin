import 'dart:io';

import 'package:flutter/material.dart';
import 'package:glam_garb_admin/Presentation/Screens/product/widgets/product_text_form_fields.dart';
import 'package:glam_garb_admin/Presentation/Screens/product/widgets/row_text_field.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';
import 'package:image_picker/image_picker.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  File? selectedImage1;
  File? selectedImage2;
  File? selectedImage3;

  List<TextEditingController> sizeControllers = [TextEditingController()];
  List<TextEditingController> stockControllers = [TextEditingController()];

  List<File?> selectedImages = [null, null, null]; 
 
 int selectedGender = 1;
  void addMoreFields() {
    setState(() {
      sizeControllers.add(TextEditingController());
      stockControllers.add(TextEditingController());
    });
  }

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
                        icon: kBackBtn,
                      ),
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
                      unselectedWidgetColor: Colors.grey,
                    ),
                    child: Row(
                      children: [
                        Radio(
                          value: 1,
                          groupValue: selectedGender,
                          onChanged: (value) {
                            setState(() {
                              selectedGender = value as int;
                            });
                          },
                        ),
                        Text(
                          'Male',
                          style: ktextstyleformenu,
                        ),
                        const SizedBox(width: 16),
                        Radio(
                          value: 2,
                          groupValue: selectedGender,
                          onChanged: (value) {
                            setState(() {
                              selectedGender = value as int;
                            });
                          },
                        ),
                        Text(
                          'Female',
                          style: ktextstyleformenu,
                        ),
                      ],
                    ),
                  ),
                  kheight,
                 for (int i = 0; i < sizeControllers.length; i++)
                    RowTextFormField(
                      title1: '     Size',
                      title2: '     Stoke',
                      controller1: sizeControllers[i],
                      controller2: stockControllers[i],
                    ),
                  kheight,
                  Row(
                    children: [
                      ElevatedButton(
                          onPressed: addMoreFields, child: const Text('Add more')),
                    ],
                  ),
                  kheight,
                  // dynamically build size and stock fields
                  
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
                  //      GestureDetector(
                  //   onTap: () async {
                  //     List<Asset> images = await MultipleImagesPicker.pickImages(
                  //       maxImages:
                  //           3, // Set the maximum number of images you want to pick
                  //       enableCamera: true,
                  //     );

                  //     if (images.isNotEmpty) {
                  //       // Process the selected image(s)
                  //       setState(() {
                  //         for (int i = 0; i < images.length; i++) {
                  //           selectedImages[i] = File(images[i].identifier!);
                  //         }
                  //       });
                  //     }
                  //   },
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(25),
                  //       color: kwhite,
                  //     ),
                  //     height: 60,
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: [
                  //         const Icon(
                  //           Icons.file_copy_outlined,
                  //           color: kblackcolor,
                  //         ),
                  //         const SizedBox(width: 10),
                  //         Text(
                  //           selectedImages.any((image) => image != null)
                  //               ? 'Images Selected'
                  //               : 'Select Images',
                  //           style: TextStyle(
                  //             color: kblackcolor,
                  //             fontSize: 16,
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  TextFormField(
                    scribbleEnabled: false,
                    onTap: () async {
                      final image = await ImagePicker().pickImage(
                        source: ImageSource.gallery,
                      );
                      if (image != null) {
                        setState(() {
                          selectedImage1 = File(image.path);
                        });
                      }
                    },
                    showCursor: false,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      contentPadding: const EdgeInsets.symmetric(vertical: 8),
                      prefixIcon: const Icon(
                        Icons.file_copy_outlined,
                        color: kblackcolor,
                      ),
                      hintText: selectedImage1 != null
                          ? 'Image Selected'
                          : 'Select Image',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      fillColor: kwhite,
                      filled: true,
                    ),
                    keyboardType: TextInputType.none,
                  ),
                  kheight,
                  TextFormField(
                    scribbleEnabled: false,
                    onTap: () async {
                      final image = await ImagePicker().pickImage(
                        source: ImageSource.gallery,
                      );
                      if (image != null) {
                        setState(() {
                          selectedImage2 = File(image.path);
                        });
                      }
                    },
                    showCursor: false,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      contentPadding: const EdgeInsets.symmetric(vertical: 8),
                      prefixIcon: const Icon(
                        Icons.file_copy_outlined,
                        color: kblackcolor,
                      ),
                      hintText: selectedImage2 != null
                          ? 'Image Selected'
                          : 'Select Image',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      fillColor: kwhite,
                      filled: true,
                    ),
                    keyboardType: TextInputType.none,
                  ),
                  kheight,
                  TextFormField(
                    scribbleEnabled: false,
                    onTap: () async {
                      final image = await ImagePicker().pickImage(
                        source: ImageSource.gallery,
                      );
                      if (image != null) {
                        setState(() {
                          selectedImage3 = File(image.path);
                        });
                      }
                    },
                    showCursor: false,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      contentPadding: const EdgeInsets.symmetric(vertical: 8),
                      prefixIcon: const Icon(
                        Icons.file_copy_outlined,
                        color: kblackcolor,
                      ),
                      hintText: selectedImage3 != null
                          ? 'Image Selected'
                          : 'Select Image',
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
                  ),
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
