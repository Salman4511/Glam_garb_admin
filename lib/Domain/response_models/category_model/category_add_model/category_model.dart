// import 'package:json_annotation/json_annotation.dart';

// import 'category.dart';

// part 'category_model.g.dart';

// @JsonSerializable()
// class CategoryModel {
//   String? status;
//   String? message;
//   Category? category;

//   CategoryModel({this.status, this.message, this.category});

//   factory CategoryModel.fromJson(Map<String, dynamic> json) {
//     return _$CategoryModelFromJson(json);
//   }

//   Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
// }

class CategoryModel {
  String? status;
  String? message;
  Category? category;

  CategoryModel({this.status, this.message, this.category});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    category = json['category'] != null
        ? new Category.fromJson(json['category'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.category != null) {
      data['category'] = this.category!.toJson();
    }
    return data;
  }
}

class Category {
  String? categoryName;
  int? categoryOffer;
  int? minAmount;
  int? maxDiscount;
  String? expiry;
  bool? active;
  String? sId;
  int? iV;

  Category(
      {this.categoryName,
      this.categoryOffer,
      this.minAmount,
      this.maxDiscount,
      this.expiry,
      this.active,
      this.sId,
      this.iV});

  Category.fromJson(Map<String, dynamic> json) {
    categoryName = json['categoryName'];
    categoryOffer = json['categoryOffer'];
    minAmount = json['minAmount'];
    maxDiscount = json['maxDiscount'];
    expiry = json['expiry'];
    active = json['active'];
    sId = json['_id'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['categoryName'] = this.categoryName;
    data['categoryOffer'] = this.categoryOffer;
    data['minAmount'] = this.minAmount;
    data['maxDiscount'] = this.maxDiscount;
    data['expiry'] = this.expiry;
    data['active'] = this.active;
    data['_id'] = this.sId;
    data['__v'] = this.iV;
    return data;
  }
}
