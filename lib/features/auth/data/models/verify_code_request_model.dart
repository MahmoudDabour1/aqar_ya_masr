import 'package:json_annotation/json_annotation.dart';

part 'verify_code_request_model.g.dart';

@JsonSerializable()
class VerifyCodeRequestModel {
  final String phone;
  final String code;
  @JsonKey(name: 'reset-pass')
  final bool? resetPass;

  VerifyCodeRequestModel({
    required this.phone,
    required this.code,
    this.resetPass,
  });

  factory VerifyCodeRequestModel.fromJson(Map<String, dynamic> json) =>
      _$VerifyCodeRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyCodeRequestModelToJson(this);
}
