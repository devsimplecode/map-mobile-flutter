import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:map_flutter/main_bloc/location_bloc/location_bloc.dart';
import 'package:map_flutter/models/place_search.dart';
import 'package:map_flutter/repo/map_api.dart';
import 'package:map_flutter/l10n/generated/l10n.dart';
import 'package:uuid/uuid.dart';

part 'google_map_bloc.freezed.dart';

part 'parts/search_address.dart';

class GoogleMapBloc extends Bloc<GoogleMapEvent, GoogleMapState> {
  GoogleMapBloc({
    required this.api,
    required this.bloc,
  }) : super(const GoogleMapState.google()) {
    on<_SearchAddress>(_searchAddress);
  }

  final MapApi api;
  final LocationBloc bloc;
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
