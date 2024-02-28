// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      productId: json['productId'] as String?,
      quantity: json['quantity'] as int?,
      size: json['size'] as String?,
      subtotal: json['subtotal'] as int?,
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'productId': instance.productId,
      'quantity': instance.quantity,
      'size': instance.size,
      'subtotal': instance.subtotal,
      '_id': instance.id,
    };
