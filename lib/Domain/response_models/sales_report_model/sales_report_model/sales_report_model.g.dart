// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalesReportModel _$SalesReportModelFromJson(Map<String, dynamic> json) =>
    SalesReportModel(
      sales: (json['sales'] as List<dynamic>?)
          ?.map((e) => Sale.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SalesReportModelToJson(SalesReportModel instance) =>
    <String, dynamic>{
      'sales': instance.sales,
    };
