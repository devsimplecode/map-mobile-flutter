import 'package:map_flutter/models/place.dart';

class PlaceSearch {
  final String? address;
  final String? placeId;
  final Place? place;

  PlaceSearch({this.address, this.placeId, this.place});

  factory PlaceSearch.fromJson(Map<String, dynamic> json) {
    return PlaceSearch(
      address: json['description'],
      placeId: json['place_id'],
    );
  }
}
