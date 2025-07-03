// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_guide_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PriceGuideModel _$PriceGuideModelFromJson(Map<String, dynamic> json) =>
    PriceGuideModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$PriceGuideModelToJson(PriceGuideModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      districts: (json['districts'] as List<dynamic>?)
          ?.map((e) => District.fromJson(e as Map<String, dynamic>))
          .toList(),
      priceTo: (json['price_to'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'districts': instance.districts,
      'price_to': instance.priceTo,
    };

District _$DistrictFromJson(Map<String, dynamic> json) => District(
      districtId: (json['district_id'] as num?)?.toInt(),
      districtName: json['district_name'] as String?,
      districtImage: json['district_image'] as String?,
      districtLat: json['district_lat'] as String?,
      districtLng: json['district_lng'] as String?,
      cityId: (json['city_id'] as num?)?.toInt(),
      cityName: json['city_name'] as String?,
      avgPrice: json['avg_price'] as String?,
      maxPrice: json['max_price'] as String?,
      minPrice: json['min_price'] as String?,
      countAds: json['count_ads'],
    );

Map<String, dynamic> _$DistrictToJson(District instance) => <String, dynamic>{
      'district_id': instance.districtId,
      'district_name': instance.districtName,
      'district_image': instance.districtImage,
      'district_lat': instance.districtLat,
      'district_lng': instance.districtLng,
      'city_id': instance.cityId,
      'city_name': instance.cityName,
      'avg_price': instance.avgPrice,
      'max_price': instance.maxPrice,
      'min_price': instance.minPrice,
      'count_ads': instance.countAds,
    };
