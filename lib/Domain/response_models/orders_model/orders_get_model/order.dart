import 'package:json_annotation/json_annotation.dart';

import 'address.dart';
import 'item.dart';

part 'order.g.dart';

@JsonSerializable()
class Order {
  @JsonKey(name: 'Address')
  Address? address;
  @JsonKey(name: '_id')
  String? id;
  String? customerId;
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
  bool? orderReturn;
  String? returnReason;
  String? returnStatus;

  Order({
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
    this.orderReturn,
    this.returnReason,
    this.returnStatus,
  });

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  Map<String, dynamic> toJson() => _$OrderToJson(this);
}
