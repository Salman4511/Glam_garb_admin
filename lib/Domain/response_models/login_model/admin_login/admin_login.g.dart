// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminLogin _$AdminLoginFromJson(Map<String, dynamic> json) => AdminLogin(
      id: json['_id'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$AdminLoginToJson(AdminLogin instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'email': instance.email,
      'password': instance.password,
      'token': instance.token,
    };
