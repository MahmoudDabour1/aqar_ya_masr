// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_init_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppInitModelAdapter extends TypeAdapter<AppInitModel> {
  @override
  final int typeId = 10;

  @override
  AppInitModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppInitModel(
      data: fields[0] as Data?,
      message: fields[1] as String?,
      success: fields[2] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, AppInitModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.data)
      ..writeByte(1)
      ..write(obj.message)
      ..writeByte(2)
      ..write(obj.success);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppInitModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DataAdapter extends TypeAdapter<Data> {
  @override
  final int typeId = 11;

  @override
  Data read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Data(
      cities: (fields[0] as List?)?.cast<City>(),
      mainTypes: (fields[1] as List?)?.cast<MainType>(),
      filterOptions: (fields[2] as List?)?.cast<FilterOption>(),
      maxPrice: fields[3] as int?,
      about: fields[4] as About?,
    );
  }

  @override
  void write(BinaryWriter writer, Data obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.cities)
      ..writeByte(1)
      ..write(obj.mainTypes)
      ..writeByte(2)
      ..write(obj.filterOptions)
      ..writeByte(3)
      ..write(obj.maxPrice)
      ..writeByte(4)
      ..write(obj.about);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AboutAdapter extends TypeAdapter<About> {
  @override
  final int typeId = 12;

  @override
  About read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return About(
      id: fields[0] as int?,
      address: fields[1] as String?,
      phone: fields[2] as dynamic,
      email: fields[3] as String?,
      fax: fields[4] as dynamic,
      fbLink: fields[5] as String?,
      twitterLink: fields[6] as dynamic,
      instagramLink: fields[7] as String?,
      youtubeLink: fields[8] as String?,
      rssLink: fields[9] as String?,
      homeImage: fields[10] as String?,
      aboutUs: fields[11] as String?,
      term: fields[12] as String?,
      licenseAgreement: fields[13] as String?,
      ratingService: fields[14] as String?,
      comparingPriceService: fields[15] as String?,
      loginNote: fields[16] as String?,
      addAdNote: fields[17] as String?,
      servicesNote: fields[18] as String?,
      lat: fields[19] as String?,
      lng: fields[20] as String?,
      sms: fields[21] as String?,
      featuredCost: fields[22] as String?,
      adsExpired: fields[23] as String?,
      appleLink: fields[24] as String?,
      googlePlayLink: fields[25] as String?,
      compoundExpired: fields[26] as dynamic,
      createdAt: fields[27] as dynamic,
      updatedAt: fields[28] as DateTime?,
      masterPhone: fields[29] as dynamic,
      freeAdsNo: fields[30] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, About obj) {
    writer
      ..writeByte(31)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.address)
      ..writeByte(2)
      ..write(obj.phone)
      ..writeByte(3)
      ..write(obj.email)
      ..writeByte(4)
      ..write(obj.fax)
      ..writeByte(5)
      ..write(obj.fbLink)
      ..writeByte(6)
      ..write(obj.twitterLink)
      ..writeByte(7)
      ..write(obj.instagramLink)
      ..writeByte(8)
      ..write(obj.youtubeLink)
      ..writeByte(9)
      ..write(obj.rssLink)
      ..writeByte(10)
      ..write(obj.homeImage)
      ..writeByte(11)
      ..write(obj.aboutUs)
      ..writeByte(12)
      ..write(obj.term)
      ..writeByte(13)
      ..write(obj.licenseAgreement)
      ..writeByte(14)
      ..write(obj.ratingService)
      ..writeByte(15)
      ..write(obj.comparingPriceService)
      ..writeByte(16)
      ..write(obj.loginNote)
      ..writeByte(17)
      ..write(obj.addAdNote)
      ..writeByte(18)
      ..write(obj.servicesNote)
      ..writeByte(19)
      ..write(obj.lat)
      ..writeByte(20)
      ..write(obj.lng)
      ..writeByte(21)
      ..write(obj.sms)
      ..writeByte(22)
      ..write(obj.featuredCost)
      ..writeByte(23)
      ..write(obj.adsExpired)
      ..writeByte(24)
      ..write(obj.appleLink)
      ..writeByte(25)
      ..write(obj.googlePlayLink)
      ..writeByte(26)
      ..write(obj.compoundExpired)
      ..writeByte(27)
      ..write(obj.createdAt)
      ..writeByte(28)
      ..write(obj.updatedAt)
      ..writeByte(29)
      ..write(obj.masterPhone)
      ..writeByte(30)
      ..write(obj.freeAdsNo);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AboutAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CityAdapter extends TypeAdapter<City> {
  @override
  final int typeId = 13;

  @override
  City read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return City(
      id: fields[0] as int?,
      name: fields[1] as String?,
      nameEn: fields[2] as String?,
      lat: fields[3] as String?,
      lng: fields[4] as String?,
      image: fields[5] as String?,
      createdAt: fields[6] as DateTime?,
      updatedAt: fields[7] as DateTime?,
      imagePath: fields[8] as String?,
      districts: (fields[9] as List?)?.cast<City>(),
      cityId: fields[10] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, City obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.nameEn)
      ..writeByte(3)
      ..write(obj.lat)
      ..writeByte(4)
      ..write(obj.lng)
      ..writeByte(5)
      ..write(obj.image)
      ..writeByte(6)
      ..write(obj.createdAt)
      ..writeByte(7)
      ..write(obj.updatedAt)
      ..writeByte(8)
      ..write(obj.imagePath)
      ..writeByte(9)
      ..write(obj.districts)
      ..writeByte(10)
      ..write(obj.cityId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class FilterOptionAdapter extends TypeAdapter<FilterOption> {
  @override
  final int typeId = 14;

  @override
  FilterOption read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FilterOption(
      key: fields[0] as int?,
      value: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, FilterOption obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.key)
      ..writeByte(1)
      ..write(obj.value);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FilterOptionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MainTypeAdapter extends TypeAdapter<MainType> {
  @override
  final int typeId = 15;

  @override
  MainType read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MainType(
      id: fields[0] as int?,
      nameEn: fields[1] as String?,
      nameAr: fields[2] as String?,
      displayNameEn: fields[3] as String?,
      displayNameAr: fields[4] as String?,
      parentId: fields[5] as int?,
      propertyIcon: fields[6] as String?,
      createdAt: fields[7] as DateTime?,
      updatedAt: fields[8] as DateTime?,
      name: fields[9] as String?,
      children: (fields[10] as List?)?.cast<MainType>(),
    );
  }

  @override
  void write(BinaryWriter writer, MainType obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.nameEn)
      ..writeByte(2)
      ..write(obj.nameAr)
      ..writeByte(3)
      ..write(obj.displayNameEn)
      ..writeByte(4)
      ..write(obj.displayNameAr)
      ..writeByte(5)
      ..write(obj.parentId)
      ..writeByte(6)
      ..write(obj.propertyIcon)
      ..writeByte(7)
      ..write(obj.createdAt)
      ..writeByte(8)
      ..write(obj.updatedAt)
      ..writeByte(9)
      ..write(obj.name)
      ..writeByte(10)
      ..write(obj.children);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MainTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
