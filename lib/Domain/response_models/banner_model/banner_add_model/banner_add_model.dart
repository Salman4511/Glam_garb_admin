import 'package:json_annotation/json_annotation.dart';

import 'banner.dart';

part 'banner_add_model.g.dart';

@JsonSerializable()
class BannerAddModel {
  List<Banner>? banner;

  BannerAddModel({this.banner});

  factory BannerAddModel.fromJson(Map<String, dynamic> json) {
    return _$BannerAddModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BannerAddModelToJson(this);
}
