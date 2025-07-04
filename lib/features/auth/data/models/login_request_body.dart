
import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_request_body.g.dart';
@JsonSerializable()
class LoginRequestBody {
  final String phone;
  final String password;

  LoginRequestBody({
    required this.phone,
    required this.password,
  });

  factory LoginRequestBody.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$LoginRequestBodyToJson(this);
}