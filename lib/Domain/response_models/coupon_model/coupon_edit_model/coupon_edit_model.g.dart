// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_edit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CouponEditModel _$CouponEditModelFromJson(Map<String, dynamic> json) =>
    CouponEditModel(
      success: json['success'] == null
          ? null
          : Success.fromJson(json['success'] as Map<String, dynamic>),
      coupon: json['coupon'] == null
          ? null
          : Coupon.fromJson(json['coupon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CouponEditModelToJson(CouponEditModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'coupon': instance.coupon,
    };
