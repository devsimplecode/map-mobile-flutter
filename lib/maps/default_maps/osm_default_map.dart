import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

class OsmDefaultMap extends StatelessWidget {
  const OsmDefaultMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OSMFlutter(
      controller: MapController(
        initMapWithUserPosition: false,
        initPosition: GeoPoint(
          latitude: 53.0000,
          longitude: 9.0000,
        ),
      ),
    );
  }
}
