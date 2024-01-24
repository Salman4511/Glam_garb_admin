import 'package:json_annotation/json_annotation.dart';

part 'image.g.dart';

@JsonSerializable()
class Image {
  String? url;
  @JsonKey(name: '_id')
  String? id;

  Image({this.url, this.id});

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

  Map<String, dynamic> toJson() => _$ImageToJson(this);
}
