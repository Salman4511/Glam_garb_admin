// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_get_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserGetModel _$UserGetModelFromJson(Map<String, dynamic> json) => UserGetModel(
      users: (json['users'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentPage: json['currentPage'] as int?,
      totalPages: json['totalPages'] as int?,
    );

Map<String, dynamic> _$UserGetModelToJson(UserGetModel instance) =>
    <String, dynamic>{
      'users': instance.users,
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
    };
