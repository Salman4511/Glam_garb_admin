import 'package:json_annotation/json_annotation.dart';

part 'cart.g.dart';

@JsonSerializable()
class Cart {
  String? productId;
  int? quantity;
  String? size;
  @JsonKey(name: '_id')
  String? id;

  Cart({this.productId, this.quantity, this.size, this.id});

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);

  Map<String, dynamic> toJson() => _$CartToJson(this);
}
