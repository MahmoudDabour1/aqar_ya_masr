// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_init_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppInitModel _$AppInitModelFromJson(Map<String, dynamic> json) => AppInitModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$AppInitModelToJson(AppInitModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'success': instance.success,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      cities: (json['cities'] as List<dynamic>?)
          ?.map((e) => City.fromJson(e as Map<String, dynamic>))
          .toList(),
      mainTypes: (json['main_types'] as List<dynamic>?)
          ?.map((e) => MainType.fromJson(e as Map<String, dynamic>))
          .toList(),
      filterOptions: (json['filter_options'] as List<dynamic>?)
          ?.map((e) => FilterOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      maxPrice: (json['max_price'] as num?)?.toInt(),
      about: json['about'] == null
          ? null
          : About.fromJson(json['about'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'cities': instance.cities,
      'main_types': instance.mainTypes,
      'filter_options': instance.filterOptions,
      'max_price': instance.maxPrice,
      'about': instance.about,
    };

About _$AboutFromJson(Map<String, dynamic> json) => About(
      id: (json['id'] as num?)?.toInt(),
      address: json['address'] as String?,
      phone: json['phone'],
      email: json['email'] as String?,
      fax: json['fax'],
      fbLink: json['fb_link'] as String?,
      twitterLink: json['twitter_link'],
      instagramLink: json['instagram_link'] as String?,
      youtubeLink: json['youtube_link'] as String?,
      rssLink: json['rss_link'] as String?,
      homeImage: json['home_image'] as String?,
      aboutUs: json['about_us'] as String?,
      term: json['term'] as String?,
      licenseAgreement: json['license_agreement'] as String?,
      ratingService: json['rating_service'] as String?,
      comparingPriceService: json['comparing_price_service'] as String?,
      loginNote: json['login_note'] as String?,
      addAdNote: json['add_ad_note'] as String?,
      servicesNote: json['services_note'] as String?,
      lat: json['lat'] as String?,
      lng: json['lng'] as String?,
      sms: json['sms'] as String?,
      featuredCost: json['featured_cost'] as String?,
      adsExpired: json['ads_expired'] as String?,
      appleLink: json['apple_link'] as String?,
      googlePlayLink: json['google_play_link'] as String?,
      compoundExpired: json['compound_expired'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      masterPhone: json['master_phone'],
      freeAdsNo: (json['free_ads_no'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AboutToJson(About instance) => <String, dynamic>{
      'id': instance.id,
      'address': instance.address,
      'phone': instance.phone,
      'email': instance.email,
      'fax': instance.fax,
      'fb_link': instance.fbLink,
      'twitter_link': instance.twitterLink,
      'instagram_link': instance.instagramLink,
      'youtube_link': instance.youtubeLink,
      'rss_link': instance.rssLink,
      'home_image': instance.homeImage,
      'about_us': instance.aboutUs,
      'term': instance.term,
      'license_agreement': instance.licenseAgreement,
      'rating_service': instance.ratingService,
      'comparing_price_service': instance.comparingPriceService,
      'login_note': instance.loginNote,
      'add_ad_note': instance.addAdNote,
      'services_note': instance.servicesNote,
      'lat': instance.lat,
      'lng': instance.lng,
      'sms': instance.sms,
      'featured_cost': instance.featuredCost,
      'ads_expired': instance.adsExpired,
      'apple_link': instance.appleLink,
      'google_play_link': instance.googlePlayLink,
      'compound_expired': instance.compoundExpired,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'master_phone': instance.masterPhone,
      'free_ads_no': instance.freeAdsNo,
    };

City _$CityFromJson(Map<String, dynamic> json) => City(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      nameEn: json['name_en'] as String?,
      lat: json['lat'] as String?,
      lng: json['lng'] as String?,
      image: json['image'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      imagePath: json['image_path'] as String?,
      districts: (json['districts'] as List<dynamic>?)
          ?.map((e) => City.fromJson(e as Map<String, dynamic>))
          .toList(),
      cityId: (json['city_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'name_en': instance.nameEn,
      'lat': instance.lat,
      'lng': instance.lng,
      'image': instance.image,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'image_path': instance.imagePath,
      'districts': instance.districts,
      'city_id': instance.cityId,
    };

FilterOption _$FilterOptionFromJson(Map<String, dynamic> json) => FilterOption(
      key: (json['key'] as num?)?.toInt(),
      value: json['value'] as String?,
    );

Map<String, dynamic> _$FilterOptionToJson(FilterOption instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };

MainType _$MainTypeFromJson(Map<String, dynamic> json) => MainType(
      id: (json['id'] as num?)?.toInt(),
      nameEn: json['name_en'] as String?,
      nameAr: json['name_ar'] as String?,
      displayNameEn: json['display_name_en'] as String?,
      displayNameAr: json['display_name_ar'] as String?,
      parentId: (json['parent_id'] as num?)?.toInt(),
      propertyIcon: json['property_icon'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      name: json['name'] as String?,
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => MainType.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MainTypeToJson(MainType instance) => <String, dynamic>{
      'id': instance.id,
      'name_en': instance.nameEn,
      'name_ar': instance.nameAr,
      'display_name_en': instance.displayNameEn,
      'display_name_ar': instance.displayNameAr,
      'parent_id': instance.parentId,
      'property_icon': instance.propertyIcon,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'name': instance.name,
      'children': instance.children,
    };
