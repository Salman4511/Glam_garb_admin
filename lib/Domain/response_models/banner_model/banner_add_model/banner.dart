import 'package:json_annotation/json_annotation.dart';

part 'banner.g.dart';

@JsonSerializable()
class Banner {
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

  Banner({
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

  factory Banner.fromJson(Map<String, dynamic> json) {
    return _$BannerFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BannerToJson(this);
}
