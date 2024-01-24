class BrandModel {
  String? message;
  Brand? brand;

  BrandModel({this.message, this.brand});

  BrandModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    brand = json['brand'] != null ? new Brand.fromJson(json['brand']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.brand != null) {
      data['brand'] = this.brand!.toJson();
    }
    return data;
  }
}

class Brand {
  String? brandName;
  dynamic image;
  bool? active;
  String? sId;
  int? iV;

  Brand({this.brandName, this.image, this.active, this.sId, this.iV});

  Brand.fromJson(Map<String, dynamic> json) {
    brandName = json['brandName'];
    image = json['image'];
    active = json['active'];
    sId = json['_id'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['brandName'] = this.brandName;
    data['image'] = this.image;
    data['active'] = this.active;
    data['_id'] = this.sId;
    data['__v'] = this.iV;
    return data;
  }
}
