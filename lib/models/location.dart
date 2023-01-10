class LocationMap {
  final double? lat;
  final double? lng;

  LocationMap({this.lat, this.lng});

  factory LocationMap.fromJson(Map<dynamic, dynamic> parsedJson) {
    return LocationMap(lat: parsedJson['lat'], lng: parsedJson['lng']);
  }
}
