import 'package:json_annotation/json_annotation.dart';
part "qsr_sakany_rent_model.g.dart";
@JsonSerializable()
class QsrSakanyRentModel {
  @JsonKey(name: "data")
  final Data? data;
  @JsonKey(name: "message")
  final String? message;
  @JsonKey(name: "success")
  final bool? success;

  QsrSakanyRentModel({
    this.data,
    this.message,
    this.success,
  });

  factory QsrSakanyRentModel.fromJson(Map<String, dynamic> json) => _$QsrSakanyRentModelFromJson(json);

  Map<String, dynamic> toJson() => _$QsrSakanyRentModelToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name: "ads")
  final List<Ad>? ads;
  @JsonKey(name: "hasMorePage")
  final bool? hasMorePage;
  @JsonKey(name: "photoAds")
  final List<dynamic>? photoAds;
  @JsonKey(name: "featuredAds")
  final List<dynamic>? featuredAds;

  Data({
    this.ads,
    this.hasMorePage,
    this.photoAds,
    this.featuredAds,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Ad {
  @JsonKey(name: "id")
  final int? id;
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
  final dynamic isInstallmentEn;
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
  @JsonKey(name: "distance")
  final String? distance;
  @JsonKey(name: "is_sold")
  final int? isSold;
  @JsonKey(name: "is_available")
  final int? isAvailable;
  @JsonKey(name: "publish_at")
  final DateTime? publishAt;
  @JsonKey(name: "statistic")
  final String? statistic;

  Ad({
    this.id,
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
    this.defaultImage,
    this.lat,
    this.lng,
    this.size,
    this.barIcon,
    this.isExpired,
    this.isPlanned,
    this.distance,
    this.isSold,
    this.isAvailable,
    this.publishAt,
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
