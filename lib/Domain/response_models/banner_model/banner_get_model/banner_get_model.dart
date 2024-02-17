import 'package:json_annotation/json_annotation.dart';

import 'banner.dart';

part 'banner_get_model.g.dart';

@JsonSerializable()
class BannerGetModel {
  List<Banners>? banner;

  BannerGetModel({this.banner});

  factory BannerGetModel.fromJson(Map<String, dynamic> json) {
    return _$BannerGetModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BannerGetModelToJson(this);
}
