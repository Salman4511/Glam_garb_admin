import 'package:json_annotation/json_annotation.dart';

import 'newuser.dart';

part 'user_block_model.g.dart';

@JsonSerializable()
class UserBlockModel {
  String? message;
  Newuser? newuser;

  UserBlockModel({this.message, this.newuser});

  factory UserBlockModel.fromJson(Map<String, dynamic> json) {
    return _$UserBlockModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserBlockModelToJson(this);
}
