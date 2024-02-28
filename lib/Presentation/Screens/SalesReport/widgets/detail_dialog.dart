import 'package:flutter/material.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';

class OrderDetailsDialog extends StatefulWidget {
  final String orderId;
  final String name;
  final String email;
  final String date;
  final String orderStatus;
  final String paymentType;
  final int amount;

  const OrderDetailsDialog({
    super.key,
    required this.orderId,
    required this.name,
    required this.email,
    required this.date,
    required this.orderStatus,
    required this.paymentType,
    required this.amount,
  });

  @override
  State<OrderDetailsDialog> createState() => _OrderDetailsDialogState();
}

class _OrderDetailsDialogState extends State<OrderDetailsDialog> {
  @override
  Widget build(BuildContext context) {
    final dateformat = widget.date.toString().split(' ');
    final formattedDate = dateformat[0].toString();
    return AlertDialog(
      title: const Text('Order Details'),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildDetailRow('Order ID', widget.orderId),
          _buildDetailRow('Name', widget.name),
          _buildDetailRow('Email', widget.email),
          _buildDetailRow('Date', formattedDate),
          _buildDetailRow('Order Status', widget.orderStatus),
          _buildDetailRow('Payment Type', widget.paymentType),
          _buildDetailRow('Amount', widget.amount.toString()),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Back'),
        ),
      ],
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: '$label: ',
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: kblackcolor),
            ),
            TextSpan(
                text: value,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: kblackcolor)),
          ],
        ),
      ),
    );
  }
}
