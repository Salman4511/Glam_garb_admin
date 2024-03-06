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
    String? formattedDate = dateformat[0].toString();
    var thisDate = formattedDate.split('-');
    var month = thisDate.elementAt(0);
    if (month == '01') {
      month = 'Jan';
    }
    if (month == '02') {
      month = 'Feb';
    }
    if (month == '03') {
      month = 'Mar';
    }
    if (month == '04') {
      month = 'Apr';
    }
    if (month == '05') {
      month = 'May';
    }
    if (month == '06') {
      month = 'Jun';
    }
    if (month == '07') {
      month = 'Jul';
    }
    if (month == '08') {
      month = 'Aug';
    }
    if (month == '09') {
      month = 'Sep';
    }
    if (month == '10') {
      month = 'Oct';
    }
    if (month == '11') {
      month = 'Nov';
    }
    if (month == '12') {
      month = 'Dec';
    }

    return Card(
      color: baseColor.shade100,
      child: ListTile(
        leading: Text(
          widget.id,
          style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 15),
        ),
        title: Center(
          child: Text(
            widget.customerName,
            style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
          ),
        ),
        subtitle: Column(
          children: [
            kheight20,
            Center(child: Text(formattedDate)),
            kheight20,
            widget.returnStatus == 'Return requested'
                ? const Text(
                    '•Return Requested',
                    style: TextStyle(color: Colors.red),
                  )
                : const Text('')
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
