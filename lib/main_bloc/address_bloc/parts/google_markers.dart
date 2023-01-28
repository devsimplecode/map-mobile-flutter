import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:map_flutter/constants/assets.dart';
import 'package:map_flutter/main_bloc/address_bloc/address_bloc.dart';

extension GoogleMarkers on AddressBloc {
  Future<Set<Marker>> googleMarkers(
    InitAddress event,
    Emitter<AddressState> emit,
  ) async {
    Set<Marker> markers = {};
    List<Marker> markersList = [];

    var iconPoint = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(),
      AppAssets.images.point,
    );
    var iconLocation = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(),
      AppAssets.images.location,
    );
    if (bloc.state.status == PermissionStatus.granted) {
      markersList.add(
        Marker(
          icon: iconLocation,
          anchor: const Offset(0.5, 0.5),
          markerId: const MarkerId('1'),
          position: LatLng(currentLat ?? 0.0, currentLng ?? 0.0),
        ),
      );
    }
    if (event.selectionObject) {
      markersList.add(
        Marker(
          icon: iconPoint,
          anchor: const Offset(0.5, 0.5),
          markerId: const MarkerId('2'),
          position: LatLng(event.lat, event.lng),
        ),
      );
    }

    markers.addAll(markersList);
    return markers;
  }
}
