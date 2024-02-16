import 'package:json_annotation/json_annotation.dart';

part 'success.g.dart';

@JsonSerializable()
class Success {
  bool? acknowledged;
  int? modifiedCount;
  dynamic upsertedId;
  int? upsertedCount;
  int? matchedCount;

  Success({
    this.acknowledged,
    this.modifiedCount,
    this.upsertedId,
    this.upsertedCount,
    this.matchedCount,
  });

  factory Success.fromJson(Map<String, dynamic> json) {
    return _$SuccessFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SuccessToJson(this);
}
