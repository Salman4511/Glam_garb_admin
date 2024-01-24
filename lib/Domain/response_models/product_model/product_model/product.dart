import 'package:json_annotation/json_annotation.dart';

import 'image.dart';
import 'size.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  String? productName;
  String? description;
  List<String>? color;
  List<Size>? sizes;
  String? brand;
  String? category;
  int? regularPrice;
  int? salePrice;
  int? offerPrice;
  List<Image>? images;
  bool? active;
  String? gender;
  String? createdOn;
  @JsonKey(name: '_id')
  String? id;
  List<dynamic>? reviews;
  @JsonKey(name: '__v')
  int? v;

  Product({
    this.productName,
    this.description,
    this.color,
    this.sizes,
    this.brand,
    this.category,
    this.regularPrice,
    this.salePrice,
    this.offerPrice,
    this.images,
    this.active,
    this.gender,
    this.createdOn,
    this.id,
    this.reviews,
    this.v,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return _$ProductFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
