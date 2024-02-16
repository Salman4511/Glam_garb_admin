import 'package:json_annotation/json_annotation.dart';

part 'coupon_del_model.g.dart';

@JsonSerializable()
class CouponDelModel {
  String? message;

  CouponDelModel({this.message});

  factory CouponDelModel.fromJson(Map<String, dynamic> json) {
    return _$CouponDelModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CouponDelModelToJson(this);
}
