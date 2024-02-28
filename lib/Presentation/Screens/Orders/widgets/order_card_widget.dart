import 'package:flutter/material.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';

class OrderCardWidget extends StatefulWidget {
  final String id;
  final String customerName;
  final dynamic date;
  final String status;
  final String returnStatus;
  const OrderCardWidget(
      {super.key,
      required this.id,
      required this.customerName,
      required this.date,
      required this.status,
      required this.returnStatus});

  @override
  State<OrderCardWidget> createState() => _OrderCardWidgetState();
}

class _OrderCardWidgetState extends State<OrderCardWidget> {
  @override
  Widget build(BuildContext context) {
    final dateformat = widget.date.toString().split(' ');
    final formattedDate = dateformat[0].toString();
    return Card(
      child: ListTile(
        leading: Text(
          widget.id,
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 15),
        ),
        title: Center(
          child: Text(
            widget.customerName,
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
          ),
        ),
        subtitle: Column(
          children: [
            kheight20,
            Center(child: Text(formattedDate)),
            kheight20,
            widget.returnStatus == 'Return requested'
                ? Text(
                    '•Return Requested',
                    style: TextStyle(color: Colors.red),
                  )
                : Text('')
          ],
        ),
        trailing: Text(
          '₹${widget.status}',
          style: widget.status == 'Delivered'
              ? ktextStyleforstatus2
              : widget.status == 'Pending'
                  ? ktextStyleforstatus1
                  : ktextStyleforstatus3,
        ),
      ),
    );
  }
}
