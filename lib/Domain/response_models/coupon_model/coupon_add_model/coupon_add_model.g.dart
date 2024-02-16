// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_add_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CouponAddModel _$CouponAddModelFromJson(Map<String, dynamic> json) =>
    CouponAddModel(
      message: json['message'] as String?,
      couponData: (json['couponData'] as List<dynamic>?)
          ?.map((e) => CouponDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CouponAddModelToJson(CouponAddModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'couponData': instance.couponData,
    };
