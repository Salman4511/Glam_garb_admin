// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: json['_id'] as String?,
      productName: json['productName'] as String?,
      description: json['description'] as String?,
      color:
          (json['color'] as List<dynamic>?)?.map((e) => e as String).toList(),
      sizes: (json['sizes'] as List<dynamic>?)
          ?.map((e) => Size.fromJson(e as Map<String, dynamic>))
          .toList(),
      brand: json['brand'] as String?,
      category: json['category'] as String?,
      regularPrice: json['regularPrice'] as int?,
      salePrice: json['salePrice'] as int?,
      offerPrice: json['offerPrice'] as int?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
      active: json['active'] as bool?,
      gender: json['gender'] as String?,
      createdOn: json['createdOn'] as String?,
      reviews: json['reviews'] as List<dynamic>?,
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      '_id': instance.id,
      'productName': instance.productName,
      'description': instance.description,
      'color': instance.color,
      'sizes': instance.sizes,
      'brand': instance.brand,
      'category': instance.category,
      'regularPrice': instance.regularPrice,
      'salePrice': instance.salePrice,
      'offerPrice': instance.offerPrice,
      'images': instance.images,
      'active': instance.active,
      'gender': instance.gender,
      'createdOn': instance.createdOn,
      'reviews': instance.reviews,
      '__v': instance.v,
    };
