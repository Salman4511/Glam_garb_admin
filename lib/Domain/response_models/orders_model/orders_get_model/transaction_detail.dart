import 'package:json_annotation/json_annotation.dart';

part 'transaction_detail.g.dart';

@JsonSerializable()
class TransactionDetail {
  String? transactionType;
  int? transactionAmount;
  String? orderId;
  @JsonKey(name: '_id')
  String? id;

  TransactionDetail({
    this.transactionType,
    this.transactionAmount,
    this.orderId,
    this.id,
  });

  factory TransactionDetail.fromJson(Map<String, dynamic> json) {
    return _$TransactionDetailFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TransactionDetailToJson(this);
}
