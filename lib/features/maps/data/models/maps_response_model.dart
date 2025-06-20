import 'package:json_annotation/json_annotation.dart';
part 'maps_response_model.g.dart';
@JsonSerializable()
class MapsResponseModel {
  @JsonKey(name: "data")
  final Data? data;
  @JsonKey(name: "message")
  final String? message;
  @JsonKey(name: "success")
  final bool? success;

  MapsResponseModel({
    this.data,
    this.message,
    this.success,
  });

  factory MapsResponseModel.fromJson(Map<String, dynamic> json) => _$MapsResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$MapsResponseModelToJson(this);
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
  @JsonKey(name: "price_type")
  final String? priceType;
  @JsonKey(name: "price")
  final String? price;
  @JsonKey(name: "is_featured")
  final int? isFeatured;
  @JsonKey(name: "lat")
  final String? lat;
  @JsonKey(name: "lng")
  final String? lng;
  @JsonKey(name: "is_planned")
  final int? isPlanned;
  @JsonKey(name: "distance")
  final String? distance;

  Ad({
    this.id,
    this.priceType,
    this.price,
    this.isFeatured,
    this.lat,
    this.lng,
    this.isPlanned,
    this.distance,
  });

  factory Ad.fromJson(Map<String, dynamic> json) => _$AdFromJson(json);

  Map<String, dynamic> toJson() => _$AdToJson(this);
}
