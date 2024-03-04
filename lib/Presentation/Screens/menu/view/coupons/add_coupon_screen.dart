import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb_admin/Application/coupon/coupon_bloc.dart';
import 'package:glam_garb_admin/Presentation/Screens/menu/view/coupons/widgets/coupon_text_field_widget.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';
import 'package:intl/intl.dart';

class AddCouponScreen extends StatefulWidget {
  const AddCouponScreen({super.key});

  @override
  State<AddCouponScreen> createState() => _AddCouponScreenState();
}

class _AddCouponScreenState extends State<AddCouponScreen> {
  TextEditingController couponCodeController = TextEditingController();
  TextEditingController couponDescrController = TextEditingController();
  TextEditingController minAmountController = TextEditingController();
  TextEditingController maxAmountController = TextEditingController();
  TextEditingController expiryController = TextEditingController();
  TextEditingController discountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: kblackcolor,
      appBar: AppBar(
          title: const Text(
            'Add Coupon',
            style: TextStyle(color: kblackcolor, fontWeight: FontWeight.bold),
          ),
          backgroundColor: kwhite,
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
                CouponTextFieldWidget(
                  labelText: 'Coupon Code',
                  textFieldController: couponCodeController,
                  helperText: 'Enter your coupon code',
                ),
                kheight,
                CouponTextFieldWidget(
                    labelText: 'Coupon Description',
                    textFieldController: couponDescrController,
                    helperText: 'Enter the description of this coupon'),
                kheight,
                CouponTextFieldWidget(
                  labelText: 'Minimum Amount',
                  textFieldController: minAmountController,
                  helperText: 'Enter the minimum amount',
                  keyboardType: TextInputType.number,
                ),
                kheight,
                CouponTextFieldWidget(
                  labelText: 'Maximum Amount',
                  textFieldController: maxAmountController,
                  helperText: 'Enter the maximum amount',
                  keyboardType: TextInputType.number,
                ),
                kheight,
                CouponTextFieldWidget(
                  labelText: 'Expiry',
                  helperText: 'Enter Expiry Date',
                  suffixIcon: Icon(Icons.calendar_month),
                  keyboardType: TextInputType.datetime,
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
                  textFieldController: expiryController,
                ),
                kheight,
                CouponTextFieldWidget(
                  labelText: 'Discount',
                  textFieldController: discountController,
                  helperText: 'Enter Discount',
                  keyboardType: TextInputType.number,
                ),
                kheight20,
                BlocConsumer<CouponBloc, CouponState>(
                  listener: (context, state) {
                    // TODO: implement listener
                  },
                  builder: (context, state) {
                    return ElevatedButton.icon(
                      onPressed: () {
                        context.read<CouponBloc>().add(CouponEvent.addCoupon(
                            couponCodeController.text,
                            couponDescrController.text,
                            int.tryParse(discountController.text)!,
                            int.tryParse(minAmountController.text)!,
                            int.tryParse(maxAmountController.text)!,
                            expiryController.text));
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
