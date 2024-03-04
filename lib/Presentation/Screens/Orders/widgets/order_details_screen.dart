import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb_admin/Application/orders/orders_bloc.dart';
import 'package:glam_garb_admin/Domain/response_models/orders_model/orders_get_model/orders_get_model.dart';
import 'package:glam_garb_admin/Infrastructure/Services/orders/orders_repo.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';

class OrderDetailsScreen extends StatefulWidget {
  final String id;
  final String name;
  final String orderId;
  final int mobile;
  final String area;
  final String city;
  final String state;
  final int pinCode;
  final String houseName;
  final String status;
  final int total;
  final String paymentType;
  final int newIndex;
  final String returnStatus;
  final String returnReason;

  const OrderDetailsScreen(
      {super.key,
      required this.orderId,
      required this.mobile,
      required this.area,
      required this.city,
      required this.pinCode,
      required this.houseName,
      required this.status,
      required this.total,
      required this.paymentType,
      required this.name,
      required this.state,
      required this.id,
      required this.newIndex,
      required this.returnStatus,
      required this.returnReason});

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    OrdersRepo repo = OrdersRepo();
    return Scaffold(
      // backgroundColor: kblackcolor,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              // color: kwhite,
            )),
        backgroundColor: kwhite,
        title: Text(
          'Order Details',
          style: ktextStyleForAppBar,
        ),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kheight50,
              Text(
                '  Details for OrderId:${widget.orderId}',
                style: ktextstyle4,
              ),
              kheight20,
              Text(
                '  Customer:',
                style: ktextstyle5,
              ),
              kheight,
              Row(
                children: [
                  kwidth50,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name: ${widget.name}',
                        style: ktextstyle6,
                      ),
                      Text(
                        'Contact No.: ${widget.mobile.toString()}',
                        style: ktextstyle6,
                      ),
                    ],
                  ),
                ],
              ),
              kheight20,
              Text(
                '  Deliver To:',
                style: ktextstyle5,
              ),
              kheight,
              Row(
                children: [
                  kwidth50,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${widget.name} ',
                        style: ktextstyle6,
                      ),
                      Text(
                        '${widget.houseName},${widget.city},${widget.area}',
                        style: ktextstyle6,
                      ),
                      Text(
                        '${widget.state},${widget.pinCode.toString()}',
                        style: ktextstyle6,
                      ),
                      Text(
                        widget.mobile.toString(),
                        style: ktextstyle6,
                      ),
                    ],
                  ),
                ],
              ),
              kheight20,
              Text(
                '  Payment Info:',
                style: ktextstyle5,
              ),
              kheight,
              Row(
                children: [
                  kwidth50,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Amount: ₹${widget.total.toString()}',
                        style: ktextstyle6,
                      ),
                      Text(
                        'Payment Methord: ${widget.paymentType}',
                        style: ktextstyle6,
                      ),
                    ],
                  ),
                ],
              ),
              kheight20,
              Text(
                '  Order Info:',
                style: ktextstyle5,
              ),
              kheight,
              Row(
                children: [
                  kwidth50,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Status: ${widget.status}',
                            style: ktextstyle6,
                          ),
                          kwidth07,
                          IconButton(
                              onPressed: () {
                                _showStatusDialog(context);
                              },
                              icon: const Icon(
                                Icons.edit,
                                color: kwhite,
                              ))
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          widget.returnStatus == 'Return requested'
              ? Row(
                  children: [
                    kwidth,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        kheight20,
                        Text(
                          'Return Reason:',
                          style: ktextstyle5,
                        ),
                        kheight,
                        Row(
                          children: [
                            kwidth50,
                            Text(
                              'Reason: ${widget.returnReason}',
                              style: ktextstyle6,
                            ),
                          ],
                        ),
                        kheight20,
                        Row(
                          children: [
                            kwidth50,
                            BlocBuilder<OrdersBloc, OrdersState>(
                              builder: (context, state) {
                                return ElevatedButton(
                                  onPressed: () {
                                   context.read<OrdersBloc>().add(
                                        OrdersEvent.acceptReturn(widget.id));
                                  },
                                  child: Text('Accept'),
                                );
                              },
                            ),
                            kwidth,
                            BlocBuilder<OrdersBloc, OrdersState>(
                              builder: (context, state) {
                                return ElevatedButton(
                                  onPressed: () {
                                    context.read<OrdersBloc>().add(
                                        OrdersEvent.rejectReturn(widget.id));
                                  },
                                  child: Text('Reject'),
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              : kheight,
          kheight20,
          Text(
            '  Product Info:',
            style: ktextstyle5,
          ),
          kheight,
          SizedBox(
            height: 400,
            child: FutureBuilder<OrdersGetModel>(
              future: repo.getOrders(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else if (!snapshot.hasData || snapshot.data?.orders == null) {
                  return const Center(
                    child: Text(
                      'No items found.',
                      style: TextStyle(color: kwhite),
                    ),
                  );
                } else {
                  final order = snapshot.data!.orders;
                  return ListView.builder(
                    itemCount: order![widget.newIndex].items!.length,
                    itemBuilder: (context, index) {
                      final product = order[widget.newIndex].items![index];
                      return GestureDetector(
                        onTap: () {
                          setState(() {});
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            color: baseColor.shade100,
                            child: Row(
                              children: [
                                kwidth,
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    kheight,
                                    Text(
                                      "ProductId: ${product.productId}",
                                    ),
                                    Text(
                                      "Quantity: ${product.quantity.toString()}",
                                    ),
                                    Text(
                                      "Size: ${product.size.toString()}",
                                    ),
                                    Text(
                                      "Total: ${product.subtotal.toString()}",
                                    ),
                                    kheight
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  void _showStatusDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String selectedStatus = 'Delivered'; // Default value

        return AlertDialog(
          title: const Text('Select Status'),
          content: Container(
            color: kwhite,
            child: DropdownButton<String>(
              value: selectedStatus,
              items: <String>[
                'Delivered',
                'Shipped',
              ]
                  .map<DropdownMenuItem<String>>(
                    (String value) => DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    ),
                  )
                  .toList(),
              onChanged: (String? newValue) {
                if (newValue != null) {
                  setState(() {
                    selectedStatus = newValue;
                  });
                }
              },
            ),
          ),
          actions: [
            BlocBuilder<OrdersBloc, OrdersState>(
              builder: (context, state) {
                return ElevatedButton(
                  onPressed: () {
                    print('Selected Status: $selectedStatus');
                    context
                        .read<OrdersBloc>()
                        .add(OrdersEvent.editOrders(widget.id, selectedStatus));
                    Navigator.pop(context);
                  },
                  child: const Text('Confirm'),
                );
              },
            )
          ],
        );
      },
    );
  }
}
