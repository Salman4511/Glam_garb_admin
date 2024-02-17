import 'package:json_annotation/json_annotation.dart';

part 'updated.g.dart';

@JsonSerializable()
class Updated {
  bool? acknowledged;
  int? modifiedCount;
  dynamic upsertedId;
  int? upsertedCount;
  int? matchedCount;

  Updated({
    this.acknowledged,
    this.modifiedCount,
    this.upsertedId,
    this.upsertedCount,
    this.matchedCount,
  });

  factory Updated.fromJson(Map<String, dynamic> json) {
    return _$UpdatedFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UpdatedToJson(this);
}
