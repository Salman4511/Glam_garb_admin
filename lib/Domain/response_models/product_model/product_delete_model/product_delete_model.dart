import 'package:json_annotation/json_annotation.dart';

import 'product.dart';

part 'product_delete_model.g.dart';

@JsonSerializable()
class ProductDeleteModel {
  String? status;
  String? message;
  Product? product;

  ProductDeleteModel({this.status, this.message, this.product});

  factory ProductDeleteModel.fromJson(Map<String, dynamic> json) {
    return _$ProductDeleteModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductDeleteModelToJson(this);
}
