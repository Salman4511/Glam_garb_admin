import 'package:json_annotation/json_annotation.dart';

part 'sales_sort_model.g.dart';

@JsonSerializable()
class SalesSortModel {
  String? orderId;
  String? userName;
  String? userEmail;
  DateTime? orderDate;
  DateTime? deliveredOn;
  String? status;
  int? totalAmount;
  String? paymentMethod;

  SalesSortModel({
    this.orderId,
    this.userName,
    this.userEmail,
    this.orderDate,
    this.deliveredOn,
    this.status,
    this.totalAmount,
    this.paymentMethod,
  });

  factory SalesSortModel.fromJson(Map<String, dynamic> json) {
    return _$SalesSortModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SalesSortModelToJson(this);
}
