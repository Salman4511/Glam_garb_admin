import 'package:json_annotation/json_annotation.dart';

import 'address.dart';
import 'cart.dart';
import 'transaction_detail.dart';
import 'wishlist.dart';

part 'customer_id.g.dart';

@JsonSerializable()
class CustomerId {
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
  List<Wishlist>? wishlist;
  List<Cart>? cart;
  List<Address>? address;
  List<TransactionDetail>? transactionDetails;
  @JsonKey(name: '__v')
  int? v;

  CustomerId({
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

  factory CustomerId.fromJson(Map<String, dynamic> json) {
    return _$CustomerIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CustomerIdToJson(this);
}
