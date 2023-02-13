import 'package:map_flutter/models/location_map.dart';
import 'package:flutter/foundation.dart';

@immutable
class Geometry {
  final LocationMap? locationMap;

  const Geometry({this.locationMap});

  factory Geometry.fromJson(Map<dynamic, dynamic> parsedJson) =>
      Geometry(locationMap: LocationMap.fromJson(parsedJson['location']));

  @override
  String toString() {
    return 'Geometry{locationMap: $locationMap}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Geometry &&
          runtimeType == other.runtimeType &&
          locationMap == other.locationMap;

  @override
  int get hashCode => locationMap.hashCode;
}
