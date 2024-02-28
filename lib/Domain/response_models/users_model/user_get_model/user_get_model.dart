import 'package:json_annotation/json_annotation.dart';

import 'user.dart';

part 'user_get_model.g.dart';

@JsonSerializable()
class UserGetModel {
  List<User>? users;
  int? currentPage;
  int? totalPages;

  UserGetModel({this.users, this.currentPage, this.totalPages});

  factory UserGetModel.fromJson(Map<String, dynamic> json) {
    return _$UserGetModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserGetModelToJson(this);
}
