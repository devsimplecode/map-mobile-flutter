part of '../location_bloc.dart';

extension InitLocation on LocationBloc {
  Future<void> _initLocation(
    _InitLocation event,
    Emitter<LocationState> emit,
  ) async {
    double? latitude;
    double? longitude;
    if (!event.moveToCurrentLocation) emit(const LocationState.loading());
    Location location = Location();
    try {
      await location.getLocation().then((location) {
        latitude = location.latitude;
        longitude = location.longitude;
      });

      if (longitude == null || latitude == null) {
        emit(const LocationState.loading());
      }

      emit(LocationState.map(
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
          emit(const LocationState.error(
            error: 'Что-то пошло не так ;)',
          ));
          return;
        }
        final location = response.data?.loc?.split(',');
        latitude = double.parse(location?[0] ?? '');
        longitude = double.parse(location?[1] ?? '');
        emit(LocationState.map(
          latitude: latitude,
          longitude: longitude,
          moveToCurrentLocation: event.moveToCurrentLocation,
        ));
        return;
      }
    }
  }
}
