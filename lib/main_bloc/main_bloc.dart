import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:location/location.dart';
import 'package:map_flutter/repo/map_api.dart';

part 'main_bloc.freezed.dart';

part 'parts/init_location.dart';

enum MapsType { google }

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc({required this.api}) : super(const MainState.init()) {
    on<_InitLocation>(_initLocation);
    on<_SetMap>((event, emit) {});
  }

  double? latitude;
  double? longitude;
  final MapApi api;
}

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.initLocation({
    @Default(false) bool moveToCurrentLocation,
  }) = _InitLocation;

  const factory MainEvent.setMap({required MapsType mapsType}) = _SetMap;
}

@freezed
class MainState with _$MainState {
  const factory MainState.init() = _Init;

  const factory MainState.error({
    required String? error,
  }) = _Error;

  const factory MainState.loading() = _Loading;

  const factory MainState.map({
    @Default(MapsType.google) MapsType mapsType,
    @Default(false) bool moveToCurrentLocation,
    double? latitude,
    double? longitude,
  }) = _Map;
}
