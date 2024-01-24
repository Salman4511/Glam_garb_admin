class BrandEditModel {
  String? message;
  Brand? brand;

  BrandEditModel({this.message, this.brand});

  BrandEditModel.fromJson(Map<String, dynamic> json) {
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
  String? sId;
  String? brandName;
  String? image;
  bool? active;
  int? iV;

  Brand({this.sId, this.brandName, this.image, this.active, this.iV});

  Brand.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    brandName = json['brandName'];
    image = json['image'];
    active = json['active'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['brandName'] = this.brandName;
    data['image'] = this.image;
    data['active'] = this.active;
    data['__v'] = this.iV;
    return data;
  }
}
