import 'package:json_annotation/json_annotation.dart';

part 'banner_delete_model.g.dart';

@JsonSerializable()
class BannerDeleteModel {
  String? message;

  BannerDeleteModel({this.message});

  factory BannerDeleteModel.fromJson(Map<String, dynamic> json) {
    return _$BannerDeleteModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BannerDeleteModelToJson(this);
}
