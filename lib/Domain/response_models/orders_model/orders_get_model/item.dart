import 'package:json_annotation/json_annotation.dart';

part 'item.g.dart';

@JsonSerializable()
class Item {
  String? productId;
  int? quantity;
  String? size;
  int? subtotal;
  @JsonKey(name: '_id')
  String? id;

  Item({this.productId, this.quantity, this.size, this.subtotal, this.id});

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);
}
