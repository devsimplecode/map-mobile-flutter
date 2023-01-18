import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:map_flutter/models/place_search.dart';
import 'package:map_flutter/repo/map_api.dart';
import 'package:map_flutter/l10n/generated/l10n.dart';

part 'google_map_bloc.freezed.dart';

part 'parts/search_address.dart';

class GoogleMapBloc extends Bloc<GoogleMapEvent, GoogleMapState> {
  GoogleMapBloc({required this.api}) : super(const GoogleMapState.google()) {
    on<_SearchAddress>(_searchAddress);
  }

  final MapApi api;
}

@freezed
class GoogleMapEvent with _$GoogleMapEvent {
  const factory GoogleMapEvent.searchAddress({
    required String search,
  }) = _SearchAddress;
}

@freezed
class GoogleMapState with _$GoogleMapState {
  const factory GoogleMapState.google({
    @Default(false) bool loadingAddress,
    List<PlaceSearch>? places,
    String? error,
  }) = _Google;
}
