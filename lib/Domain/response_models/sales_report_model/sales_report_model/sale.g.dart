// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sale _$SaleFromJson(Map<String, dynamic> json) => Sale(
      orderId: json['orderId'] as String?,
      userName: json['userName'] as String?,
      userEmail: json['userEmail'] as String?,
      orderDate: json['orderDate'] == null
          ? null
          : DateTime.parse(json['orderDate'] as String),
      deliveredOn: json['deliveredOn'] == null
          ? null
          : DateTime.parse(json['deliveredOn'] as String),
      status: json['status'] as String?,
      totalAmount: json['totalAmount'] as int?,
      paymentMethod: json['paymentMethod'] as String?,
    );

Map<String, dynamic> _$SaleToJson(Sale instance) => <String, dynamic>{
      'orderId': instance.orderId,
      'userName': instance.userName,
      'userEmail': instance.userEmail,
      'orderDate': instance.orderDate?.toIso8601String(),
      'deliveredOn': instance.deliveredOn?.toIso8601String(),
      'status': instance.status,
      'totalAmount': instance.totalAmount,
      'paymentMethod': instance.paymentMethod,
    };
