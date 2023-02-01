part of '../address_bloc.dart';

extension InitAddressMap on AddressBloc {
  Future<void> _initAddress(
    InitAddress event,
    Emitter<AddressState> emit,
  ) async {
    try {
      double? distanceInMeters;
      double? bearing;

      emit(state.copyWith(loadingAddress: true));

      List<Placemark> placeMarks = await placemarkFromCoordinates(event.lat, event.lng);
      final address = adr(placeMarks.first);
      if (notNull(currentLat) &&
          notNull(currentLng) &&
          bloc.state.status == PermissionStatus.granted) {
        distanceInMeters = Geolocator.distanceBetween(
          currentLat!,
          currentLng!,
          event.lat,
          event.lng,
        );

        bearing = Geolocator.bearingBetween(
          currentLat!,
          currentLng!,
          event.lat,
          event.lng,
        );
      }
      emit(
        state.copyWith(
          bearing: bearing,
          setPolylineOsm: false,
          loadingAddress: false,
          error: Constants.empty,
          polylineGoogle: const {},
          polylineYandex: const [],
          distanceInMeters: distanceInMeters,
          setMarkersOsm: event.selectionObject,
          markersGoogle: await googleMarkers(event, emit),
          markersYandex: await yandexMarkers(event, emit),
          location: LocationMap(lat: event.lat, lng: event.lng),
          selectedAddress: event.selectionObject ? address : Constants.empty,
          currentAddress: !event.selectionObject ? address : state.currentAddress,
        ),
      );
    } catch (error) {
      emit(state.copyWith(
        error: S.current.dataNoLoaded,
        location: LocationMap(lat: event.lat, lng: event.lng),
      ));
    }
  }
}
