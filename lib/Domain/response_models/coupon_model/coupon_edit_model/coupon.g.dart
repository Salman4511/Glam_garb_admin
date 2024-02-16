// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Coupon _$CouponFromJson(Map<String, dynamic> json) => Coupon(
      id: json['_id'] as String?,
      code: json['Code'] as String?,
      description: json['Description'] as String?,
      discount: json['Discount'] as int?,
      maximumAmount: json['MaximumAmount'] as int?,
      minimumAmount: json['MinimumAmount'] as int?,
      expiry: json['Expiry'] as String?,
      customers: json['Customers'] as List<dynamic>?,
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$CouponToJson(Coupon instance) => <String, dynamic>{
      '_id': instance.id,
      'Code': instance.code,
      'Description': instance.description,
      'Discount': instance.discount,
      'MaximumAmount': instance.maximumAmount,
      'MinimumAmount': instance.minimumAmount,
      'Expiry': instance.expiry,
      'Customers': instance.customers,
      '__v': instance.v,
    };
