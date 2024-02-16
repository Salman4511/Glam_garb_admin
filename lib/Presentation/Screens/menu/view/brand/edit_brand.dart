import 'dart:io'; // Import the 'dart:io' library for File
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb_admin/Application/brand/brand_bloc.dart';
import 'package:glam_garb_admin/Domain/response_models/brand_model/brand_add_model/brand_model.dart';
import 'package:glam_garb_admin/Infrastructure/Services/Brand/brand_repo.dart';
import 'package:glam_garb_admin/Presentation/Screens/menu/view/category/widgets/text_field_widget.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';
import 'package:image_picker/image_picker.dart';

class EditBrand extends StatefulWidget {
  final Brand initialBrand;

  EditBrand({super.key, required this.initialBrand});

  @override
  State<EditBrand> createState() => _EditBrandState();
}

class _EditBrandState extends State<EditBrand> {
  List<String> list = ["Active", "non-Active"];
  String dropdownValue = "Active";

  void initState() {
    // TODO: implement initState
    brandNameController.text = widget.initialBrand.brandName ?? "";

    super.initState();
  }

  final formkey = GlobalKey<FormState>();
  TextEditingController brandNameController = TextEditingController();
  File? selectedImage; // Variable to hold the selected image as a File

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kblackcolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
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
                ],
              ),
              const Positioned(
                top: 50,
                child: Text(
                  '  Edit Brand',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w900),
                ),
              ),
              Form(
                key: formkey,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 70),
                  child: Column(
                    children: [
                      kheight90,
                      TextFieldWidget(
                        title: 'Enter brand name',
                        controller: brandNameController,
                        validator: (value) {
                          if (value!.isEmpty)
                            return "Please enter the brand name";
                          return null;
                        },
                      ),
                      kheight,
                      Container(
                        width: 500,
                        height: 60,
                        decoration: BoxDecoration(
                          color: kwhite,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            right: size.width * 0.2,
                            left: 25,
                            top: 10,
                          ),
                          child: DropdownButton<String>(
                            value: dropdownValue,
                            icon: const Icon(
                              Icons.arrow_downward,
                              color: Colors.black,
                            ),
                            elevation: 16,
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                            onChanged: (String? value) {
                              setState(() {
                                dropdownValue = value!;
                              });
                            },
                            items: list
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      kheight,
                      GestureDetector(
                        onTap: () async {
                          // Open gallery
                          final image = await ImagePicker().pickImage(
                            source: ImageSource.gallery,
                          );
                          if (image != null) {
                            // Process the selected image
                            setState(() {
                              selectedImage = File(image.path);
                            });
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: kwhite,
                          ),
                          height: 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.file_copy_outlined,
                                color: kblackcolor,
                              ),
                              const SizedBox(width: 10),
                              Text(
                                selectedImage != null
                                    ? 'Image selected'
                                    : 'Select Image',
                                style: const TextStyle(
                                  color: kblackcolor,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 550,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 140,
                      ),
                      BlocConsumer<BrandBloc, BrandState>(
                        listener: (context, state) {
                          // TODO: implement listener
                          if (state.editBrand != null) {
                            if (state.editBrand!.message ==
                                "Brand updated successfully") {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text('Updated Successfully'),
                                backgroundColor: Colors.red,
                              ));
                              Navigator.pop(context);
                            } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text('Not Updated'),
                                backgroundColor: Colors.red,
                              ));
                            }
                            Navigator.pop(context);
                          }
                        },
                        builder: (context, state) {
                          return ElevatedButton(
                            onPressed: () {
                              // Check if an image is selected
                              if (formkey.currentState!.validate()) {
                                if (selectedImage != null) {
                                  // Pass the selectedImage along with other parameters
                                  context.read<BrandBloc>().add(
                                      BrandEvent.editBrand(
                                          brandNameController.text,
                                          dropdownValue,
                                          selectedImage,
                                          widget.initialBrand.sId!,
                                          widget.initialBrand.brandName!));
                                  Navigator.pop(context);
                                  print('id-->${widget.initialBrand.sId}');
                                } else {
                                  // Handle case where no image is selected
                                  // You may want to show a message to the user
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    content: Text('Please select an image'),
                                    backgroundColor: Colors.red,
                                  ));
                                }
                              }
                            },
                            style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.yellow),
                            ),
                            child: const Text('Submit'),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
