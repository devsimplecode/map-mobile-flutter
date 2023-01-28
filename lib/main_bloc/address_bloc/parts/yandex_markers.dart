import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location/location.dart';
import 'package:map_flutter/constants/assets.dart';
import 'package:map_flutter/main_bloc/address_bloc/address_bloc.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

extension YandexMarkers on AddressBloc {
  Future<List<PlacemarkMapObject>> yandexMarkers(
    InitAddress event,
    Emitter<AddressState> emit,
    double? currentLat,
    double? currentLng,
  ) async {
    List<PlacemarkMapObject> markers = [];
    var iconLocation = PlacemarkIcon.composite([
      PlacemarkCompositeIconItem(
          name: 'Current Location',
          style: PlacemarkIconStyle(
            image: BitmapDescriptor.fromAssetImage(
              AppAssets.images.location,
            ),
            anchor: const Offset(0.5, 0.5),
          )),
    ]);
    var iconPoint = PlacemarkIcon.composite([
      PlacemarkCompositeIconItem(
          name: 'Select Location',
          style: PlacemarkIconStyle(
            image: BitmapDescriptor.fromAssetImage(
              AppAssets.images.point,
            ),
            anchor: const Offset(0.5, 0.5),
          )),
    ]);

    if (bloc.state.maybeLocationStatus() == PermissionStatus.granted) {
      markers.add(
        PlacemarkMapObject(
          icon: iconLocation,
          mapId: const MapObjectId('1'),
          point: Point(
            latitude: currentLat ?? 0.0,
            longitude: currentLng ?? 0.0,
          ),
        ),
      );
    }
    if (event.selectionObject) {
      markers.add(
        PlacemarkMapObject(
          icon: iconPoint,
          mapId: const MapObjectId('2'),
          point: Point(
            latitude: event.lat,
            longitude: event.lng,
          ),
        ),
      );
    }
    return markers;
  }
}
