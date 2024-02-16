import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb_admin/Application/cateory/category_bloc.dart';
import 'package:glam_garb_admin/Presentation/Screens/menu/view/category/widgets/text_field_widget.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';
import 'package:intl/intl.dart';

class AddCategory extends StatefulWidget {
  AddCategory({super.key});

  @override
  State<AddCategory> createState() => _AddCategoryState();
}

class _AddCategoryState extends State<AddCategory> {
  final formkey = GlobalKey<FormState>();
  TextEditingController catNameController = TextEditingController();
  TextEditingController catOfferController = TextEditingController();
  TextEditingController minAmountController = TextEditingController();
  TextEditingController maxDiscountController = TextEditingController();
  TextEditingController expiryController = TextEditingController();
  TextEditingController statusController = TextEditingController();

  List<String> list = [
    "Active",
    "non-Active",
  ];

  String dropdownValue = "Active";

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
          const Positioned(
            top: 50,
            child: Column(
              children: [
                Text(
                  '  Add Category',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w900),
                ),
              ],
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
                    title: 'Enter category name',
                    controller: catNameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Category name is required';
                      }
                      return null;
                    },
                  ),
                  kheight,
                  TextFieldWidget(
                    title: 'Category Offer (optional)',
                    controller: catOfferController,
                    validator: (value) {
                      try {
                        if (value != null && value.isNotEmpty) {
                          int? offerValue = int.tryParse(value);
                          if (offerValue! < 0 || offerValue > 100) {
                            return 'Category offer must be between 0 and 100';
                          }
                        }
                      } catch (e) {
                        return 'Please enter a valid integer for category offer';
                      }
                      return null; // Validation passed
                    },
                  ),
                  kheight,
                  TextFieldWidget(
                    title: 'Minimum Amount (optional)',
                    controller: minAmountController,
                    validator: (value) {
                      try {
                        if (value != null && value.isNotEmpty) {
                          int? minamount = int.tryParse(value);
                          if (minamount! < 0 || minamount > 100000) {
                            return 'Category offer must be between 0 and 100';
                          }
                        }
                      } catch (e) {
                        return 'Please enter a valid integer for category offer';
                      }
                      return null;
                    },
                  ),
                  kheight,
                  TextFieldWidget(
                    title: 'Maximum Discount (optional)',
                    controller: maxDiscountController,
                    validator: (value) {
                      try {
                        if (value != null && value.isNotEmpty) {
                          int? maxdiscount = int.tryParse(value);
                          if (maxdiscount! < 0 || maxdiscount > 10000) {
                            return 'Category offer must be between 0 and 100';
                          }
                        }
                      } catch (e) {
                        return 'Please enter a valid integer for category offer';
                      }
                      return null;
                    },
                  ),
                  kheight,
                  TextFieldWidget(
                    title: 'Expiry (optional)',
                    controller: expiryController,
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1950),
                          //DateTime.now() - not to allow to choose before today.
                          lastDate: DateTime(2100));
                      print(pickedDate.runtimeType);

                      if (pickedDate != null) {
                        print(
                            pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                        String formattedDate =
                            DateFormat('yyyy-MM-dd').format(pickedDate);
                        print(formattedDate
                            .runtimeType); //formatted date output using intl package =>  2021-03-16
                        setState(() {
                          expiryController.text =
                              formattedDate; //set output date to TextField value.
                        });
                      } else {}
                    },
                    keyboardType: TextInputType.none,
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
                ],
              ),
            ),
          ),
          Column(
            children: [
              const SizedBox(
                height: 650,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 140,
                  ),
                  BlocConsumer<CategoryBloc, CategoryState>(
                    listener: (context, state) {
                      // TODO: implement listener
                      if (state.category != null) {
                        if (state.category!.status == "success") {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text('Added Successfully'),
                            backgroundColor: Colors.red,
                          ));
                          Navigator.pop(context);
                        } else {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text('Name already used'),
                            backgroundColor: Colors.red,
                          ));
                        }
                      }
                    },
                    builder: (context, state) {
                      return ElevatedButton(
                        onPressed: () {
                          if (formkey.currentState!.validate()) {
                            context
                                .read<CategoryBloc>()
                                .add(CategoryEvent.addCategory(
                                  catNameController.text,
                                  dropdownValue,
                                  int.tryParse(catOfferController.text) ?? 0,
                                  int.tryParse(minAmountController.text) ?? 0,
                                  int.tryParse(maxDiscountController.text) ?? 0,
                                  expiryController.text,
                                ));
                            Navigator.pop(context);
                          }
                        },
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.yellow)),
                        child: const Text('Submit'),
                      );
                    },
                  )
                ],
              ),
            ],
          ),
        ]),
      )),
    );
  }
}
