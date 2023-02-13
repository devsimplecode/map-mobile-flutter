import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:location/location.dart';
import 'package:map_flutter/repo/base_api.dart';

part 'location_bloc.freezed.dart';

part 'parts/init_location.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc({
    required this.api,
  }) : super(const LocationState.init(status: PermissionStatus.granted)) {
    _subscription ??= location.onLocationChanged.listen((event) async {
      var hasPermission = await location.hasPermission() == PermissionStatus.granted;
      if (state is _Init && hasPermission) {
        add(const LocationEvent.initLocation(moveToCurrentLocation: true));
      }
    });
    on<_InitLocation>(_initLocation);
  }

  final BaseApi api;
  Location location = Location();
  StreamSubscription<LocationData>? _subscription;

  @override
  Future<void> close() async {
    await _subscription?.cancel();
    await super.close();
  }
}

@freezed
class LocationEvent with _$LocationEvent {
  const factory LocationEvent.initLocation({
    @Default(false) bool moveToCurrentLocation,
  }) = _InitLocation;
}

@freezed
class LocationState with _$LocationState {
  const LocationState._();

  const factory LocationState.init({
    PermissionStatus? status,
  }) = _Init;

  const factory LocationState.map({
    @Default(false) bool moveToCurrentLocation,
    double? latitude,
    double? longitude,
    PermissionStatus? status,
    UniqueKey? key,
  }) = _Map;

  T? maybeCurrentLat<T extends double>() => maybeWhen(
        map: (_, lat, lng, __, ___) {
          if (lat is T) {
            return lat;
          }

          return null;
        },
        orElse: () => null,
      );

  T? maybeCurrentLng<T extends double>() => maybeWhen(
        map: (_, lat, lng, __, ___) {
          if (lng is T) {
            return lng;
          }

          return null;
        },
        orElse: () => null,
      );


  T? maybeKey<T extends UniqueKey>() => maybeWhen(
        map: (_, lat, lng, __, key) {
          if (key is T) {
            return key;
          }

          return null;
        },
        orElse: () => null,
      );
}
