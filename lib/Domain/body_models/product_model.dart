import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductPassModel {
  String? productName;
  String? description;
  List<String>? color;
  List<Size>? sizes;
  String? brand;
  String? category;
  double? regularPrice;
  double? salePrice;
  double? offerPrice;
  List<Image>? images;
  bool? active;
  String? gender;
  String? createdOn;
  List<Review>? reviews;

  ProductPassModel();

  factory ProductPassModel.fromJson(Map<String, dynamic> json) =>
      _$ProductPassModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductPassModelToJson(this);
}

@JsonSerializable()
class Size {
  String? size;
  int? stock;

  Size();

  factory Size.fromJson(Map<String, dynamic> json) => _$SizeFromJson(json);

  Map<String, dynamic> toJson() => _$SizeToJson(this);
}

@JsonSerializable()
class Image {
  String? url;

  Image();

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

  Map<String, dynamic> toJson() => _$ImageToJson(this);
}

@JsonSerializable()
class Review {
  String? name;
  double? rating;
  String? comment;
  String? addedOn;

  Review();

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewToJson(this);
}
