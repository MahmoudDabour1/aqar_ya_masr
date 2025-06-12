

import 'package:json_annotation/json_annotation.dart';
part 'verify_code_request_model.g.dart';
@JsonSerializable()
class VerifyCodeRequestModel {
  final String phone;
  final String code;

  VerifyCodeRequestModel({
    required this.phone,
    required this.code,
  });
  factory VerifyCodeRequestModel.fromJson(Map<String, dynamic> json) =>
      _$VerifyCodeRequestModelFromJson(json);
  Map<String, dynamic> toJson() => _$VerifyCodeRequestModelToJson(this);

}