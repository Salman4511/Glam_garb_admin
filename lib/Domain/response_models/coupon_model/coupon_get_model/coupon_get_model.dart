import 'package:json_annotation/json_annotation.dart';

import 'coupon_datum.dart';

part 'coupon_get_model.g.dart';

@JsonSerializable()
class CouponGetModel {
  List<CouponDatum>? couponData;

  CouponGetModel({this.couponData});

  factory CouponGetModel.fromJson(Map<String, dynamic> json) {
    return _$CouponGetModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CouponGetModelToJson(this);
}
