// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_block_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserBlockModel _$UserBlockModelFromJson(Map<String, dynamic> json) =>
    UserBlockModel(
      message: json['message'] as String?,
      newuser: json['newuser'] == null
          ? null
          : Newuser.fromJson(json['newuser'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserBlockModelToJson(UserBlockModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'newuser': instance.newuser,
    };
