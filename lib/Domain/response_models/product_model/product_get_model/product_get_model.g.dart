// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_get_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductGetModel _$ProductGetModelFromJson(Map<String, dynamic> json) =>
    ProductGetModel(
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductGetModelToJson(ProductGetModel instance) =>
    <String, dynamic>{
      'products': instance.products,
    };
