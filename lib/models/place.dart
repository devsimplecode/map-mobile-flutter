import 'package:map_flutter/models/geometry.dart';

class Place {
  final Geometry? geometry;
  final String? name;
  final String? address;

  Place({this.geometry, this.name, this.address});

  factory Place.fromJsonGoogle(Map<String, dynamic> json) {
    return Place(
      geometry: Geometry.fromJsonGoogle(json['geometry']),
      name: json['formatted_address'],
      address: json['vicinity'],
    );
  }

  factory Place.fromJsonYandex(Map<String, dynamic> json) {
    final detail = json['properties'];
    return Place(
      geometry: Geometry.fromJsonYandex(json['geometry']),
      name: detail['name'],
      address: detail['description'],
    );
  }

  @override
  String toString() {
    return 'Place{geometry: $geometry, name: $name, address: $address}';
  }
}
