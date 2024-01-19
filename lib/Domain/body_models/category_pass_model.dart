class categoryPassModel {
  String? categoryName;
  int? categoryOffer;
  int? miniAmount;
  int? maxAmount;
  String? expiry;
  dynamic active;

  categoryPassModel(
      {required this.categoryName,
      this.categoryOffer,
      this.miniAmount,
      this.maxAmount,
      this.expiry,
     required this.active});

  categoryPassModel.fromJson(Map<String, dynamic> json) {
    categoryName = json['categoryName'];
    categoryOffer = json['categoryOffer'];
    miniAmount = json['miniAmount'];
    maxAmount = json['maxAmount'];
    expiry = json['expiry'];
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['categoryName'] = this.categoryName;
    data['categoryOffer'] = this.categoryOffer;
    data['miniAmount'] = this.miniAmount;
    data['maxAmount'] = this.maxAmount;
    data['expiry'] = this.expiry;
    data['active'] = this.active;
    return data;
  }
}
