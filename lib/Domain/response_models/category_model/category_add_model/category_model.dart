import 'package:json_annotation/json_annotation.dart';

import 'category.dart';

part 'category_model.g.dart';

@JsonSerializable()
class CategoryModel {
  String? status;
  String? message;
  Category? category;

  CategoryModel({this.status, this.message, this.category});

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return _$CategoryModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}
