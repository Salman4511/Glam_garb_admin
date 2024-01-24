class CategoryGetModel {
  List<Category>? category;

  CategoryGetModel({this.category});

  CategoryGetModel.fromJson(Map<String, dynamic> json) {
    if (json['category'] != null) {
      category = <Category>[];
      json['category'].forEach((v) {
        category!.add(new Category.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.category != null) {
      data['category'] = this.category!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Category {
  String? sId;
  String? categoryName;
  bool? active;
  int? iV;
  int? categoryOffer;
  String? expiry;
  int? maxDiscount;
  int? minAmount;

  Category(
      {this.sId,
      this.categoryName,
      this.active,
      this.iV,
      this.categoryOffer,
      this.expiry,
      this.maxDiscount,
      this.minAmount});

  Category.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    categoryName = json['categoryName'];
    active = json['active'];
    iV = json['__v'];
    categoryOffer = json['categoryOffer'];
    expiry = json['expiry'];
    maxDiscount = json['maxDiscount'];
    minAmount = json['minAmount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['categoryName'] = this.categoryName;
    data['active'] = this.active;
    data['__v'] = this.iV;
    data['categoryOffer'] = this.categoryOffer;
    data['expiry'] = this.expiry;
    data['maxDiscount'] = this.maxDiscount;
    data['minAmount'] = this.minAmount;
    return data;
  }
}
