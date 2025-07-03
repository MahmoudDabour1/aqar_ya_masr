import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'app_init_model.g.dart';

@HiveType(typeId:10)
@JsonSerializable()
class AppInitModel {
  @HiveField(0)
  @JsonKey(name: "data")
  final Data? data;
  @HiveField(1)
  @JsonKey(name: "message")
  final String? message;
  @HiveField(2)
  @JsonKey(name: "success")
  final bool? success;

  AppInitModel({
    this.data,
    this.message,
    this.success,
  });

  factory AppInitModel.fromJson(Map<String, dynamic> json) =>
      _$AppInitModelFromJson(json);
  Map<String, dynamic> toJson() => _$AppInitModelToJson(this);

}

@HiveType(typeId: 11)
@JsonSerializable()
class Data {
  @HiveField(0)
  @JsonKey(name: "cities")
  final List<City>? cities;
  @HiveField(1)
  @JsonKey(name: "main_types")
  final List<MainType>? mainTypes;
  @HiveField(2)
  @JsonKey(name: "filter_options")
  final List<FilterOption>? filterOptions;
  @HiveField(3)
  @JsonKey(name: "max_price")
  final int? maxPrice;
  @HiveField(4)
  @JsonKey(name: "about")
  final About? about;

  Data({
    this.cities,
    this.mainTypes,
    this.filterOptions,
    this.maxPrice,
    this.about,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);

}

@HiveType(typeId: 12)
@JsonSerializable()
class About {
  @HiveField(0)
  @JsonKey(name: "id")
  final int? id;
  @HiveField(1)
  @JsonKey(name: "address")
  final String? address;
  @HiveField(2)
  @JsonKey(name: "phone")
  final dynamic phone;
  @HiveField(3)
  @JsonKey(name: "email")
  final String? email;
  @HiveField(4)
  @JsonKey(name: "fax")
  final dynamic fax;
  @HiveField(5)
  @JsonKey(name: "fb_link")
  final String? fbLink;
  @HiveField(6)
  @JsonKey(name: "twitter_link")
  final dynamic twitterLink;
  @HiveField(7)
  @JsonKey(name: "instagram_link")
  final String? instagramLink;
  @HiveField(8)
  @JsonKey(name: "youtube_link")
  final String? youtubeLink;
  @HiveField(9)
  @JsonKey(name: "rss_link")
  final String? rssLink;
  @HiveField(10)
  @JsonKey(name: "home_image")
  final String? homeImage;
  @HiveField(11)
  @JsonKey(name: "about_us")
  final String? aboutUs;
  @HiveField(12)
  @JsonKey(name: "term")
  final String? term;
  @HiveField(13)
  @JsonKey(name: "license_agreement")
  final String? licenseAgreement;
  @HiveField(14)
  @JsonKey(name: "rating_service")
  final String? ratingService;
  @HiveField(15)
  @JsonKey(name: "comparing_price_service")
  final String? comparingPriceService;
  @HiveField(16)
  @JsonKey(name: "login_note")
  final String? loginNote;
  @HiveField(17)
  @JsonKey(name: "add_ad_note")
  final String? addAdNote;
  @HiveField(18)
  @JsonKey(name: "services_note")
  final String? servicesNote;
  @HiveField(19)
  @JsonKey(name: "lat")
  final String? lat;
  @HiveField(20)
  @JsonKey(name: "lng")
  final String? lng;
  @HiveField(21)
  @JsonKey(name: "sms")
  final String? sms;
  @HiveField(22)
  @JsonKey(name: "featured_cost")
  final String? featuredCost;
  @HiveField(23)
  @JsonKey(name: "ads_expired")
  final String? adsExpired;
  @HiveField(24)
  @JsonKey(name: "apple_link")
  final String? appleLink;
  @HiveField(25)
  @JsonKey(name: "google_play_link")
  final String? googlePlayLink;
  @HiveField(26)
  @JsonKey(name: "compound_expired")
  final dynamic compoundExpired;
  @HiveField(27)
  @JsonKey(name: "created_at")
  final dynamic createdAt;
  @HiveField(28)
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @HiveField(29)
  @JsonKey(name: "master_phone")
  final dynamic masterPhone;
  @HiveField(30)
  @JsonKey(name: "free_ads_no")
  final int? freeAdsNo;

