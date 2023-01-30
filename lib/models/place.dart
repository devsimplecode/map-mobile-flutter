import 'package:map_flutter/models/geometry.dart';
import 'package:flutter/foundation.dart';

@immutable
class Place {
  final Geometry? geometry;
  final String? name;
  final String? address;

  const Place({
    this.geometry,
    this.name,
    this.address,
  });

  factory Place.fromJson(Map<String, dynamic> json) {
    return Place(
      geometry: Geometry.fromJson(json['geometry']),
      name: json['formatted_address'],
      address: json['vicinity'],
    );
  }

  @override
  String toString() {
    return 'Place{geometry: $geometry, name: $name, address: $address}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Place &&
          runtimeType == other.runtimeType &&
          geometry == other.geometry &&
          name == other.name &&
          address == other.address;

  @override
  int get hashCode => geometry.hashCode ^ name.hashCode ^ address.hashCode;
}
