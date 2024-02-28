// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cart _$CartFromJson(Map<String, dynamic> json) => Cart(
      productId: json['productId'] as String?,
      quantity: json['quantity'] as int?,
      size: json['size'] as String?,
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$CartToJson(Cart instance) => <String, dynamic>{
      'productId': instance.productId,
      'quantity': instance.quantity,
      'size': instance.size,
      '_id': instance.id,
    };
