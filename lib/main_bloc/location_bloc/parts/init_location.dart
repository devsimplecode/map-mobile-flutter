part of '../location_bloc.dart';

extension InitLocation on LocationBloc {
  Future<void> _initLocation(
    _InitLocation event,
    Emitter<LocationState> emit,
  ) async {
    double? latitude = state.maybeCurrentLat();
    double? longitude = state.maybeCurrentLng();
    Location location = Location();
    try {
      await location.getLocation().then((location) {
        latitude = location.latitude;
        longitude = location.longitude;
      });

      emit(LocationState.map(
        latitude: latitude,
        longitude: longitude,
        status: PermissionStatus.granted,
        key: UniqueKey(),
      ));
    } catch (error) {
      var permissionGranted = await location.hasPermission();
      final response = await api.getIpAddress();
      if(response.error!=null){
        emit(LocationState.init(status: permissionGranted));
        return;
      }
      final locationApi = response.data?.loc?.split(',');
      latitude = double.parse(locationApi?[0] ?? '');
      longitude = double.parse(locationApi?[1] ?? '');
      emit(LocationState.map(
        latitude: latitude,
        longitude: longitude,
        status: permissionGranted,
        key: UniqueKey(),
      ));
    }
  }
}
