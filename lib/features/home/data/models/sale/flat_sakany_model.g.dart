// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flat_sakany_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FlatSakanyModel _$FlatSakanyModelFromJson(Map<String, dynamic> json) =>
    FlatSakanyModel(
      flatData: json['data'] == null
          ? null
          : FlatData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$FlatSakanyModelToJson(FlatSakanyModel instance) =>
    <String, dynamic>{
      'data': instance.flatData,
      'message': instance.message,
      'success': instance.success,
    };

FlatData _$FlatDataFromJson(Map<String, dynamic> json) => FlatData(
      ads: (json['ads'] as List<dynamic>?)
          ?.map((e) => Ad.fromJson(e as Map<String, dynamic>))
          .toList(),
      hasMorePage: json['hasMorePage'] as bool?,
      photoAds: json['photoAds'] as List<dynamic>?,
      featuredAds: json['featuredAds'] as List<dynamic>?,
    );

Map<String, dynamic> _$FlatDataToJson(FlatData instance) => <String, dynamic>{
      'ads': instance.ads,
      'hasMorePage': instance.hasMorePage,
      'photoAds': instance.photoAds,
      'featuredAds': instance.featuredAds,
    };

Ad _$AdFromJson(Map<String, dynamic> json) => Ad(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      priceType: $enumDecodeNullable(_$PriceTypeEnumMap, json['price_type']),
      price: json['price'] as String?,
      isFeatured: (json['is_featured'] as num?)?.toInt(),
      typeId: (json['type_id'] as num?)?.toInt(),
      contractStyle:
          $enumDecodeNullable(_$ContractStyleEnumMap, json['contract_style']),
      contractType:
          $enumDecodeNullable(_$ContractTypeEnumMap, json['contract_type']),
      contractTypeEn: $enumDecodeNullable(
          _$ContractTypeEnEnumMap, json['contract_type_en']),
      rentPeriod: $enumDecodeNullable(_$RentPeriodEnumMap, json['rent_period']),
      isInstallment:
          $enumDecodeNullable(_$IsInstallmentEnumMap, json['is_installment']),
      isInstallmentEn: json['is_installment_en'] as String?,
      description: json['description'] as String?,
      featuredDescrip: json['featured_descrip'] as String?,
      cityId: (json['city_id'] as num?)?.toInt(),
      districtId: (json['district_id'] as num?)?.toInt(),
      city: $enumDecodeNullable(_$CityEnumMap, json['city']),
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
      'price_type': _$PriceTypeEnumMap[instance.priceType],
      'price': instance.price,
      'is_featured': instance.isFeatured,
      'type_id': instance.typeId,
      'contract_style': _$ContractStyleEnumMap[instance.contractStyle],
      'contract_type': _$ContractTypeEnumMap[instance.contractType],
      'contract_type_en': _$ContractTypeEnEnumMap[instance.contractTypeEn],
      'rent_period': _$RentPeriodEnumMap[instance.rentPeriod],
      'is_installment': _$IsInstallmentEnumMap[instance.isInstallment],
      'is_installment_en': instance.isInstallmentEn,
      'description': instance.description,
      'featured_descrip': instance.featuredDescrip,
      'city_id': instance.cityId,
      'district_id': instance.districtId,
      'city': _$CityEnumMap[instance.city],
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

const _$PriceTypeEnumMap = {
  PriceType.FIXED: 'fixed',
};

const _$ContractStyleEnumMap = {
  ContractStyle.FOR_RENT: 'for_rent',
  ContractStyle.FOR_SALE: 'for_sale',
};

const _$ContractTypeEnumMap = {
  ContractType.CONTRACT_TYPE: 'للإيجار',
  ContractType.EMPTY: 'للبيع',
};

const _$ContractTypeEnEnumMap = {
  ContractTypeEn.RENT: 'rent',
  ContractTypeEn.SALE: 'sale',
};

const _$RentPeriodEnumMap = {
  RentPeriod.DAILY: 'daily',
  RentPeriod.EMPTY: '',
  RentPeriod.MONTHLY: 'monthly',
  RentPeriod.OPEN: 'open',
  RentPeriod.YEARLY: 'yearly',
};

const _$IsInstallmentEnumMap = {
  IsInstallment.EMPTY: 'يوجد تقسيط',
  IsInstallment.IS_INSTALLMENT: 'لا يوجد تقسيط',
  IsInstallment.PURPLE: '',
};

const _$CityEnumMap = {
  City.AMBITIOUS: 'المنوفية',
  City.BRAGGADOCIOUS: 'الإسماعيلية',
  City.CITY: 'الشرقية',
  City.CUNNING: 'بور سعيد',
  City.EMPTY: 'القاهرة',
  City.FLUFFY: 'الجيزة',
  City.FRISKY: 'دمياط',
  City.HILARIOUS: 'الدقهلية',
  City.INDECENT: 'الغربية',
  City.INDIGO: 'القليوبية',
  City.MAGENTA: 'البحيرة',
  City.MISCHIEVOUS: 'أسيوط',
  City.PURPLE: 'البحر الأحمر',
  City.STICKY: 'مرسى مطروح',
  City.TENTACLED: 'الإسكندرية',
  City.THE_1: 'الفيوم',
  City.THE_2: 'جنوب سيناء',
  City.THE_3: 'السويس',
};

BarIcon _$BarIconFromJson(Map<String, dynamic> json) => BarIcon(
      key: $enumDecodeNullable(_$KeyEnumMap, json['key']),
      value: json['value'],
      label: json['label'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$BarIconToJson(BarIcon instance) => <String, dynamic>{
      'key': _$KeyEnumMap[instance.key],
      'value': instance.value,
      'label': instance.label,
      'icon': instance.icon,
    };

const _$KeyEnumMap = {
  Key.BATHROOMS_NUMBER: 'bathrooms_number',
  Key.BUILDING_AGE: 'building_age',
  Key.FLAT_TYPE: 'flat_type',
  Key.FLOOR_NUMBER: 'floor_number',
  Key.FRONT_YARD: 'front_yard',
  Key.LOCATIONS: 'locations',
  Key.MASTER_ROOMS_NUMBER: 'master_rooms_number',
  Key.ROOMS_NUMBER: 'rooms_number',
  Key.SIZE: 'size',
};
