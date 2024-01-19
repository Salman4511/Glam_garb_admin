import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb_admin/Application/cateory/category_bloc.dart';
import 'package:glam_garb_admin/Domain/body_models/category_pass_model.dart';
import 'package:glam_garb_admin/Domain/response_models/category_model/category_add_model/category.dart';
import 'package:glam_garb_admin/Presentation/Screens/menu/view/category/widgets/text_field_widget.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';
import 'package:intl/intl.dart';

class AddCategory extends StatefulWidget {
  AddCategory({super.key});

  @override
  State<AddCategory> createState() => _AddCategoryState();
}

class _AddCategoryState extends State<AddCategory> {

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
          Positioned(
            top: 50,
            child: Column(
              children: [
                const Text(
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
            child: Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 70),
              child: Column(
                children: [
                  kheight90,
                  TextFieldWidget(
                    title: 'Enter category name',
                    controller: catNameController,
                  ),
                  kheight,
                  TextFieldWidget(
                    title: 'Category Offer (optional)',
                    controller: catOfferController,
                  ),
                  kheight,
                  TextFieldWidget(
                    title: 'Minimum Amount (optional)',
                    controller: minAmountController,
                  ),
                  kheight,
                  TextFieldWidget(
                    title: 'Maximum Discount (optional)',
                    controller: maxDiscountController,
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
                        print(
                            formattedDate.runtimeType); //formatted date output using intl package =>  2021-03-16
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
                    },
                    builder: (context, state) {
                      return  ElevatedButton(
                      
                      onPressed: () {
                        categoryPassModel newCategory= categoryPassModel(categoryName: catNameController.text,
                         active: dropdownValue);
                        context.read<CategoryBloc>().add(CategoryEvent.addCategory(catNameController.text,dropdownValue));
                        
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
