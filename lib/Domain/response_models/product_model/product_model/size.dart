import 'package:json_annotation/json_annotation.dart';

part 'size.g.dart';

@JsonSerializable()
class Size {
  String? size;
  int? stock;
  @JsonKey(name: '_id')
  String? id;

  Size({this.size, this.stock, this.id});

  factory Size.fromJson(Map<String, dynamic> json) => _$SizeFromJson(json);

  Map<String, dynamic> toJson() => _$SizeToJson(this);
}
