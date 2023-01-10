part of '../main_bloc.dart';

extension InitLocation on MainBloc {
  Future<void> _initLocation(
    _InitLocation event,
    Emitter<MainState> emit,
  ) async {
    if (!event.moveToCurrentLocation)  emit(const MainState.loading());
    Location location = Location();
    try {
      await location.getLocation().then((location) {
        latitude = location.latitude;
        longitude = location.longitude;
      });
      if (longitude == null || latitude == null) {
        emit(const MainState.loading());
      }
      emit(MainState.map(
        latitude: latitude,
        longitude: longitude,
        moveToCurrentLocation: event.moveToCurrentLocation,
      ));
    } catch (error) {
      var serviceEnabled = await location.serviceEnabled();
      if (!serviceEnabled) {
        serviceEnabled = await location.requestService();
        if (!serviceEnabled) {
          return;
        }
      }
      var permissionGranted = await location.hasPermission();
      if (permissionGranted == PermissionStatus.denied) {
        final response = await api.getIpAddress();
        if (response.error != null) {
          emit(MainState.error(
            error: response.error?.message,
          ));
          return;
        }
        final location = response.data?.loc?.split(',');
        latitude = double.parse(location?[0] ?? '');
        longitude = double.parse(location?[1] ?? '');
        emit(MainState.map(
          latitude: latitude,
          longitude: longitude,
          moveToCurrentLocation: event.moveToCurrentLocation,
        ));
        return;
      }
    }
  }
}
