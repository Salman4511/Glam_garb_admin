// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_get_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerGetModel _$BannerGetModelFromJson(Map<String, dynamic> json) =>
    BannerGetModel(
      banner: (json['banner'] as List<dynamic>?)
          ?.map((e) => Banners.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BannerGetModelToJson(BannerGetModel instance) =>
    <String, dynamic>{
      'banner': instance.banner,
    };
