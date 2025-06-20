// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maps_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MapsResponseModel _$MapsResponseModelFromJson(Map<String, dynamic> json) =>
    MapsResponseModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$MapsResponseModelToJson(MapsResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'success': instance.success,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      ads: (json['ads'] as List<dynamic>?)
          ?.map((e) => Ad.fromJson(e as Map<String, dynamic>))
          .toList(),
      hasMorePage: json['hasMorePage'] as bool?,
      photoAds: json['photoAds'] as List<dynamic>?,
      featuredAds: json['featuredAds'] as List<dynamic>?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'ads': instance.ads,
      'hasMorePage': instance.hasMorePage,
      'photoAds': instance.photoAds,
      'featuredAds': instance.featuredAds,
    };

Ad _$AdFromJson(Map<String, dynamic> json) => Ad(
      id: (json['id'] as num?)?.toInt(),
      priceType: json['price_type'] as String?,
      price: json['price'] as String?,
      isFeatured: (json['is_featured'] as num?)?.toInt(),
      lat: json['lat'] as String?,
      lng: json['lng'] as String?,
      isPlanned: (json['is_planned'] as num?)?.toInt(),
      distance: json['distance'] as String?,
    );

Map<String, dynamic> _$AdToJson(Ad instance) => <String, dynamic>{
      'id': instance.id,
      'price_type': instance.priceType,
      'price': instance.price,
      'is_featured': instance.isFeatured,
      'lat': instance.lat,
      'lng': instance.lng,
      'is_planned': instance.isPlanned,
      'distance': instance.distance,
    };
