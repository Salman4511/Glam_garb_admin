import 'package:json_annotation/json_annotation.dart';

part 'update.g.dart';

@JsonSerializable()
class Update {
  bool? acknowledged;
  int? modifiedCount;
  dynamic upsertedId;
  int? upsertedCount;
  int? matchedCount;

  Update({
    this.acknowledged,
    this.modifiedCount,
    this.upsertedId,
    this.upsertedCount,
    this.matchedCount,
  });

  factory Update.fromJson(Map<String, dynamic> json) {
    return _$UpdateFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UpdateToJson(this);
}
