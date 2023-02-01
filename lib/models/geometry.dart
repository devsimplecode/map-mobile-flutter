import 'package:map_flutter/models/location_map.dart';
import 'package:flutter/foundation.dart';

@immutable
class Geometry {
  final LocationMap? locationGoogle;

  const Geometry({this.locationGoogle});

  factory Geometry.fromJson(Map<dynamic, dynamic> parsedJson) =>
      Geometry(locationGoogle: LocationMap.fromJson(parsedJson['location']));

  @override
  String toString() {
    return 'Geometry{locationGoogle: $locationGoogle}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Geometry &&
          runtimeType == other.runtimeType &&
          locationGoogle == other.locationGoogle;

  @override
  int get hashCode => locationGoogle.hashCode;
}
