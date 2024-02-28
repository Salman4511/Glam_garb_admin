import 'package:json_annotation/json_annotation.dart';

part 'return_accept_reject_model.g.dart';

@JsonSerializable()
class ReturnAcceptRejectModel {
  String? message;

  ReturnAcceptRejectModel({this.message});

  factory ReturnAcceptRejectModel.fromJson(Map<String, dynamic> json) {
    return _$ReturnAcceptRejectModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ReturnAcceptRejectModelToJson(this);
}
