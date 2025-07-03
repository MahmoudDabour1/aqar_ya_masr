
import 'package:json_annotation/json_annotation.dart';
part 'price_guide_model.g.dart';
@JsonSerializable()
class PriceGuideModel {
  @JsonKey(name: "data")
  final Data? data;
  @JsonKey(name: "status")
  final String? status;

  PriceGuideModel({
    this.data,
    this.status,
  });

  factory PriceGuideModel.fromJson(Map<String, dynamic> json) => _$PriceGuideModelFromJson(json);

  Map<String, dynamic> toJson() => _$PriceGuideModelToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name: "districts")
  final List<District>? districts;
  @JsonKey(name: "price_to")
  final int? priceTo;

  Data({
    this.districts,
    this.priceTo,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class District {
  @JsonKey(name: "district_id")
  final int? districtId;
  @JsonKey(name: "district_name")
  final String? districtName;
  @JsonKey(name: "district_image")
  final String? districtImage;
  @JsonKey(name: "district_lat")
  final String? districtLat;
  @JsonKey(name: "district_lng")
  final String? districtLng;
  @JsonKey(name: "city_id")
  final int? cityId;
  @JsonKey(name: "city_name")
  final String? cityName;
  @JsonKey(name: "avg_price")
  final String? avgPrice;
  @JsonKey(name: "max_price")
  final String? maxPrice;
  @JsonKey(name: "min_price")
  final String? minPrice;
  @JsonKey(name: "count_ads")
  final dynamic countAds;

  District({
    this.districtId,
    this.districtName,
    this.districtImage,
    this.districtLat,
    this.districtLng,
    this.cityId,
    this.cityName,
    this.avgPrice,
    this.maxPrice,
    this.minPrice,
    this.countAds,
  });

  factory District.fromJson(Map<String, dynamic> json) => _$DistrictFromJson(json);

  Map<String, dynamic> toJson() => _$DistrictToJson(this);
}

