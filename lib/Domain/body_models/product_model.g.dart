// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductPassModel _$ProductPassModelFromJson(Map<String, dynamic> json) =>
    ProductPassModel()
      ..productName = json['productName'] as String?
      ..description = json['description'] as String?
      ..color =
          (json['color'] as List<dynamic>?)?.map((e) => e as String).toList()
      ..sizes = (json['sizes'] as List<dynamic>?)
          ?.map((e) => Size.fromJson(e as Map<String, dynamic>))
          .toList()
      ..brand = json['brand'] as String?
      ..category = json['category'] as String?
      ..regularPrice = (json['regularPrice'] as num?)?.toDouble()
      ..salePrice = (json['salePrice'] as num?)?.toDouble()
      ..offerPrice = (json['offerPrice'] as num?)?.toDouble()
      ..images = (json['images'] as List<dynamic>?)
          ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList()
      ..active = json['active'] as bool?
      ..gender = json['gender'] as String?
      ..createdOn = json['createdOn'] as String?
      ..reviews = (json['reviews'] as List<dynamic>?)
          ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ProductPassModelToJson(ProductPassModel instance) =>
    <String, dynamic>{
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
    };

Size _$SizeFromJson(Map<String, dynamic> json) => Size()
  ..size = json['size'] as String?
  ..stock = json['stock'] as int?;

Map<String, dynamic> _$SizeToJson(Size instance) => <String, dynamic>{
      'size': instance.size,
      'stock': instance.stock,
    };

Image _$ImageFromJson(Map<String, dynamic> json) =>
    Image()..url = json['url'] as String?;

Map<String, dynamic> _$ImageToJson(Image instance) => <String, dynamic>{
      'url': instance.url,
    };

Review _$ReviewFromJson(Map<String, dynamic> json) => Review()
  ..name = json['name'] as String?
  ..rating = (json['rating'] as num?)?.toDouble()
  ..comment = json['comment'] as String?
  ..addedOn = json['addedOn'] as String?;

Map<String, dynamic> _$ReviewToJson(Review instance) => <String, dynamic>{
      'name': instance.name,
      'rating': instance.rating,
      'comment': instance.comment,
      'addedOn': instance.addedOn,
    };
