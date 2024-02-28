// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_get_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrdersGetModel _$OrdersGetModelFromJson(Map<String, dynamic> json) =>
    OrdersGetModel(
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
      customer: (json['customer'] as List<dynamic>?)
          ?.map((e) => Customer.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentPage: json['currentPage'] as int?,
      totalPages: json['totalPages'] as int?,
    );

Map<String, dynamic> _$OrdersGetModelToJson(OrdersGetModel instance) =>
    <String, dynamic>{
      'orders': instance.orders,
      'customer': instance.customer,
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
    };
