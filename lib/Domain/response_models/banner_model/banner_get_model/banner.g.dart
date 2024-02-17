// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Banners _$BannersFromJson(Map<String, dynamic> json) => Banners(
      id: json['_id'] as String?,
      description: json['Description'] as String?,
      status: json['Status'] as bool?,
      image: json['Image'] as String?,
      h1: json['h1'] as String?,
      h2: json['h2'] as String?,
      h3: json['h3'] as String?,
      p1: json['p1'] as String?,
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$BannersToJson(Banners instance) => <String, dynamic>{
      '_id': instance.id,
      'Description': instance.description,
      'Status': instance.status,
      'Image': instance.image,
      'h1': instance.h1,
      'h2': instance.h2,
      'h3': instance.h3,
      'p1': instance.p1,
      '__v': instance.v,
    };
