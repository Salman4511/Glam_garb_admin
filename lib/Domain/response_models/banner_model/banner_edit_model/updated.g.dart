// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Updated _$UpdatedFromJson(Map<String, dynamic> json) => Updated(
      acknowledged: json['acknowledged'] as bool?,
      modifiedCount: json['modifiedCount'] as int?,
      upsertedId: json['upsertedId'],
      upsertedCount: json['upsertedCount'] as int?,
      matchedCount: json['matchedCount'] as int?,
    );

Map<String, dynamic> _$UpdatedToJson(Updated instance) => <String, dynamic>{
      'acknowledged': instance.acknowledged,
      'modifiedCount': instance.modifiedCount,
      'upsertedId': instance.upsertedId,
      'upsertedCount': instance.upsertedCount,
      'matchedCount': instance.matchedCount,
    };
