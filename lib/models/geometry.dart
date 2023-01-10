
import 'package:map_flutter/models/location.dart';

class Geometry {
  final LocationMap? location;

  Geometry({this.location});

  Geometry.fromJson(Map<dynamic,dynamic> parsedJson)
      :location = LocationMap.fromJson(parsedJson['location']);
}