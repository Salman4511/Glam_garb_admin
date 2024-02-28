import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

@JsonSerializable()
class Address {
  String? name;
  int? mobile;
  String? housename;
  String? area;
  String? city;
  String? state;
  int? pincode;

  Address({
    this.name,
    this.mobile,
    this.housename,
    this.area,
    this.city,
    this.state,
    this.pincode,
  });

  factory Address.fromJson(Map<String, dynamic> json) {
    return _$AddressFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
