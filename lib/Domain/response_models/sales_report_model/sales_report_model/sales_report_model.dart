import 'package:json_annotation/json_annotation.dart';

import 'sale.dart';

part 'sales_report_model.g.dart';

@JsonSerializable()
class SalesReportModel {
  List<Sale>? sales;

  SalesReportModel({this.sales});

  factory SalesReportModel.fromJson(Map<String, dynamic> json) {
    return _$SalesReportModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SalesReportModelToJson(this);
}
