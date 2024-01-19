import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb_admin/Application/brand/brand_bloc.dart';
import 'package:glam_garb_admin/Presentation/Screens/menu/view/category/widgets/text_field_widget.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';
import 'package:image_picker/image_picker.dart';

class AddBrand extends StatefulWidget {
  AddBrand({super.key});

  @override
  State<AddBrand> createState() => _AddBrandState();
}

class _AddBrandState extends State<AddBrand> {
  List<String> list = [
    "Active",
    "non-Active",
  ];

  String dropdownValue = "Active";

  TextEditingController brandNameController = TextEditingController();
  TextEditingController imageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kblackcolor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Stack(children: [
          Column(
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
            ],
          ),
          Positioned(
            top: 50,
            child: const Text(
              '  Add Brand',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w900),
            ),
          ),
          Form(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 70),
              child: Column(
                children: [
                  kheight90,
                  TextFieldWidget(
                    title: 'Enter brand name',
                    controller: brandNameController,
                  ),
                  kheight,

                  // TextFieldWidget(title: 'Status', controller: statusController,),
                  Container(
                    width: 500,
                    height: 60,
                    decoration: BoxDecoration(
                        color: kwhite, borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: EdgeInsets.only(
                          right: size.width * 0.2, left: 25, top: 10),
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
                            fontSize: 16),
                        //    underline: Container(
                        // height: 2,
                        // color: Colors.deepPurpleAccent,
                        //    ),
                        onChanged: (String? value) {
                          // This is called when the user selects an item.
                          setState(() {
                            dropdownValue = value!;
                          });
                        },
                        items:
                            list.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  kheight,
                  TextFormField(
                    controller: imageController,
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
                                    imageController.text = image.path;
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
                                    imageController.text = image.path;
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
                  )
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
                    },
                    builder: (context, state) {
                      return ElevatedButton(
                        onPressed: () {
                          context.read<BrandBloc>().add(BrandEvent.addBrand(
                              brandNameController.text,
                              imageController.text,
                              dropdownValue));
                        },
                        child: const Text('Submit'),
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.yellow)),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ]),
      )),
    );
  }
}
