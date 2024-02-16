import 'package:json_annotation/json_annotation.dart';

import 'coupon_datum.dart';

part 'coupon_add_model.g.dart';

@JsonSerializable()
class CouponAddModel {
  String? message;
  List<CouponDatum>? couponData;

  CouponAddModel({this.message, this.couponData});

  factory CouponAddModel.fromJson(Map<String, dynamic> json) {
    return _$CouponAddModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CouponAddModelToJson(this);
}
