// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qsr_sakany_rent_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QsrSakanyRentModel _$QsrSakanyRentModelFromJson(Map<String, dynamic> json) =>
    QsrSakanyRentModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$QsrSakanyRentModelToJson(QsrSakanyRentModel instance) =>
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
      title: json['title'] as String?,
      priceType: json['price_type'] as String?,
      price: json['price'] as String?,
      isFeatured: (json['is_featured'] as num?)?.toInt(),
      typeId: (json['type_id'] as num?)?.toInt(),
      contractStyle: json['contract_style'] as String?,
      contractType: json['contract_type'] as String?,
      contractTypeEn: json['contract_type_en'] as String?,
      rentPeriod: json['rent_period'] as String?,
      isInstallment: json['is_installment'] as String?,
      isInstallmentEn: json['is_installment_en'],
      description: json['description'] as String?,
      featuredDescrip: json['featured_descrip'] as String?,
      cityId: (json['city_id'] as num?)?.toInt(),
      districtId: (json['district_id'] as num?)?.toInt(),
      city: json['city'] as String?,
      district: json['district'] as String?,
      address: json['address'] as String?,
      defaultImage: json['default_image'] as String?,
      lat: json['lat'] as String?,
      lng: json['lng'] as String?,
      size: (json['size'] as num?)?.toInt(),
      barIcon: (json['bar_icon'] as List<dynamic>?)
          ?.map((e) => BarIcon.fromJson(e as Map<String, dynamic>))
          .toList(),
      isExpired: (json['is_expired'] as num?)?.toInt(),
      isPlanned: (json['is_planned'] as num?)?.toInt(),
      distance: json['distance'] as String?,
      isSold: (json['is_sold'] as num?)?.toInt(),
      isAvailable: (json['is_available'] as num?)?.toInt(),
      publishAt: json['publish_at'] == null
          ? null
          : DateTime.parse(json['publish_at'] as String),
      statistic: json['statistic'] as String?,
    );

Map<String, dynamic> _$AdToJson(Ad instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price_type': instance.priceType,
      'price': instance.price,
      'is_featured': instance.isFeatured,
      'type_id': instance.typeId,
      'contract_style': instance.contractStyle,
      'contract_type': instance.contractType,
      'contract_type_en': instance.contractTypeEn,
      'rent_period': instance.rentPeriod,
      'is_installment': instance.isInstallment,
      'is_installment_en': instance.isInstallmentEn,
      'description': instance.description,
      'featured_descrip': instance.featuredDescrip,
      'city_id': instance.cityId,
      'district_id': instance.districtId,
      'city': instance.city,
      'district': instance.district,
      'address': instance.address,
      'default_image': instance.defaultImage,
      'lat': instance.lat,
      'lng': instance.lng,
      'size': instance.size,
      'bar_icon': instance.barIcon,
      'is_expired': instance.isExpired,
      'is_planned': instance.isPlanned,
      'distance': instance.distance,
      'is_sold': instance.isSold,
      'is_available': instance.isAvailable,
      'publish_at': instance.publishAt?.toIso8601String(),
      'statistic': instance.statistic,
    };

BarIcon _$BarIconFromJson(Map<String, dynamic> json) => BarIcon(
      key: json['key'] as String?,
      value: json['value'],
      label: json['label'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$BarIconToJson(BarIcon instance) => <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
      'label': instance.label,
      'icon': instance.icon,
    };
