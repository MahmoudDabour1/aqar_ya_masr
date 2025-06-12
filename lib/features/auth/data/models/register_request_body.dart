import 'package:json_annotation/json_annotation.dart';
part 'register_request_body.g.dart';
@JsonSerializable()
class RegisterRequestBody {
  final String name;
  final String phone;
  final String password;
  @JsonKey(name: 'city_id')
  final String cityId;
  final String type;

  RegisterRequestBody({
    required this.name,
    required this.phone,
    required this.password,
    required this.cityId,
    required this.type,
  });

  factory RegisterRequestBody.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestBodyFromJson(json);
  Map<String, dynamic> toJson() => _$RegisterRequestBodyToJson(this);
}
