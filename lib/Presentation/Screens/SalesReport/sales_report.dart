import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb_admin/Application/sales_report/sales_report_bloc.dart';
import 'package:glam_garb_admin/Domain/response_models/sales_report_model/sales_report_model/sales_report_model.dart';
import 'package:glam_garb_admin/Infrastructure/Services/sales_report/sales_report_repo.dart';
import 'package:glam_garb_admin/Presentation/Screens/salesReport/widgets/card_widget.dart';
import 'package:glam_garb_admin/Presentation/Screens/salesReport/widgets/detail_dialog.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';
import 'package:intl/intl.dart';

class SalesReport extends StatefulWidget {
  const SalesReport({super.key});

  @override
  State<SalesReport> createState() => _SalesReportState();
}

class _SalesReportState extends State<SalesReport> {
  TextEditingController searchController = TextEditingController();
  SalesReportRepo repo = SalesReportRepo();
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
                BlocBuilder<SalesReportBloc, SalesReportState>(
                  builder: (context, state) {
                    return FutureBuilder<SalesReportModel>(
                        future: searchController.text == ''
                            ? repo.salesReport()
                            : repo.SortSalesReport(searchController.text),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return Center(child: CircularProgressIndicator());
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else if (!snapshot.hasData ||
                              snapshot.data?.sales == null) {
                            return Text('No brands found.');
                          } else {
                            final sales = snapshot.data!;
                            return SingleChildScrollView(
                              child: Column(
                                children: [
                                  !isClicked ? kheight90 : kheight130,
                                  ListView.builder(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: sales.sales!.length,
                                    reverse: true,
                                    itemBuilder: (context, index) =>
                                        GestureDetector(
                                      onTap: () {
                                        // Handle brand item tap
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return OrderDetailsDialog(
                                              orderId:
                                                  sales.sales![index].orderId ??
                                                      '',
                                              name: sales
                                                      .sales![index].userName ??
                                                  '',
                                              email: sales.sales![index]
                                                      .userEmail ??
                                                  '',
                                              date: sales
                                                      .sales![index].orderDate
                                                      ?.toString() ??
                                                  '',
                                              orderStatus:
                                                  sales.sales![index].status ??
                                                      '',
                                              paymentType: sales.sales![index]
                                                      .paymentMethod ??
                                                  '',
                                              amount: sales.sales![index]
                                                      .totalAmount ??
                                                  0,
                                            );
                                          },
                                        );
                                      },
                                      child: MyCardTile(
                                        id: sales.sales![index].orderId ?? '',
                                        customerName:
                                            sales.sales![index].userName ?? '',
                                        date:
                                            sales.sales![index].orderDate ?? '',
                                        amount:
                                            sales.sales![index].totalAmount ??
                                                0,
                                      ),
                                    ),
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
                              'Sales Report',
                              style: ktextStyleForAppBar,
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    isClicked = !isClicked;
                                  });
                                },
                                icon: const Icon(
                                  Icons.filter_list,
                                  color: kwhite,
                                ))
                          ],
                        )),
                    if (isClicked)
                      BlocBuilder<SalesReportBloc, SalesReportState>(
                        builder: (context, state) {
                          return CupertinoSearchTextField(
                            backgroundColor: kwhite,
                            placeholder: 'Sort by Date...',
                            keyboardType: TextInputType.none,
                            controller: searchController,
                            onChanged: (value) {
                              context
                                  .read<SalesReportBloc>()
                                  .add(SalesReportEvent.sortSales(value));
                            },
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1950),
                                  lastDate: DateTime(2100));

                              if (pickedDate != null) {
                                String formattedDate =
                                    DateFormat('yyyy-MM-dd').format(pickedDate);
                                setState(() {
                                  searchController.text = formattedDate;
                                });
                              } else {}
                            },
                          );
                        },
                      ),
                    const SizedBox(
                      height: 1,
                    ),
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
