import 'package:json_annotation/json_annotation.dart';

import 'image.dart';
import 'size.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  @JsonKey(name: '_id')
  String? id;
  String? productName;
  String? description;
  List<String>? color;
  String? brand;
  String? category;
  int? regularPrice;
  int? salePrice;
  int? offerPrice;
  List<Image>? images;
  bool? active;
  String? gender;
  String? createdOn;
  List<Size>? sizes;
  List<dynamic>? reviews;
  @JsonKey(name: '__v')
  int? v;

  Product({
    this.id,
    this.productName,
    this.description,
    this.color,
    this.brand,
    this.category,
    this.regularPrice,
    this.salePrice,
    this.offerPrice,
    this.images,
    this.active,
    this.gender,
    this.createdOn,
    this.sizes,
    this.reviews,
    this.v,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return _$ProductFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
