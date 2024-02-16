class ProductEditModel {
  String? message;
  Product? product;

  ProductEditModel({this.message, this.product});

  ProductEditModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    product =
        json['product'] != null ? new Product.fromJson(json['product']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.product != null) {
      data['product'] = this.product!.toJson();
    }
    return data;
  }
}

class Product {
  bool? acknowledged;
  int? modifiedCount;
  Null? upsertedId;
  int? upsertedCount;
  int? matchedCount;

  Product(
      {this.acknowledged,
      this.modifiedCount,
      this.upsertedId,
      this.upsertedCount,
      this.matchedCount});

  Product.fromJson(Map<String, dynamic> json) {
    acknowledged = json['acknowledged'];
    modifiedCount = json['modifiedCount'];
    upsertedId = json['upsertedId'];
    upsertedCount = json['upsertedCount'];
    matchedCount = json['matchedCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['acknowledged'] = this.acknowledged;
    data['modifiedCount'] = this.modifiedCount;
    data['upsertedId'] = this.upsertedId;
    data['upsertedCount'] = this.upsertedCount;
    data['matchedCount'] = this.matchedCount;
    return data;
  }
}
