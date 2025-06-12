// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_code_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyCodeRequestModel _$VerifyCodeRequestModelFromJson(
        Map<String, dynamic> json) =>
    VerifyCodeRequestModel(
      phone: json['phone'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$VerifyCodeRequestModelToJson(
        VerifyCodeRequestModel instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'code': instance.code,
    };
