part of '../google_map_bloc.dart';

extension InitAddress on GoogleMapBloc {
  Future<void> _initAddress(
    _InitAddress event,
    Emitter<GoogleMapState> emit,
  ) async {
    emit(state.copyWith(loadingAddress: true));
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
    final address =
        '${placeMarks.first.street}, ${placeMarks.first.administrativeArea}, ${placeMarks.first.subAdministrativeArea}, ${placeMarks.first.country}';
    if (event.selectionObject) {
      emit(state.copyWith(selectedAddress: address));
    } else {
      emit(state.copyWith(
        currentAddress: address,
        selectedAddress: '',
      ));
    }
    emit(
      state.copyWith(
        loadingAddress: false,
        markers: markers,
        location: LocationMap(lat: event.lat, lng: event.long),
      ),
    );
  }
}
