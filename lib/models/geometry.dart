import 'package:map_flutter/models/location.dart';

class Geometry {
  final LocationMap? locationGoogle;
  final LocationMap? locationYandex;
  final LocationMap? locationOsm;

  Geometry({
    this.locationGoogle,
    this.locationYandex,
    this.locationOsm,
  });

  factory Geometry.fromJsonGoogle(Map<dynamic, dynamic> parsedJson) =>
      Geometry(locationGoogle: LocationMap.fromJsonGoogle(parsedJson['location']));

  factory Geometry.fromJsonYandex(Map<dynamic, dynamic> parsedJson) =>
      Geometry(locationYandex: LocationMap.fromJsonYandex(parsedJson['coordinates']));

  @override
  String toString() {
    return 'Geometry{locationGoogle: $locationGoogle, locationYandex: $locationYandex, locationOsm: $locationOsm}';
  }
}
