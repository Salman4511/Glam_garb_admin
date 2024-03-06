import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:glam_garb_admin/Application/cateory/category_bloc.dart';
import 'package:glam_garb_admin/Application/coupon/coupon_bloc.dart';
import 'package:glam_garb_admin/Domain/response_models/coupon_model/coupon_edit_model/coupon.dart';
import 'package:glam_garb_admin/Presentation/Screens/menu/view/coupons/edit_coupon_screen.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';

class CouponCardWidget extends StatefulWidget {
  final String couponName;
  final String id;
  final int discount;
  final int minAmount;
  final int maxAmonut;
  final String date;
  final BuildContext parentContext;
  final String description;

  const CouponCardWidget({
    Key? key,
    required this.couponName,
    required this.id,
    required this.parentContext,
    required this.discount,
    required this.minAmount,
    required this.maxAmonut,
    required this.date,
    required this.description,
  }) : super(key: key);

  @override
  State<CouponCardWidget> createState() => _CouponCardWidgetState();
}

class _CouponCardWidgetState extends State<CouponCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
        color: baseColor.shade100,
        elevation: 4,
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Slidable(
          key: const ValueKey(0),
          endActionPane: ActionPane(
            motion: ScrollMotion(),
            children: [
              SlidableAction(
                onPressed: (BuildContext context) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EditCouponScreen(
                          initialCoupon: Coupon(
                              id: widget.id,
                              code: widget.couponName,
                              description: widget.description,
                              discount: widget.discount,
                              maximumAmount: widget.maxAmonut,
                              minimumAmount: widget.minAmount,
                              expiry: widget.date),
                        ),
                      ));
                },
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                icon: Icons.edit,
                label: 'Edit',
              ),
              BlocConsumer<CouponBloc, CouponState>(
                listener: (context, state) {
                  // TODO: implement listener
                  if (state.delCoupon != null) {
                    if (state.delCoupon!.message == "Coupon deleted!") {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Coupon deleted')));
                    }
                  }
                },
                builder: (context, state) {
                  return SlidableAction(
                    onPressed: (BuildContext context) {
                      context.read<CouponBloc>().add(
                            CouponEvent.deleteCoupon(widget.id),
                          );
                    },
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    icon: Icons.delete,
                    label: 'Delete',
                  );
                },
              )
            ],
          ),
          child: ListTile(
            contentPadding: const EdgeInsets.all(16),
            title: Text(
              widget.couponName,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            subtitle: Text(
              widget.description,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: Text(
              '₹${widget.discount.toString()}',
              style: const TextStyle(fontSize: 16),
            ),
            // trailing: Row(
            //   mainAxisSize: MainAxisSize.min,
            //   children: [
            //     IconButton(
            //       icon: Icon(Icons.edit),
            //       onPressed: () {
            //         // Navigator.push(
            //         //     context,
            //         //     MaterialPageRoute(
            //         //       builder: (context) => EditCategory(
            //         //         initialCategory: Category(
            //         //             categoryName: widget.categoryName,
            //         //             active: widget.isActive,
            //         //             sId: widget.id,
            //         //             categoryOffer: widget.catOffer,
            //         //             minAmount: widget.minAmount,
            //         //             maxDiscount: widget.maxDiscount,
            //         //             expiry: widget.date),
            //         //       ),
            //         //     ));
            //       },
            //     ),
            //     BlocConsumer<CategoryBloc, CategoryState>(
            //       listener: (context, state) {
            //         // TODO: implement listener
            //         if (state.delCategory != null) {
            //           if (state.delCategory!.message == 'success') {
            //             ScaffoldMessenger.of(widget.parentContext).showSnackBar(
            //               const SnackBar(content: Text('Delete Successful!')),
            //             );
            //           }
            //         }
            //       },
            //       builder: (context, state) {
            //         return IconButton(
            //           icon: const Icon(Icons.delete),
            //           onPressed: () {
            //             context.read<CategoryBloc>().add(
            //                   CategoryEvent.deleteCategory(widget.id),
            //                 );
            //           },
            //         );
            //       },
            //     )
            //   ],
            // ),
          ),
        ));
  }
}
