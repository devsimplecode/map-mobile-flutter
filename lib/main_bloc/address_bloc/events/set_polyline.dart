part of '../address_bloc.dart';

extension SetPolylineMap on AddressBloc {
  Future<void> _setPolyline(
    SetPolyline event,
    Emitter<AddressState> emit,
  ) async {
    if (!event.clearAllPolyline && isNotEmptyLatLng) {
      PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        Environment.googleApiKey,
        PointLatLng(currentLat!, currentLng!),
        PointLatLng(state.location!.lat!, state.location!.lng!),
        travelMode: TravelMode.driving,
      );
      emit(
        state.copyWith(
          polylineGoogle: await googleSetPolyline(
            event,
            emit,
            result.points,
          ),
          polylineYandex: await yandexPolyline(
            event,
            emit,
            result.points,
          ),
          setPolylineOsm: true,
        ),
      );
    } else {
      emit(
        state.copyWith(
          polylineGoogle: const {},
          polylineYandex: const [],
          setPolylineOsm: false,
        ),
      );
    }
  }
}
