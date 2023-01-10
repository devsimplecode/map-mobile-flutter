import 'package:map_flutter/models/place.dart';

class PlaceSearch {
  final String? description;
  final String? placeId;
  final Place? place;

  PlaceSearch({this.description, this.placeId, this.place});

  factory PlaceSearch.fromJson(Map<String, dynamic> json) {
    return PlaceSearch(
      description: json['description'],
      placeId: json['place_id'],
    );
  }
}
