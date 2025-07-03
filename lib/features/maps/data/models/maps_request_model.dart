class MapsRequestModel {
  final double? lat;
  final double? lng;
  final int? filter_options;

  MapsRequestModel({
    required this.lat,
    required this.lng,
    required this.filter_options,
  });
  factory MapsRequestModel.fromJson(Map<String, dynamic> json) {
    return MapsRequestModel(
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
      filter_options: json['filter_options'] as int?,
    );
  }
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'lat': lat,
      'lng': lng,
      'filter_options': filter_options,
    };
  }
}
