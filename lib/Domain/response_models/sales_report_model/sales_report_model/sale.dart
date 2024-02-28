import 'package:json_annotation/json_annotation.dart';

part 'sale.g.dart';

@JsonSerializable()
class Sale {
  String? orderId;
  String? userName;
  String? userEmail;
  DateTime? orderDate;
  DateTime? deliveredOn;
  String? status;
  int? totalAmount;
  String? paymentMethod;

  Sale({
    this.orderId,
    this.userName,
    this.userEmail,
    this.orderDate,
    this.deliveredOn,
    this.status,
    this.totalAmount,
    this.paymentMethod,
  });

  factory Sale.fromJson(Map<String, dynamic> json) => _$SaleFromJson(json);

  Map<String, dynamic> toJson() => _$SaleToJson(this);
}
