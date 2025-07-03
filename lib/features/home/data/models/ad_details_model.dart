import 'package:json_annotation/json_annotation.dart';

part 'ad_details_model.g.dart';
@JsonSerializable()
class AdDetailsModel {
  @JsonKey(name: "data")
  final AdDetailsData? adDetailsData;
  @JsonKey(name: "message")
  final String? message;
  @JsonKey(name: "success")
  final bool? success;

  AdDetailsModel({
    this.adDetailsData,
    this.message,
    this.success,
  });

  factory AdDetailsModel.fromJson(Map<String, dynamic> json) => _$AdDetailsModelFromJson(json);

  Map<String, dynamic> toJson() => _$AdDetailsModelToJson(this);
}

@JsonSerializable()
class AdDetailsData {
  @JsonKey(name: "ad")
  final Ad? ad;
  @JsonKey(name: "similarAds")
  final List<Ad>? similarAds;

  AdDetailsData({
    this.ad,
    this.similarAds,
  });

  factory AdDetailsData.fromJson(Map<String, dynamic> json) => _$AdDetailsDataFromJson(json);

  Map<String, dynamic> toJson() => _$AdDetailsDataToJson(this);
}

@JsonSerializable()
class Ad {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "owner")
  final Owner? owner;
  @JsonKey(name: "title")
  final String? title;
  @JsonKey(name: "price_type")
  final String? priceType;
  @JsonKey(name: "price")
  final String? price;
  @JsonKey(name: "is_featured")
  final int? isFeatured;
  @JsonKey(name: "type_id")
  final int? typeId;
  @JsonKey(name: "contract_style")
  final String? contractStyle;
  @JsonKey(name: "contract_type")
  final String? contractType;
  @JsonKey(name: "contract_type_en")
  final String? contractTypeEn;
  @JsonKey(name: "rent_period")
  final String? rentPeriod;
  @JsonKey(name: "is_installment")
  final String? isInstallment;
  @JsonKey(name: "is_installment_en")
  final String? isInstallmentEn;
  @JsonKey(name: "description")
  final String? description;
  @JsonKey(name: "featured_descrip")
  final String? featuredDescrip;
  @JsonKey(name: "city_id")
  final int? cityId;
  @JsonKey(name: "district_id")
  final int? districtId;
  @JsonKey(name: "city")
  final String? city;
  @JsonKey(name: "district")
  final String? district;
  @JsonKey(name: "address")
  final String? address;
  @JsonKey(name: "images")
  final List<String>? images;
  @JsonKey(name: "default_image")
  final String? defaultImage;
  @JsonKey(name: "lat")
  final String? lat;
  @JsonKey(name: "lng")
  final String? lng;
  @JsonKey(name: "size")
  final int? size;
  @JsonKey(name: "bar_icon")
  final List<BarIcon>? barIcon;
  @JsonKey(name: "is_expired")
  final int? isExpired;
  @JsonKey(name: "is_planned")
  final int? isPlanned;
  @JsonKey(name: "is_sold")
  final int? isSold;
  @JsonKey(name: "is_available")
  final int? isAvailable;
  @JsonKey(name: "property_data")
  final List<PropertyDatum>? propertyData;
  @JsonKey(name: "image_degree")
  final dynamic imageDegree;
  @JsonKey(name: "publish_at")
  final DateTime? publishAt;
  @JsonKey(name: "available_ads")
  final dynamic availableAds;
  @JsonKey(name: "total_ads")
  final dynamic totalAds;
  @JsonKey(name: "main_type")
  final int? mainType;
  @JsonKey(name: "distance")
  final String? distance;
  @JsonKey(name: "statistic")
  final String? statistic;

  Ad({
    this.id,
    this.owner,
    this.title,
    this.priceType,
    this.price,
    this.isFeatured,
    this.typeId,
    this.contractStyle,
    this.contractType,
    this.contractTypeEn,
    this.rentPeriod,
    this.isInstallment,
    this.isInstallmentEn,
    this.description,
    this.featuredDescrip,
    this.cityId,
    this.districtId,
    this.city,
    this.district,
    this.address,
    this.images,
    this.defaultImage,
    this.lat,
    this.lng,
    this.size,
    this.barIcon,
    this.isExpired,
    this.isPlanned,
    this.isSold,
    this.isAvailable,
    this.propertyData,
    this.imageDegree,
    this.publishAt,
    this.availableAds,
    this.totalAds,
    this.mainType,
    this.distance,
    this.statistic,
  });

  factory Ad.fromJson(Map<String, dynamic> json) => _$AdFromJson(json);

  Map<String, dynamic> toJson() => _$AdToJson(this);
}

@JsonSerializable()
class BarIcon {
  @JsonKey(name: "key")
  final String? key;
  @JsonKey(name: "value")
  final dynamic value;
  @JsonKey(name: "label")
  final String? label;
  @JsonKey(name: "icon")
  final String? icon;

  BarIcon({
    this.key,
    this.value,
    this.label,
    this.icon,
  });

  factory BarIcon.fromJson(Map<String, dynamic> json) => _$BarIconFromJson(json);

  Map<String, dynamic> toJson() => _$BarIconToJson(this);
}

@JsonSerializable()
class Owner {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "office_name")
  final String? officeName;
  @JsonKey(name: "phone")
  final String? phone;
  @JsonKey(name: "email")
  final dynamic email;
  @JsonKey(name: "city_id")
  final int? cityId;
  @JsonKey(name: "image")
  final dynamic image;
  @JsonKey(name: "about_office")
  final dynamic aboutOffice;
  @JsonKey(name: "lat")
  final dynamic lat;
  @JsonKey(name: "lng")
  final dynamic lng;
  @JsonKey(name: "role")
  final String? role;
  @JsonKey(name: "privileges")
  final List<dynamic>? privileges;

  Owner({
    this.id,
    this.name,
    this.officeName,
    this.phone,
    this.email,
    this.cityId,
    this.image,
    this.aboutOffice,
    this.lat,
    this.lng,
    this.role,
    this.privileges,
  });

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);

  Map<String, dynamic> toJson() => _$OwnerToJson(this);
}

@JsonSerializable()
class PropertyDatum {
  @JsonKey(name: "key")
  final String? key;
  @JsonKey(name: "value")
  final String? value;
  @JsonKey(name: "label")
  final String? label;
  @JsonKey(name: "icon")
  final String? icon;

  PropertyDatum({
    this.key,
    this.value,
    this.label,
    this.icon,
  });

  factory PropertyDatum.fromJson(Map<String, dynamic> json) => _$PropertyDatumFromJson(json);

  Map<String, dynamic> toJson() => _$PropertyDatumToJson(this);
}
