import 'package:json_annotation/json_annotation.dart';

import 'coupon.dart';
import 'success.dart';

part 'coupon_edit_model.g.dart';

@JsonSerializable()
class CouponEditModel {
  Success? success;
  Coupon? coupon;

  CouponEditModel({this.success, this.coupon});

  factory CouponEditModel.fromJson(Map<String, dynamic> json) {
    return _$CouponEditModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CouponEditModelToJson(this);
}
