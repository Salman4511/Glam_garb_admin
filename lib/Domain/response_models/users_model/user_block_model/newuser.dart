import 'package:json_annotation/json_annotation.dart';

part 'newuser.g.dart';

@JsonSerializable()
class Newuser {
  @JsonKey(name: '_id')
  String? id;
  @JsonKey(name: 'Name')
  String? name;
  String? email;
  int? phone;
  String? password;
  @JsonKey(name: 'is_admin')
  int? isAdmin;
  @JsonKey(name: 'is_verified')
  bool? isVerified;
  @JsonKey(name: 'referral_code')
  int? referralCode;
  bool? referralPurchase;
  String? createdOn;
  @JsonKey(name: 'is_blocked')
  bool? isBlocked;
  int? wallet;
  List<dynamic>? wishlist;
  List<dynamic>? cart;
  List<dynamic>? address;
  List<dynamic>? transactionDetails;
  @JsonKey(name: '__v')
  int? v;

  Newuser({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.password,
    this.isAdmin,
    this.isVerified,
    this.referralCode,
    this.referralPurchase,
    this.createdOn,
    this.isBlocked,
    this.wallet,
    this.wishlist,
    this.cart,
    this.address,
    this.transactionDetails,
    this.v,
  });

  factory Newuser.fromJson(Map<String, dynamic> json) {
    return _$NewuserFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NewuserToJson(this);
}
