import 'package:json_annotation/json_annotation.dart';

part 'banner.g.dart';

@JsonSerializable()
class Banners {
  @JsonKey(name: '_id')
  String? id;
  @JsonKey(name: 'Description')
  String? description;
  @JsonKey(name: 'Status')
  bool? status;
  @JsonKey(name: 'Image')
  String? image;
  String? h1;
  String? h2;
  String? h3;
  String? p1;
  @JsonKey(name: '__v')
  int? v;

  Banners({
    this.id,
    this.description,
    this.status,
    this.image,
    this.h1,
    this.h2,
    this.h3,
    this.p1,
    this.v,
  });

  factory Banners.fromJson(Map<String, dynamic> json) {
    return _$BannersFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BannersToJson(this);
}
