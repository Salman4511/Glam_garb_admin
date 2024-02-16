// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_get_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CouponGetModel _$CouponGetModelFromJson(Map<String, dynamic> json) =>
    CouponGetModel(
      couponData: (json['couponData'] as List<dynamic>?)
          ?.map((e) => CouponDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CouponGetModelToJson(CouponGetModel instance) =>
    <String, dynamic>{
      'couponData': instance.couponData,
    };
