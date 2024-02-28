// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionDetail _$TransactionDetailFromJson(Map<String, dynamic> json) =>
    TransactionDetail(
      transactionType: json['transactionType'] as String?,
      transactionAmount: json['transactionAmount'] as int?,
      orderId: json['orderId'] as String?,
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$TransactionDetailToJson(TransactionDetail instance) =>
    <String, dynamic>{
      'transactionType': instance.transactionType,
      'transactionAmount': instance.transactionAmount,
      'orderId': instance.orderId,
      '_id': instance.id,
    };
