import 'package:map_flutter/models/place.dart';
import 'package:flutter/foundation.dart';

@immutable
class PlaceSearch {
  final String? address;
  final String? placeId;
  final Place? place;

  const PlaceSearch({
    this.address,
    this.placeId,
    this.place,
  });

  factory PlaceSearch.fromJson(Map<String, dynamic> json) {
    return PlaceSearch(
      address: json['description'],
      placeId: json['place_id'],
    );
  }

  @override
  String toString() {
    return 'PlaceSearch{address: $address, placeId: $placeId, place: $place}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlaceSearch &&
          runtimeType == other.runtimeType &&
          address == other.address &&
          placeId == other.placeId &&
          place == other.place;

  @override
  int get hashCode => address.hashCode ^ placeId.hashCode ^ place.hashCode;
}