  About({
    this.id,
    this.address,
    this.phone,
    this.email,
    this.fax,
    this.fbLink,
    this.twitterLink,
    this.instagramLink,
    this.youtubeLink,
    this.rssLink,
    this.homeImage,
    this.aboutUs,
    this.term,
    this.licenseAgreement,
    this.ratingService,
    this.comparingPriceService,
    this.loginNote,
    this.addAdNote,
    this.servicesNote,
    this.lat,
    this.lng,
    this.sms,
    this.featuredCost,
    this.adsExpired,
    this.appleLink,
    this.googlePlayLink,
    this.compoundExpired,
    this.createdAt,
    this.updatedAt,
    this.masterPhone,
    this.freeAdsNo,
  });

  factory About.fromJson(Map<String, dynamic> json) => _$AboutFromJson(json);
  Map<String, dynamic> toJson() => _$AboutToJson(this);

}

@HiveType(typeId: 13)
@JsonSerializable()
class City {
  @HiveField(0)
  @JsonKey(name: "id")
  final int? id;
  @HiveField(1)
  @JsonKey(name: "name")
  final String? name;
  @HiveField(2)
  @JsonKey(name: "name_en")
  final String? nameEn;
  @HiveField(3)
  @JsonKey(name: "lat")
  final String? lat;
  @HiveField(4)
  @JsonKey(name: "lng")
  final String? lng;
  @HiveField(5)
  @JsonKey(name: "image")
  final String? image;
  @HiveField(6)
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @HiveField(7)
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @HiveField(8)
  @JsonKey(name: "image_path")
  final String? imagePath;
  @HiveField(9)
  @JsonKey(name: "districts")
  final List<City>? districts;
  @HiveField(10)
  @JsonKey(name: "city_id")
  final int? cityId;

  City({
    this.id,
    this.name,
    this.nameEn,
    this.lat,
    this.lng,
    this.image,
    this.createdAt,
    this.updatedAt,
    this.imagePath,
    this.districts,
    this.cityId,
  });

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
  Map<String, dynamic> toJson() => _$CityToJson(this);

}

@HiveType(typeId: 14)
@JsonSerializable()
class FilterOption {
  @HiveField(0)
  @JsonKey(name: "key")
  final int? key;
  @HiveField(1)
  @JsonKey(name: "value")
  final String? value;

  FilterOption({
    this.key,
    this.value,
  });

  factory FilterOption.fromJson(Map<String, dynamic> json) =>
      _$FilterOptionFromJson(json);

}

@HiveType(typeId: 15)
@JsonSerializable()
class MainType {
  @HiveField(0)
  @JsonKey(name: "id")
  final int? id;
  @HiveField(1)
  @JsonKey(name: "name_en")
  final String? nameEn;
  @HiveField(2)
  @JsonKey(name: "name_ar")
  final String? nameAr;
  @HiveField(3)
  @JsonKey(name: "display_name_en")
  final String? displayNameEn;
  @HiveField(4)
  @JsonKey(name: "display_name_ar")
  final String? displayNameAr;
  @HiveField(5)
  @JsonKey(name: "parent_id")
  final int? parentId;
  @HiveField(6)
  @JsonKey(name: "property_icon")
  final String? propertyIcon;
  @HiveField(7)
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @HiveField(8)
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @HiveField(9)
  @JsonKey(name: "name")
  final String? name;
  @HiveField(10)
  @JsonKey(name: "children")
  final List<MainType>? children;

  MainType({
    this.id,
    this.nameEn,
    this.nameAr,
    this.displayNameEn,
    this.displayNameAr,
    this.parentId,
    this.propertyIcon,
    this.createdAt,
    this.updatedAt,
    this.name,
    this.children,
  });

  factory MainType.fromJson(Map<String, dynamic> json) =>
      _$MainTypeFromJson(json);
  Map<String, dynamic> toJson() => _$MainTypeToJson(this);

}
