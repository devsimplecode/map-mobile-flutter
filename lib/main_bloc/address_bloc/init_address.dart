part of 'address_bloc.dart';

extension GoogleMarkers on AddressBloc {
  Future<void> _initAddress(
    InitAddress event,
    Emitter<AddressState> emit,
  ) async {
    try {
      double? distanceInMeters;
      double? bearing;
      final currentLng = bloc.state.maybeCurrentLng();
      final currentLat = bloc.state.maybeCurrentLat();
      emit(state.copyWith(loadingAddress: true));

      List<Placemark> placeMarks = await placemarkFromCoordinates(
        event.lat,
        event.lng,
        localeIdentifier: 'en_US',
      );
      final address = adr(placeMarks.first);
      if (event.selectionObject) {
        emit(state.copyWith(selectedAddress: address));
      } else {
        emit(state.copyWith(
          currentAddress: address,
          selectedAddress: Constants.empty,
        ));
      }
      if (currentLng != null &&
          currentLat != null &&
          bloc.state.maybeLocationStatus() == PermissionStatus.granted) {
        distanceInMeters = Geolocator.distanceBetween(
          currentLat,
          currentLng,
          event.lat,
          event.lng,
        );

        bearing = Geolocator.bearingBetween(
          currentLat,
          currentLng,
          event.lat,
          event.lng,
        );
      }
      emit(
        state.copyWith(
          loadingAddress: false,
          bearing: bearing,
          distanceInMeters: distanceInMeters,
          setMarkersOsm: event.selectionObject,
          markersGoogle: await googleMarkers(event, emit, currentLat, currentLng),
          markersYandex: await yandexMarkers(event, emit, currentLat, currentLng),
          location: LocationMap(lat: event.lat, lng: event.lng),
          error: Constants.empty,
        ),
      );
    } catch (error) {
      emit(state.copyWith(
        error: S.current.dataNoLoaded,
        location: LocationMap(lat: event.lat, lng: event.lng),
      ));
    }
  }

  String adr(Placemark value) {
    return '${street(value.street)}${value.administrativeArea}, ${value.subAdministrativeArea}, ${value.country}';
  }

  String street(String? value) {
    if (value?.contains("+") ?? true) {
      return Constants.empty;
    }
    return '$value, ';
  }
}
