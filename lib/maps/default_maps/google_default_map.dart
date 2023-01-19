import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleDefaultMap extends StatelessWidget {
  const GoogleDefaultMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GoogleMap(
      initialCameraPosition: CameraPosition(
        target: LatLng(
          53.0000,
          9.0000,
        ),
        zoom: 1,
      ),
    );
  }
}
