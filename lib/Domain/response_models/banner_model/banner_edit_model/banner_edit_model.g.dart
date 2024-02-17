// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_edit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerEditModel _$BannerEditModelFromJson(Map<String, dynamic> json) =>
    BannerEditModel(
      updated: json['updated'] == null
          ? null
          : Updated.fromJson(json['updated'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BannerEditModelToJson(BannerEditModel instance) =>
    <String, dynamic>{
      'updated': instance.updated,
    };
