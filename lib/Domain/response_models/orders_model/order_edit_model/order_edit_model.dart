import 'package:json_annotation/json_annotation.dart';

import 'update.dart';

part 'order_edit_model.g.dart';

@JsonSerializable()
class OrderEditModel {
  String? message;
  Update? update;

  OrderEditModel({this.message, this.update});

  factory OrderEditModel.fromJson(Map<String, dynamic> json) {
    return _$OrderEditModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OrderEditModelToJson(this);
}
