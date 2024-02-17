import 'package:json_annotation/json_annotation.dart';

import 'updated.dart';

part 'banner_edit_model.g.dart';

@JsonSerializable()
class BannerEditModel {
  Updated? updated;

  BannerEditModel({this.updated});

  factory BannerEditModel.fromJson(Map<String, dynamic> json) {
    return _$BannerEditModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BannerEditModelToJson(this);
}
