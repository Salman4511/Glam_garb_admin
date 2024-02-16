// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_delete_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDeleteModel _$ProductDeleteModelFromJson(Map<String, dynamic> json) =>
    ProductDeleteModel(
      status: json['status'] as String?,
      message: json['message'] as String?,
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductDeleteModelToJson(ProductDeleteModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'product': instance.product,
    };
