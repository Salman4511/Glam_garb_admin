import 'package:json_annotation/json_annotation.dart';

part 'wishlist.g.dart';

@JsonSerializable()
class Wishlist {
  String? productId;
  @JsonKey(name: '_id')
  String? id;

  Wishlist({this.productId, this.id});

  factory Wishlist.fromJson(Map<String, dynamic> json) {
    return _$WishlistFromJson(json);
  }

  Map<String, dynamic> toJson() => _$WishlistToJson(this);
}
