import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb_admin/Application/banner/banner_bloc.dart';
import 'package:glam_garb_admin/Presentation/Screens/menu/view/banner/widgets/banner_text_field_widget.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class AddBannerScreen extends StatefulWidget {
  const AddBannerScreen({super.key});

  @override
  State<AddBannerScreen> createState() => _AddBannerScreenState();
}

class _AddBannerScreenState extends State<AddBannerScreen> {
  TextEditingController mainHeadController = TextEditingController();
  TextEditingController sub1Controller = TextEditingController();
  TextEditingController sub2Controller = TextEditingController();
  TextEditingController sub3Controller = TextEditingController();
  TextEditingController descrController = TextEditingController();
  TextEditingController statusController = TextEditingController();
  TextEditingController imageController = TextEditingController();

  File? selectedImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblackcolor,
      appBar: AppBar(
          title: const Text(
            'Add Banner',
            style: TextStyle(color: kwhite, fontWeight: FontWeight.bold),
          ),
          backgroundColor: kblackcolor,
          // centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: kBackBtn)),
      body: SingleChildScrollView(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                kheight20,
                BannerTextFieldWidget(
                  labelText: 'Main Heading',
                  textFieldController: mainHeadController,
                  helperText: 'Enter your main heading',
                ),
                kheight,
                BannerTextFieldWidget(
                    labelText: 'Sub Heading-1',
                    textFieldController: sub1Controller,
                    helperText: 'Enter the first sub heading'),
                kheight,
                BannerTextFieldWidget(
                  labelText: 'Sub Heading-2',
                  textFieldController: sub2Controller,
                  helperText: 'Enter the second sub heading',
                ),
                kheight,
                BannerTextFieldWidget(
                  labelText: 'Sub Heading-3',
                  textFieldController: sub3Controller,
                  helperText: 'Enter the third sub heading',
                ),
                kheight,
                BannerTextFieldWidget(
                  labelText: 'Description',
                  helperText: 'Enter Description for this banner ',
                  textFieldController: descrController,
                ),
                kheight,
                BannerTextFieldWidget(
                  labelText: 'Status',
                  textFieldController: statusController,
                  helperText: 'Enter Status',
                ),
                kheight,
                BannerTextFieldWidget(
                  labelText: 'Select Image',
                  helperText: selectedImage != null
                      ? 'Image selected for the banner'
                      : 'Select Image for the banner',
                  keyboardType: TextInputType.none,
                  textFieldController: imageController,
                  suffixIcon: selectedImage != null
                      ? const Icon(
                          Icons.check_circle,
                          color: Colors.green,
                        )
                      : null,
                  readonly: true,
                  onTap: () async {
                    // Open gallery
                    final image = await ImagePicker().pickImage(
                      source: ImageSource.gallery,
                    );
                    if (image != null) {
                      // Process the selected image
                      setState(() {
                        selectedImage = File(image.path);
                        imageController.text = 'Image Selected';
                      });
                    }
                  },
                ),
                kheight20,
                BlocConsumer<BannerBloc, BannerState>(
                  listener: (context, state) {
                    // TODO: implement listener
                  },
                  builder: (context, state) {
                    return ElevatedButton.icon(
                      onPressed: () {
                        context.read<BannerBloc>().add(BannerEvent.addBanner(
                            descrController.text,
                            sub1Controller.text,
                            sub2Controller.text,
                            sub3Controller.text,
                            mainHeadController.text,
                            statusController.text,
                            selectedImage));
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.check_circle,
                        color: kwhite,
                      ),
                      label: const Text('Submit',
                          style: TextStyle(
                              color: kwhite,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.amber)),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
