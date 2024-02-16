// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CouponDatum _$CouponDatumFromJson(Map<String, dynamic> json) => CouponDatum(
      id: json['_id'] as String?,
      code: json['Code'] as String?,
      description: json['Description'] as String?,
      discount: json['Discount'] as int?,
      maximumAmount: json['MaximumAmount'] as int?,
      minimumAmount: json['MinimumAmount'] as int?,
      expiry: json['Expiry'] == null
          ? null
          : DateTime.parse(json['Expiry'] as String),
      customers: json['Customers'] as List<dynamic>?,
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$CouponDatumToJson(CouponDatum instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'Code': instance.code,
      'Description': instance.description,
      'Discount': instance.discount,
      'MaximumAmount': instance.maximumAmount,
      'MinimumAmount': instance.minimumAmount,
      'Expiry': instance.expiry?.toIso8601String(),
      'Customers': instance.customers,
      '__v': instance.v,
    };
