class LocationMap {
  final double? lat;
  final double? lng;

  LocationMap({this.lat, this.lng});

  factory LocationMap.fromJsonGoogle(Map<dynamic, dynamic> parsedJson) {
    return LocationMap(lat: parsedJson['lat'], lng: parsedJson['lng']);
  }

  factory LocationMap.fromJsonYandex(List<dynamic> parsedJson) {
    return LocationMap(lat: parsedJson[1], lng: parsedJson[0]);
  }

  @override
  String toString() {
    return 'LocationMap{lat: $lat, lng: $lng}';
  }
}
