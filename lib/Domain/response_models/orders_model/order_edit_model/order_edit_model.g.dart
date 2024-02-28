// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_edit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderEditModel _$OrderEditModelFromJson(Map<String, dynamic> json) =>
    OrderEditModel(
      message: json['message'] as String?,
      update: json['update'] == null
          ? null
          : Update.fromJson(json['update'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderEditModelToJson(OrderEditModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'update': instance.update,
    };
