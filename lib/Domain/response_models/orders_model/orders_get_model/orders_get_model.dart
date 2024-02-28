import 'package:json_annotation/json_annotation.dart';

import 'customer.dart';
import 'order.dart';

part 'orders_get_model.g.dart';

@JsonSerializable()
class OrdersGetModel {
  List<Order>? orders;
  List<Customer>? customer;
  int? currentPage;
  int? totalPages;

  OrdersGetModel({
    this.orders,
    this.customer,
    this.currentPage,
    this.totalPages,
  });

  factory OrdersGetModel.fromJson(Map<String, dynamic> json) {
    return _$OrdersGetModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OrdersGetModelToJson(this);
}
