import 'package:json_annotation/json_annotation.dart';
part 'app_init_model.g.dart';
@JsonSerializable()
class AppInitModel {
  @JsonKey(name: "data")
  final Data? data;
  @JsonKey(name: "message")
  final String? message;
  @JsonKey(name: "success")
  final bool? success;

  AppInitModel({
    this.data,
    this.message,
    this.success,
  });

  factory AppInitModel.fromJson(Map<String, dynamic> json) => _$AppInitModelFromJson(json);

  Map<String, dynamic> toJson() => _$AppInitModelToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name: "cities")
  final List<City>? cities;
  @JsonKey(name: "main_types")
  final List<MainType>? mainTypes;
  @JsonKey(name: "filter_options")
  final List<FilterOption>? filterOptions;
  @JsonKey(name: "max_price")
  final int? maxPrice;
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

@JsonSerializable()
class About {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "address")
  final String? address;
  @JsonKey(name: "phone")
  final dynamic phone;
  @JsonKey(name: "email")
  final String? email;
  @JsonKey(name: "fax")
  final dynamic fax;
  @JsonKey(name: "fb_link")
  final String? fbLink;
  @JsonKey(name: "twitter_link")
  final dynamic twitterLink;
  @JsonKey(name: "instagram_link")
  final String? instagramLink;
  @JsonKey(name: "youtube_link")
  final String? youtubeLink;
  @JsonKey(name: "rss_link")
  final String? rssLink;
  @JsonKey(name: "home_image")
  final String? homeImage;
  @JsonKey(name: "about_us")
  final String? aboutUs;
  @JsonKey(name: "term")
  final String? term;
  @JsonKey(name: "license_agreement")
  final String? licenseAgreement;
  @JsonKey(name: "rating_service")
  final String? ratingService;
  @JsonKey(name: "comparing_price_service")
  final String? comparingPriceService;
  @JsonKey(name: "login_note")
  final String? loginNote;
  @JsonKey(name: "add_ad_note")
  final String? addAdNote;
  @JsonKey(name: "services_note")
  final String? servicesNote;
  @JsonKey(name: "lat")
  final String? lat;
  @JsonKey(name: "lng")
  final String? lng;
  @JsonKey(name: "sms")
  final String? sms;
  @JsonKey(name: "featured_cost")
  final String? featuredCost;
  @JsonKey(name: "ads_expired")
  final String? adsExpired;
  @JsonKey(name: "apple_link")
  final String? appleLink;
  @JsonKey(name: "google_play_link")
  final String? googlePlayLink;
  @JsonKey(name: "compound_expired")
  final dynamic compoundExpired;
  @JsonKey(name: "created_at")
  final dynamic createdAt;
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @JsonKey(name: "master_phone")
  final dynamic masterPhone;
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

@JsonSerializable()
class City {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "name_en")
  final String? nameEn;
  @JsonKey(name: "lat")
  final String? lat;
  @JsonKey(name: "lng")
  final String? lng;
  @JsonKey(name: "image")
  final String? image;
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @JsonKey(name: "image_path")
  final String? imagePath;
  @JsonKey(name: "districts")
  final List<City>? districts;
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

@JsonSerializable()
class FilterOption {
  @JsonKey(name: "key")
  final int? key;
  @JsonKey(name: "value")
  final String? value;

  FilterOption({
    this.key,
    this.value,
  });

  factory FilterOption.fromJson(Map<String, dynamic> json) => _$FilterOptionFromJson(json);

  Map<String, dynamic> toJson() => _$FilterOptionToJson(this);
}

@JsonSerializable()
class MainType {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "name_en")
  final String? nameEn;
  @JsonKey(name: "name_ar")
  final String? nameAr;
  @JsonKey(name: "display_name_en")
  final String? displayNameEn;
  @JsonKey(name: "display_name_ar")
  final String? displayNameAr;
  @JsonKey(name: "parent_id")
  final int? parentId;
  @JsonKey(name: "property_icon")
  final String? propertyIcon;
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @JsonKey(name: "name")
  final String? name;
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

  factory MainType.fromJson(Map<String, dynamic> json) => _$MainTypeFromJson(json);

  Map<String, dynamic> toJson() => _$MainTypeToJson(this);
}
