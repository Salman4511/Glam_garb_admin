import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb_admin/Application/product/product_bloc.dart';
import 'package:glam_garb_admin/Domain/response_models/brand_model/brand_get_model/brand_get_model.dart';
import 'package:glam_garb_admin/Domain/response_models/category_model/category_get_model/category_get_model.dart';
import 'package:glam_garb_admin/Infrastructure/Services/brand/brand_repo.dart';
import 'package:glam_garb_admin/Infrastructure/Services/category/category_repo.dart';
import 'package:glam_garb_admin/Presentation/Screens/product/widgets/colors.dart';
import 'package:glam_garb_admin/Presentation/Screens/product/widgets/product_text_form_fields.dart';
import 'package:glam_garb_admin/Presentation/Screens/product/widgets/row_text_field.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

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

  List<Widget> buildSizeStockContainers() {
    List<Widget> containers = [];
    for (int i = 0; i < sizess.length; i++) {
      containers.add(
        Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: kwhite,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Size: ${sizess[i].toString().toUpperCase()}'),
                  const SizedBox(
                    width: 15,
                  ),
                  Text('Stock: ${stocks[i]}'),
                ],
              ),
            ),
            kheight
          ],
        ),
      );
    }
    return containers;
  }

  List<File?> selectedImages = [null, null, null];
  List<String> colorsList = [];
  List<dynamic> sizess = [];
  List<dynamic> stocks = [];

  int selectedGender = 1;

  CategoryRepo repo = CategoryRepo();
  BrandRepo brandRepo = BrandRepo();
  List<Category>? categoryOptions = [];
  Category? selectedCategory;
  List<Brands>? brandOptions = [];
  Brands? selectedBrands;
  String? selectedSize;
  static final List<ColorsList> _colorLists = [
    ColorsList(id: 1, name: "Black"),
    ColorsList(id: 2, name: "Blue"),
    ColorsList(id: 3, name: "Red"),
    ColorsList(id: 4, name: "Green"),
    ColorsList(id: 5, name: "Yellow"),
    ColorsList(id: 6, name: "Brown"),
    ColorsList(id: 7, name: "Orange"),
  ];
  final _items = _colorLists
      .map((animal) => MultiSelectItem<ColorsList>(animal, animal.name))
      .toList();

  List<dynamic> selectedColors = [];
  String? selectedColorsString;
  List<String> sizes = ['XS', 'S', 'M', 'L', 'XL', 'XXL'];

  void addMoreFields() {
    setState(() {
      sizess.add(selectedSize);
      stocks.add(stockControllers.text);

      // Clear the fields after adding to the lists
      sizeControllers.clear();
      stockControllers.clear();
    });
  }

  @override
  void initState() {
    super.initState();
    repo.getCategories().then((categories) {
      setState(() {
        categoryOptions = categories.category;
      });
    });
    brandRepo.getBrands().then((brands) {
      setState(() {
        brandOptions = brands.brands;
      });
    });
    selectedColors = _colorLists;
  }

  String getImageFieldText(int index) {
    return selectedImages[index] != null ? 'Image Selected' : 'Select Image';
  }

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? validateTextField(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }
    return null;
  }

  String? validatePrice(String? value) {
    if (value == null || value.isEmpty) {
      return 'Price is required';
    }
    if (double.tryParse(value) == null) {
      return 'Invalid price format';
    }
    return null;
  }

  String? validateStock(String? value) {
    if (value == null || value.isEmpty) {
      return 'Stock is required';
    }
    if (double.tryParse(value) == null) {
      return 'Invalid format';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: kblackcolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
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
                    validator: validateTextField,
                  ),
                  kheight,
                  ProductTextFieldWidget(
                    controller: productDescrController,
                    title: '     Product Description',
                    maxlines: 4,
                    validator: validateTextField,
                  ),
                  kheight,
                  MultiSelectDialogField(
                    validator: (value) =>
                        value == null ? "Please select category" : null,
                    decoration: BoxDecoration(
                        color: kwhite,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all()),
                    buttonText: Text('     Select Colors'),
                    title: Text('Colors'),
                    onConfirm: (val) {
                      selectedColors = val;
                      selectedColorsString =
                          selectedColors.map((color) => color.name).join(', ');
                      print('Selected Colors: $selectedColorsString');
                    },
                    dialogWidth: MediaQuery.of(context).size.width * 0.7,
                    items: _items,
                    initialValue: selectedColors,
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
                    validator1: validateTextField,
                    validator2: validateStock,
                    selectedSize: selectedSize,
                    dropdownItems: sizes.map((String size) {
                      return DropdownMenuItem<String>(
                        value: size,
                        child: Text('  $size'),
                      );
                    }).toList(),
                    onchanged: (String? newValue) {
                      setState(() {
                        selectedSize = newValue;
                      });
                      print(selectedSize);
                    },
                    hintText: const Text(
                      " Select a Size",
                    ),
                  ),
                  kheight,
                  ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: buildSizeStockContainers(),
                  ),
                  kheight,
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: addMoreFields,
                        child: const Text(
                          'Add more',
                          style: TextStyle(color: kwhite),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(baseColor.shade400)),
                      ),
                    ],
                  ),
                  kheight,
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: kwhite,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all()),
                        child: DropdownButton<Category>(
                          dropdownColor: kwhite,
                          focusColor: kwhite,
                          hint: const Text(
                            "  Select a Category",
                          ),
                          value: selectedCategory,
                          items: categoryOptions!.map((Category category) {
                            return DropdownMenuItem<Category>(
                              value: category,
                              child: Text('  ${category.categoryName}'),
                            );
                          }).toList(),
                          onChanged: (Category? newValue) {
                            setState(() {
                              selectedCategory = newValue;
                            });
                          },
                        ),
                      ),
                      SizedBox(width: 70),
                      Container(
                        decoration: BoxDecoration(
                            color: kwhite,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all()),
                        child: DropdownButton<Brands>(
                          dropdownColor: kwhite,
                          focusColor: kwhite,
                          hint: Text(
                            " Select a Brand",
                          ),
                          value: selectedBrands,
                          items: brandOptions!.map((Brands brands) {
                            return DropdownMenuItem<Brands>(
                              value: brands,
                              child: Text('  ${brands.brandName}'),
                            );
                          }).toList(),
                          onChanged: (Brands? newValue) {
                            setState(() {
                              selectedBrands = newValue;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  kheight,
                  ProductTextFieldWidget(
                    controller: regPriceController,
                    title: '     Regular Prize',
                    keyboardType: TextInputType.number,
                    validator: validatePrice,
                  ),
                  kheight,
                  ProductTextFieldWidget(
                    controller: salePriceController,
                    title: '     Sale Prize',
                    keyboardType: TextInputType.number,
                    validator: validatePrice,
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
                          selectedImage1 = File(image.path);
                          selectedImages[0] = selectedImage1;
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
                      hintText: getImageFieldText(0),
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
                      hintText: getImageFieldText(1),
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
                      hintText: getImageFieldText(2),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      fillColor: kwhite,
                      filled: true,
                    ),
                    keyboardType: TextInputType.none,
                  ),
                  kheight20,
                  Row(
                    children: [
                      kwidth,
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: selectedImage1 != null
                                ? FileImage(File(selectedImage1!.path))
                                    as ImageProvider<Object>
                                : const NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjSv5On_L7Rd8K7njM9SyLn-M9tFwJqbahfIM5sFWz9G2ZwcZWI7DsEDTfivpr_gx7HWw&usqp=CAU'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      kwidth,
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: selectedImage2 != null
                                ? FileImage(File(selectedImage2!.path))
                                    as ImageProvider<Object>
                                : const NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjSv5On_L7Rd8K7njM9SyLn-M9tFwJqbahfIM5sFWz9G2ZwcZWI7DsEDTfivpr_gx7HWw&usqp=CAU'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      kwidth,
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: selectedImage3 != null
                                ? FileImage(File(selectedImage3!.path))
                                    as ImageProvider<Object>
                                : const NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjSv5On_L7Rd8K7njM9SyLn-M9tFwJqbahfIM5sFWz9G2ZwcZWI7DsEDTfivpr_gx7HWw&usqp=CAU'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  kheight20,
                  BlocConsumer<ProductBloc, ProductState>(
                    listener: (context, state) {
                      if (state.product != null) {
                        if (state.product!.message == "Product Added") {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Added Successfully'),
                              backgroundColor: Colors.red,
                            ),
                          );
                          Navigator.pop(context);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Error Occurred! Try again later.'),
                              backgroundColor: Colors.red,
                            ),
                          );
                        }
                      }
                    },
                    builder: (context, state) {
                      return ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            if (selectedImage1 != null &&
                                selectedImage2 != null &&
                                selectedImage3 != null) {
                              if (selectedBrands != null &&
                                  selectedCategory != null) {
                                List<String> newColors =
                                    colorController.text.split(',');
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

                                context.read<ProductBloc>().add(
                                      ProductEvent.addProduct(
                                        selectedImages,
                                        productNameController.text,
                                        productDescrController.text,
                                        selectedColorsString!,
                                        sizess,
                                        stocks,
                                        selectedBrands?.brandName ?? '',
                                        selectedCategory?.categoryName ?? '',
                                        double.parse(regPriceController.text),
                                        double.parse(salePriceController.text),
                                        getSelectedGender(),
                                      ),
                                    );
                                Navigator.pop(context);
                                print(selectedColorsString);
                              } else {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  content:
                                      Text('Please select brand and Category'),
                                  backgroundColor: Colors.red,
                                ));
                              }
                            } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text('Please select all images'),
                                backgroundColor: Colors.red,
                              ));
                            }
                          }
                        },
                        style: submitbuttonStyle,
                        child: Text(
                          'Submit',
                          style: ktextstyleformenu,
                        ),
                      );
                    },
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
