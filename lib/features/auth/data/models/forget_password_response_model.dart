import 'package:json_annotation/json_annotation.dart';
part 'forget_password_response_model.g.dart';
@JsonSerializable()
class ForgetPasswordResponseModel {
  @JsonKey(name: "data")
  final Data? data;
  @JsonKey(name: "message")
  final String? message;
  @JsonKey(name: "success")
  final bool? success;

  ForgetPasswordResponseModel({
    this.data,
    this.message,
    this.success,
  });

  factory ForgetPasswordResponseModel.fromJson(Map<String, dynamic> json) => _$ForgetPasswordResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$ForgetPasswordResponseModelToJson(this);
}

@JsonSerializable()
class Data {
  Data();

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
