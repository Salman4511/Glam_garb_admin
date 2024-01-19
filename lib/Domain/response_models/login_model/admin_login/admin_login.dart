import 'package:json_annotation/json_annotation.dart';

part 'admin_login.g.dart';

@JsonSerializable()
class AdminLogin {
  @JsonKey(name: '_id')
  String? id;
  String? email;
  String? password;

  AdminLogin({this.id, this.email, this.password});

  factory AdminLogin.fromJson(Map<String, dynamic> json) {
    return _$AdminLoginFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AdminLoginToJson(this);
}
