import 'package:json_annotation/json_annotation.dart';

part 'coupon.g.dart';

@JsonSerializable()
class Coupon {
  @JsonKey(name: '_id')
  String? id;
  @JsonKey(name: 'Code')
  String? code;
  @JsonKey(name: 'Description')
  String? description;
  @JsonKey(name: 'Discount')
  int? discount;
  @JsonKey(name: 'MaximumAmount')
  int? maximumAmount;
  @JsonKey(name: 'MinimumAmount')
  int? minimumAmount;
  @JsonKey(name: 'Expiry')
  String? expiry;
  @JsonKey(name: 'Customers')
  List<dynamic>? customers;
  @JsonKey(name: '__v')
  int? v;

  Coupon({
    this.id,
    this.code,
    this.description,
    this.discount,
    this.maximumAmount,
    this.minimumAmount,
    this.expiry,
    this.customers,
    this.v,
  });

  factory Coupon.fromJson(Map<String, dynamic> json) {
    return _$CouponFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CouponToJson(this);
}
