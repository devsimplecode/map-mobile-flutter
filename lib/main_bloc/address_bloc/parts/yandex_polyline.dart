import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:map_flutter/constants/constants.dart';
import 'package:map_flutter/main_bloc/address_bloc/address_bloc.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

extension YandexPolyline on AddressBloc {
  Future<List<MapObject>> yandexPolyline(
    SetPolyline event,
    Emitter<AddressState> emit,
    List<PointLatLng> points,
  ) async {
    List<MapObject> mapObjectsYandex = [];

    final mapObject = PolylineMapObject(
      mapId: const MapObjectId(Constants.keyYandexPolyline),
      polyline: Polyline(
        points: [
          for (var point in points)
            Point(
              latitude: point.latitude,
              longitude: point.longitude,
            ),
        ],
      ),
      strokeColor: Colors.blue,
      outlineColor: Colors.blue,
      strokeWidth: 4,
      turnRadius: 8.0,
      arcApproximationStep: 1.0,
      gradientLength: 1.0,
      isInnerOutlineEnabled: true,
    );
    mapObjectsYandex.add(mapObject);
    return mapObjectsYandex;
  }
}
