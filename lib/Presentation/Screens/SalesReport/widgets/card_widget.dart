import 'package:flutter/material.dart';

class MyCardTile extends StatefulWidget {
  final String id;
  final String customerName;
  final dynamic date;
  final int amount;
  const MyCardTile(
      {super.key,
      required this.id,
      required this.customerName,
      required this.date,
      required this.amount});

  @override
  State<MyCardTile> createState() => _MyCardTileState();
}

class _MyCardTileState extends State<MyCardTile> {
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
        subtitle: Center(child: Text(formattedDate)),
        trailing: Text(
          '₹${widget.amount.toString()}',
          style: TextStyle(
              color: Colors.green, fontWeight: FontWeight.w900, fontSize: 18),
        ),
      ),
    );
  }
}
