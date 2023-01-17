import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:map_flutter/models/place.dart';
import 'package:map_flutter/repo/map_api.dart';

part 'yandex_map_bloc.freezed.dart';
part 'parts/search_address.dart';
class YandexMapBloc extends Bloc<YandexMapEvent, YandexMapState> {
  YandexMapBloc({required this.api}) : super(const YandexMapState.yandex()) {
    on<_SearchAddress>(_searchAddress);
  }

  final MapApi api;
}

@freezed
class YandexMapEvent with _$YandexMapEvent {
  const factory YandexMapEvent.searchAddress({
    required String search,
  }) = _SearchAddress;
}

@freezed
class YandexMapState with _$YandexMapState {
  const factory YandexMapState.yandex({
    @Default(false) bool loadingAddress,
    List<Place>? places,
    String? error,
  }) = _Yandex;
}
