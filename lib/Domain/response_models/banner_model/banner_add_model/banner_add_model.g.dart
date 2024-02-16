// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_add_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerAddModel _$BannerAddModelFromJson(Map<String, dynamic> json) =>
    BannerAddModel(
      banner: (json['banner'] as List<dynamic>?)
          ?.map((e) => Banner.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BannerAddModelToJson(BannerAddModel instance) =>
    <String, dynamic>{
      'banner': instance.banner,
    };
