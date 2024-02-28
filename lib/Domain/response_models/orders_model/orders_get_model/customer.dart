import 'package:json_annotation/json_annotation.dart';

import 'address.dart';
import 'customer_id.dart';
import 'item.dart';

part 'customer.g.dart';

@JsonSerializable()
class Customer {
  @JsonKey(name: 'Address')
  Address? address;
  @JsonKey(name: '_id')
  String? id;
  CustomerId? customerId;
  @JsonKey(name: 'Items')
  List<Item>? items;
  String? paymentMethod;
  int? shippingcharge;
  int? coupondiscount;
  int? categorydiscount;
  int? totalAmount;
  DateTime? createdOn;
  String? status;
  String? orderId;
  @JsonKey(name: '__v')
  int? v;
  DateTime? deliveredOn;
  @JsonKey(name: 'return')
  bool? customerReturn;
  String? returnReason;
  String? returnStatus;

  Customer({
    this.address,
    this.id,
    this.customerId,
    this.items,
    this.paymentMethod,
    this.shippingcharge,
    this.coupondiscount,
    this.categorydiscount,
    this.totalAmount,
    this.createdOn,
    this.status,
    this.orderId,
    this.v,
    this.deliveredOn,
    this.customerReturn,
    this.returnReason,
    this.returnStatus,
  });

  factory Customer.fromJson(Map<String, dynamic> json) {
    return _$CustomerFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CustomerToJson(this);
}
