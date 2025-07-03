import 'package:json_annotation/json_annotation.dart';
part 'villa_sakany_model.g.dart';
@JsonSerializable()
class VillaSakanyModel {
  @JsonKey(name: "data")
  final VillaData? villaData;
  @JsonKey(name: "message")
  final String? message;
  @JsonKey(name: "success")
  final bool? success;

  VillaSakanyModel({
    this.villaData,
    this.message,
    this.success,
  });

  factory VillaSakanyModel.fromJson(Map<String, dynamic> json) => _$VillaSakanyModelFromJson(json);

  Map<String, dynamic> toJson() => _$VillaSakanyModelToJson(this);
}

@JsonSerializable()
class VillaData {
  @JsonKey(name: "ads")
  final List<Ad>? ads;
  @JsonKey(name: "hasMorePage")
  final bool? hasMorePage;
  @JsonKey(name: "photoAds")
  final List<dynamic>? photoAds;
  @JsonKey(name: "featuredAds")
  final List<dynamic>? featuredAds;

  VillaData({
    this.ads,
    this.hasMorePage,
    this.photoAds,
    this.featuredAds,
  });

  factory VillaData.fromJson(Map<String, dynamic> json) => _$VillaDataFromJson(json);

  Map<String, dynamic> toJson() => _$VillaDataToJson(this);
}

@JsonSerializable()
class Ad {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "title")
  final String? title;
  @JsonKey(name: "price_type")
  final PriceType? priceType;
  @JsonKey(name: "price")
  final String? price;
  @JsonKey(name: "is_featured")
  final int? isFeatured;
  @JsonKey(name: "type_id")
  final int? typeId;
  @JsonKey(name: "contract_style")
  final ContractStyle? contractStyle;
  @JsonKey(name: "contract_type")
  final ContractType? contractType;
  @JsonKey(name: "contract_type_en")
  final ContractTypeEn? contractTypeEn;
  @JsonKey(name: "rent_period")
  final RentPeriod? rentPeriod;
  @JsonKey(name: "is_installment")
  final IsInstallment? isInstallment;
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
  final Key? key;
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

enum Key {
  @JsonValue("all_land_size")
  ALL_LAND_SIZE,
  @JsonValue("bathrooms_number")
  BATHROOMS_NUMBER,
  @JsonValue("building_age")
  BUILDING_AGE,
  @JsonValue("floors_number")
  FLOORS_NUMBER,
  @JsonValue("front_yard")
  FRONT_YARD,
  @JsonValue("halls_number")
  HALLS_NUMBER,
  @JsonValue("kitchens_number")
  KITCHENS_NUMBER,
  @JsonValue("locations")
  LOCATIONS,
  @JsonValue("master_rooms_number")
  MASTER_ROOMS_NUMBER,
  @JsonValue("rooms_number")
  ROOMS_NUMBER,
  @JsonValue("size")
  SIZE
}

enum Label {
  @JsonValue("مساحة مسطح البناء")
  AMBITIOUS,
  @JsonValue("الواجهة")
  CUNNING,
  @JsonValue("الموقع")
  EMPTY,
  @JsonValue("عدد الحمامات")
  FLUFFY,
  @JsonValue("عدد الغرف الرئيسية")
  HILARIOUS,
  @JsonValue("عدد الصالات")
  INDECENT,
  @JsonValue("عدد الغرف")
  INDIGO,
  @JsonValue("متر")
  LABEL,
  @JsonValue("عدد الطوابق")
  PURPLE,
  @JsonValue("عام البناء")
  STICKY,
  @JsonValue("عدد المطابخ")
  TENTACLED
}

enum ContractStyle {
  @JsonValue("for_rent")
  FOR_RENT,
  @JsonValue("for_sale")
  FOR_SALE
}

enum ContractType {
  @JsonValue("للإيجار")
  CONTRACT_TYPE,
  @JsonValue("للبيع")
  EMPTY
}

enum ContractTypeEn {
  @JsonValue("rent")
  RENT,
  @JsonValue("sale")
  SALE
}

enum IsInstallment {
  @JsonValue("لا يوجد تقسيط")
  EMPTY,
  @JsonValue("يوجد تقسيط")
  IS_INSTALLMENT,
  @JsonValue("")
  PURPLE
}

enum PriceType {
  @JsonValue("fixed")
  FIXED
}

enum RentPeriod {
  @JsonValue("daily")
  DAILY,
  @JsonValue("")
  EMPTY,
  @JsonValue("monthly")
  MONTHLY,
  @JsonValue("open")
  OPEN,
  @JsonValue("yearly")
  YEARLY
}
