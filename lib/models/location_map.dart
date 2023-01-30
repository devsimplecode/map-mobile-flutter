import 'package:flutter/foundation.dart';

@immutable
class LocationMap {
  final double? lat;
  final double? lng;

  const LocationMap({this.lat, this.lng});

  factory LocationMap.fromJson(Map<dynamic, dynamic> parsedJson) {
    return LocationMap(lat: parsedJson['lat'], lng: parsedJson['lng']);
  }

  @override
  String toString() {
    return 'LocationMap{lat: $lat, lng: $lng}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocationMap &&
          runtimeType == other.runtimeType &&
          lat == other.lat &&
          lng == other.lng;

  @override
  int get hashCode => lat.hashCode ^ lng.hashCode;
}
