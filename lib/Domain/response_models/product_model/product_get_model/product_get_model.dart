import 'package:json_annotation/json_annotation.dart';

import 'product.dart';

part 'product_get_model.g.dart';

@JsonSerializable()
class ProductGetModel {
  List<Product>? products;

  ProductGetModel({this.products});

  factory ProductGetModel.fromJson(Map<String, dynamic> json) {
    return _$ProductGetModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductGetModelToJson(this);
}
