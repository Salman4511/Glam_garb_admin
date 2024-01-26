import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:glam_garb_admin/Domain/body_models/product_model.dart';
import 'package:glam_garb_admin/Infrastructure/Services/Product/product_repo.dart';
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
  TextEditingController productNameController = TextEditingController();
  TextEditingController productDescrController = TextEditingController();
  TextEditingController colorController = TextEditingController();
  TextEditingController brandController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController regPriceController = TextEditingController();
  TextEditingController salePriceController = TextEditingController();
  TextEditingController sizeControllers = TextEditingController();
  TextEditingController stockControllers = TextEditingController();

  List<File?> selectedImages = [null, null, null];
  List<String> colorsList = [];
  List<dynamic> sizess = [];
  List<dynamic> stocks = [];

  int selectedGender = 1;

  void addMoreFields() {
    setState(() {
      sizess.add(sizeControllers.text);
      stocks.add(stockControllers.text);

      // Clear the fields after adding to the lists
      sizeControllers.clear();
      stockControllers.clear();
    });
  }

  // Future<void> pickImage(int index) async {
  //   final image = await ImagePicker().pickImage(
  //     source: ImageSource.gallery,
  //   );

  //   if (image != null) {
  //     setState(() async {
  //       // Update selected image file
  //       selectedImages[index] = await MultipartFile.fromFile(
  //         image.path,
  //         filename: "image_$index.jpg",
  //       );
  //     });
  //   }
  // }
  String getImageFieldText(int index) {
    return selectedImages[index] != null ? 'Image Selected' : 'Select Image';
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
                  ProductTextFieldWidget(
                    controller: productNameController,
                    title: '     Product Name',
                  ),
                  kheight,
                  ProductTextFieldWidget(
                    controller: productDescrController,
                    title: '     Product Description',
                    maxlines: 4,
                  ),
                  kheight,
                  ProductTextFieldWidget(
                    controller: colorController,
                    title: '     Color',
                  ),
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
                  RowTextFormField(
                    title1: '     Size',
                    title2: '     Stoke',
                    controller1: sizeControllers,
                    controller2: stockControllers,
                  ),
                  kheight,
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: addMoreFields,
                        child: const Text('Add more'),
                      ),
                    ],
                  ),
                  kheight,
                  // dynamically build size and stock fields

                  RowTextFormField(
                    controller1: brandController,
                    controller2: categoryController,
                    title1: '     Brand',
                    title2: '     Category',
                  ),
                  kheight,
                  ProductTextFieldWidget(
                    controller: regPriceController,
                    title: '     Regular Prize',
                  ),
                  kheight,
                  ProductTextFieldWidget(
                    controller: salePriceController,
                    title: '     Sale Prize',
                  ),
                  kheight,
                  TextFormField(
                    scribbleEnabled: false,
                    onTap: 
                    () async {
                      // Open gallery
                      final image = await ImagePicker().pickImage(
                        source: ImageSource.gallery,
                      );
                      if (image != null) {
                        // Process the selected image
                        setState(() {
                          selectedImage1 = File(image.path);
                          selectedImages[0]=selectedImage1;
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
                      hintText:  
                      selectedImage1 != null
                          ? 'Image selected'
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
                      // Open gallery
                      final image = await ImagePicker().pickImage(
                        source: ImageSource.gallery,
                      );
                      if (image != null) {
                        // Process the selected image
                        setState(() {
                          selectedImage2 = File(image.path);
                          selectedImages[1] = selectedImage2;
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
                          ? 'Image selected'
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
                      // Open gallery
                      final image = await ImagePicker().pickImage(
                        source: ImageSource.gallery,
                      );
                      if (image != null) {
                        // Process the selected image
                        setState(() {
                          selectedImage3 = File(image.path);
                          selectedImages[2] = selectedImage3;
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
                      hintText:  selectedImage3 != null
                          ? 'Image selected'
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
                    onPressed: () {
                      List<String> newColors = colorController.text.split(',');
                      colorsList.addAll(newColors);

                      String getSelectedGender() {
                        if (selectedGender == 1) {
                          return 'Male';
                        } else if (selectedGender == 2) {
                          return 'Female';
                        } else {
                          return 'Unknown';
                        }
                      }

                      ProductRepo repo = ProductRepo();

                      repo.addProduct(
                        selectedImages,
                        productNameController.text,
                        productDescrController.text,
                        colorController.text,
                        sizess,
                        stocks,
                        brandController.text,
                        categoryController.text,
                        double.parse(regPriceController.text),
                        double.parse(salePriceController.text),
                        getSelectedGender(),
                      );
                      print('selected images${selectedImages}');
                    },
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
