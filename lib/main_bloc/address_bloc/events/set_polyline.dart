part of '../address_bloc.dart';

extension SetPolylineMap on AddressBloc {
  Future<void> _setPolyline(
    SetPolyline event,
    Emitter<AddressState> emit,
  ) async {
    final currentLng = bloc.state.maybeCurrentLng();
    final currentLat = bloc.state.maybeCurrentLat();
    PolylinePoints polylinePoints = PolylinePoints();
    if (isNotEmptyLatLng) {
      PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        Environment.googleApiKey,
        PointLatLng(currentLat!, currentLng!),
        PointLatLng(state.location!.lat!, state.location!.lng!),
        travelMode: TravelMode.driving,
      );
      emit(
        state.copyWith(
          mapObjectsYandex: await yandexPolyline(
            event,
            emit,
            currentLat,
            currentLng,
            result.points,
          ),
        ),
      );
    }
  }
}
