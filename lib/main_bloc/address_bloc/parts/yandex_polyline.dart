import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:map_flutter/main_bloc/address_bloc/address_bloc.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

extension YandexPolyline on AddressBloc {
  Future<List<MapObject>> yandexPolyline(
    SetPolyline event,
    Emitter<AddressState> emit,
    double? currentLat,
    double? currentLng,
    List<PointLatLng> points,
  ) async {
    List<MapObject> mapObjectsYandex = [];

    const MapObjectId mapObjectId = MapObjectId('polyline');
    final mapObject = PolylineMapObject(
      mapId: mapObjectId,
      polyline: Polyline(
        points: [
          for (var point in points)
            Point(
              latitude: point.latitude,
              longitude: point.longitude,
            ),
        ],
      ),
      strokeColor: Colors.orange[700]!,
      strokeWidth: 7.5,
      outlineColor: Colors.yellow[200]!,
      outlineWidth: 2.0,
      turnRadius: 10.0,
      arcApproximationStep: 1.0,
      gradientLength: 1.0,
      isInnerOutlineEnabled: true,
    );
    mapObjectsYandex.add(mapObject);
    return mapObjectsYandex;
  }
}
