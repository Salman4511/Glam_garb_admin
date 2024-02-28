// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customer _$CustomerFromJson(Map<String, dynamic> json) => Customer(
      address: json['Address'] == null
          ? null
          : Address.fromJson(json['Address'] as Map<String, dynamic>),
      id: json['_id'] as String?,
      customerId: json['customerId'] == null
          ? null
          : CustomerId.fromJson(json['customerId'] as Map<String, dynamic>),
      items: (json['Items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      paymentMethod: json['paymentMethod'] as String?,
      shippingcharge: json['shippingcharge'] as int?,
      coupondiscount: json['coupondiscount'] as int?,
      categorydiscount: json['categorydiscount'] as int?,
      totalAmount: json['totalAmount'] as int?,
      createdOn: json['createdOn'] == null
          ? null
          : DateTime.parse(json['createdOn'] as String),
      status: json['status'] as String?,
      orderId: json['orderId'] as String?,
      v: json['__v'] as int?,
      deliveredOn: json['deliveredOn'] == null
          ? null
          : DateTime.parse(json['deliveredOn'] as String),
      customerReturn: json['return'] as bool?,
      returnReason: json['returnReason'] as String?,
      returnStatus: json['returnStatus'] as String?,
    );

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
      'Address': instance.address,
      '_id': instance.id,
      'customerId': instance.customerId,
      'Items': instance.items,
      'paymentMethod': instance.paymentMethod,
      'shippingcharge': instance.shippingcharge,
      'coupondiscount': instance.coupondiscount,
      'categorydiscount': instance.categorydiscount,
      'totalAmount': instance.totalAmount,
      'createdOn': instance.createdOn?.toIso8601String(),
      'status': instance.status,
      'orderId': instance.orderId,
      '__v': instance.v,
      'deliveredOn': instance.deliveredOn?.toIso8601String(),
      'return': instance.customerReturn,
      'returnReason': instance.returnReason,
      'returnStatus': instance.returnStatus,
    };
