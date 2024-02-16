import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb_admin/Application/coupon/coupon_bloc.dart';
import 'package:glam_garb_admin/Domain/response_models/coupon_model/coupon_edit_model/coupon.dart';
import 'package:glam_garb_admin/Presentation/Screens/menu/view/coupons/widgets/coupon_text_field_widget.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';
import 'package:intl/intl.dart';

class EditCouponScreen extends StatefulWidget {
  final Coupon initialCoupon;
  const EditCouponScreen({super.key, required this.initialCoupon});

  @override
  State<EditCouponScreen> createState() => _EditCouponScreenState();
}

class _EditCouponScreenState extends State<EditCouponScreen> {
  TextEditingController couponCodeController = TextEditingController();
  TextEditingController couponDescrController = TextEditingController();
  TextEditingController minAmountController = TextEditingController();
  TextEditingController maxAmountController = TextEditingController();
  TextEditingController expiryController = TextEditingController();
  TextEditingController discountController = TextEditingController();

  void initState() {
    // TODO: implement initState
    couponCodeController.text = widget.initialCoupon.code ?? '';
    couponDescrController.text = widget.initialCoupon.description ?? '';
    minAmountController.text = widget.initialCoupon.minimumAmount.toString();
    maxAmountController.text = widget.initialCoupon.maximumAmount.toString();
    var expiry = widget.initialCoupon.expiry!.split(' ');
    expiryController.text = '${expiry[3]} ${expiry[1]} ${expiry[2]}';
    discountController.text = widget.initialCoupon.discount.toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblackcolor,
      appBar: AppBar(
          title: const Text(
            'Edit Coupon',
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
                        context.read<CouponBloc>().add(CouponEvent.editCoupon(
                            widget.initialCoupon.id ?? '',
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
