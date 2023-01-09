import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:map_flutter/constants/assets.dart';

part 'google_map_bloc.freezed.dart';

class GoogleMapBloc extends Bloc<GoogleMapEvent, GoogleMapState> {
  GoogleMapBloc() : super(const GoogleMapState.google()) {
    on<_InitAddress>((event, emit) async {
      emit(const GoogleMapState.google(loading: true));
      List<Marker> markers = [];
      List<Placemark> placeMarks = await placemarkFromCoordinates(
        event.lat,
        event.long,
        localeIdentifier: 'en_US',
      );
      var iconPoint = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(),
        AppAssets.images.point,
      );
      var iconLocation = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(),
        AppAssets.images.location,
      );

      if (event.selectionObject) {
        markers.add(
          Marker(
            icon: iconLocation,
            anchor: const Offset(0.5, 0.5),
            markerId: const MarkerId('1'),
            position: LatLng(event.currentLat ?? event.lat, event.currentLong ?? event.long),
          ),
        );
        markers.add(
          Marker(
            icon: iconPoint,
            anchor: const Offset(0.5, 0.5),
            markerId: const MarkerId('2'),
            position: LatLng(event.lat, event.long),
          ),
        );
      } else {
        markers.add(
          Marker(
            icon: iconLocation,
            anchor: const Offset(0.5, 0.5),
            markerId: const MarkerId('1'),
            position: LatLng(event.currentLat ?? event.lat, event.currentLong ?? event.long),
          ),
        );
      }
      emit(
        GoogleMapState.google(
          loading: false,
          address:
              '${placeMarks.first.street}, ${placeMarks.first.administrativeArea}, ${placeMarks.first.subAdministrativeArea}, ${placeMarks.first.country}',
          markers: markers,
        ),
      );
    });
  }
}

@freezed
class GoogleMapEvent with _$GoogleMapEvent {
  const factory GoogleMapEvent.initAddress({
    required double lat,
    required double long,
    double? currentLat,
    double? currentLong,
    @Default(false) bool selectionObject,
  }) = _InitAddress;
}

@freezed
class GoogleMapState with _$GoogleMapState {
  const factory GoogleMapState.google({
    @Default(false) bool loading,
    List<Marker>? markers,
    String? address,
  }) = _Google;
}
