import 'package:json_annotation/json_annotation.dart';

import 'product.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel {
  String? status;
  String? message;
  Product? product;

  ProductModel({this.status, this.message, this.product});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return _$ProductModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}
