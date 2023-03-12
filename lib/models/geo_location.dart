import 'package:flutter/foundation.dart';

@immutable
class GeoLocation {
  final double? _lon;
  final double? _lat;

  double get lon => _lon ?? 0.0;
  double get lat => _lat ?? 0.0;

  const GeoLocation._internal({required lon, required lat}): _lon = lon, _lat = lat;
  
  factory GeoLocation({required double lon, required double lat}) {
    return GeoLocation._internal(
      lon: lon,
      lat: lat);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GeoLocation &&
      _lon == other._lon &&
      _lat == other._lat;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = StringBuffer();
    buffer.write("GeoLocation {");
    buffer.write("lon=${_lon != null ? _lon!.toString() : "null"}, ");
    buffer.write("lat=${_lat != null ? _lat!.toString() : "null"}");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  GeoLocation copyWith({double? lon, double? lat}) {
    return GeoLocation._internal(
      lon: lon ?? this.lon,
      lat: lat ?? this.lat);
  }
  
  GeoLocation.fromJson(Map<String, dynamic> json)  
    : _lon = (json['lon'] as num?)?.toDouble(),
      _lat = (json['lat'] as num?)?.toDouble();
  
  Map<String, dynamic> toJson() => {
    'lon': _lon, 'lat': _lat
  };
  
  Map<String, Object?> toMap() => {
    'lon': _lon, 'lat': _lat
  };
}