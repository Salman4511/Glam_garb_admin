import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb_admin/Application/orders/orders_bloc.dart';
import 'package:glam_garb_admin/Application/sales_report/sales_report_bloc.dart';
import 'package:glam_garb_admin/Domain/response_models/orders_model/orders_get_model/orders_get_model.dart';
import 'package:glam_garb_admin/Infrastructure/Services/orders/orders_repo.dart';
import 'package:glam_garb_admin/Presentation/Screens/orders/widgets/order_card_widget.dart';
import 'package:glam_garb_admin/Presentation/Screens/orders/widgets/order_details_screen.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  TextEditingController searchController = TextEditingController();
  OrdersRepo repo = OrdersRepo();
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SalesReportBloc, SalesReportState>(
      builder: (context, state) {
        return Scaffold(
          // backgroundColor: kblackcolor,
          body: SafeArea(
            child: Stack(
              children: [
                BlocBuilder<OrdersBloc, OrdersState>(
                  builder: (context, state) {
                    return FutureBuilder<OrdersGetModel>(
                        future: repo.getOrders(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const Center(
                                child: CircularProgressIndicator());
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else if (!snapshot.hasData ||
                              snapshot.data?.orders == null) {
                            return const Text('No brands found.');
                          } else {
                            final orders = snapshot.data!;
                            return SingleChildScrollView(
                              child: Column(
                                children: [
                                  !isClicked ? kheight90 : kheight130,
                                  ListView.builder(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: orders.orders!.length,
                                    reverse: true,
                                    itemBuilder: (context, index) =>
                                        GestureDetector(
                                            onTap: () {
                                              // Handle brand item tap
                                              Navigator.push(
                                                  context,
                                                  CupertinoPageRoute(
                                                      builder: (context) =>
                                                          OrderDetailsScreen(
                                                            orderId: orders
                                                                    .orders![
                                                                        index]
                                                                    .orderId ??
                                                                '',
                                                            mobile: orders
                                                                    .orders![
                                                                        index]
                                                                    .address!
                                                                    .mobile ??
                                                                0,
                                                            area: orders
                                                                    .orders![
                                                                        index]
                                                                    .address!
                                                                    .area ??
                                                                '',
                                                            city: orders
                                                                    .orders![
                                                                        index]
                                                                    .address!
                                                                    .city ??
                                                                '',
                                                            pinCode: orders
                                                                    .orders![
                                                                        index]
                                                                    .address!
                                                                    .pincode ??
                                                                0,
                                                            houseName: orders
                                                                    .orders![
                                                                        index]
                                                                    .address!
                                                                    .housename ??
                                                                '',
                                                            status: orders
                                                                    .orders![
                                                                        index]
                                                                    .status ??
                                                                '',
                                                            total: orders
                                                                    .orders![
                                                                        index]
                                                                    .totalAmount ??
                                                                0,
                                                            paymentType: orders
                                                                    .orders![
                                                                        index]
                                                                    .paymentMethod ??
                                                                '',
                                                            name: orders
                                                                    .orders![
                                                                        index]
                                                                    .address!
                                                                    .name ??
                                                                '',
                                                            state: orders
                                                                    .orders![
                                                                        index]
                                                                    .address!
                                                                    .state ??
                                                                '',
                                                            id: orders
                                                                    .orders![
                                                                        index]
                                                                    .id ??
                                                                '',
                                                            newIndex: index,
                                                            returnStatus: orders
                                                                    .orders![
                                                                        index]
                                                                    .returnStatus ??
                                                                '',
                                                            returnReason: orders
                                                                    .orders![
                                                                        index]
                                                                    .returnReason ??
                                                                '',
                                                          )));
                                            },
                                            child: OrderCardWidget(
                                              id: orders
                                                      .orders![index].orderId ??
                                                  '',
                                              customerName: orders
                                                      .orders![index]
                                                      .address!
                                                      .name ??
                                                  '',
                                              date: orders
                                                  .orders![index].deliveredOn,
                                              status: orders
                                                      .orders![index].status ??
                                                  '',
                                              returnStatus: orders
                                                      .orders![index]
                                                      .returnStatus ??
                                                  '',
                                            )),
                                  ),
                                ],
                              ),
                            );
                          }
                        });
                  },
                ),
                Column(
                  children: [
                    kheight20,
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Orders List',
                              style: ktextStyleForAppBar,
                            ),
                          ],
                        )),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
