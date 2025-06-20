import 'package:json_annotation/json_annotation.dart';
part 'profile_data_model.g.dart';
@JsonSerializable()
class ProfileDataModel {
  @JsonKey(name: "data")
  final Data? data;
  @JsonKey(name: "message")
  final String? message;
  @JsonKey(name: "success")
  final bool? success;

  ProfileDataModel({
    this.data,
    this.message,
    this.success,
  });

  factory ProfileDataModel.fromJson(Map<String, dynamic> json) => _$ProfileDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileDataModelToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name: "profile")
  final Profile? profile;

  Data({
    this.profile,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Profile {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "office_name")
  final dynamic officeName;
  @JsonKey(name: "phone")
  final String? phone;
  @JsonKey(name: "email")
  final dynamic email;
  @JsonKey(name: "city_id")
  final int? cityId;
  @JsonKey(name: "image")
  final dynamic image;
  @JsonKey(name: "about_office")
  final dynamic aboutOffice;
  @JsonKey(name: "lat")
  final dynamic lat;
  @JsonKey(name: "lng")
  final dynamic lng;
  @JsonKey(name: "role")
  final String? role;
  @JsonKey(name: "privileges")
  final List<dynamic>? privileges;

  Profile({
    this.id,
    this.name,
    this.officeName,
    this.phone,
    this.email,
    this.cityId,
    this.image,
    this.aboutOffice,
    this.lat,
    this.lng,
    this.role,
    this.privileges,
  });

  factory Profile.fromJson(Map<String, dynamic> json) => _$ProfileFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}
