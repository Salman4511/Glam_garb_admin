class BrandGetModel {
  List<Brands>? brands;

  BrandGetModel({this.brands});

  BrandGetModel.fromJson(Map<String, dynamic> json) {
    if (json['brands'] != null) {
      brands = <Brands>[];
      json['brands'].forEach((v) {
        brands!.add(new Brands.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.brands != null) {
      data['brands'] = this.brands!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Brands {
  String? sId;
  String? image;
  bool? active;
  int? iV;
  String? brandName;

  Brands({this.sId, this.image, this.active, this.iV, this.brandName});

  Brands.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    image = json['image'];
    active = json['active'];
    iV = json['__v'];
    brandName = json['brandName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['image'] = this.image;
    data['active'] = this.active;
    data['__v'] = this.iV;
    data['brandName'] = this.brandName;
    return data;
  }
}
