// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileDataModel _$ProfileDataModelFromJson(Map<String, dynamic> json) =>
    ProfileDataModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$ProfileDataModelToJson(ProfileDataModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'success': instance.success,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      profile: json['profile'] == null
          ? null
          : Profile.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'profile': instance.profile,
    };

Profile _$ProfileFromJson(Map<String, dynamic> json) => Profile(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      officeName: json['office_name'],
      phone: json['phone'] as String?,
      email: json['email'],
      cityId: (json['city_id'] as num?)?.toInt(),
      image: json['image'],
      aboutOffice: json['about_office'],
      lat: json['lat'],
      lng: json['lng'],
      role: json['role'] as String?,
      privileges: json['privileges'] as List<dynamic>?,
    );

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'office_name': instance.officeName,
      'phone': instance.phone,
      'email': instance.email,
      'city_id': instance.cityId,
      'image': instance.image,
      'about_office': instance.aboutOffice,
      'lat': instance.lat,
      'lng': instance.lng,
      'role': instance.role,
      'privileges': instance.privileges,
    };
