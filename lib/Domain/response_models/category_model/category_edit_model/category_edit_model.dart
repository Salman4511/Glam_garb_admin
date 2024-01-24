class CategoryEditModel {
  String? status;
  String? message;
  Category? category;

  CategoryEditModel({this.status, this.message, this.category});

  CategoryEditModel.fromJson(Map<String, dynamic> json) {
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
