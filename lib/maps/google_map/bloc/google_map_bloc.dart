import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:map_flutter/constants/assets.dart';
import 'package:map_flutter/models/location.dart';
import 'package:map_flutter/models/place_search.dart';
import 'package:map_flutter/repo/map_api.dart';

part 'google_map_bloc.freezed.dart';

part 'parts/init_address.dart';

part 'parts/search_address.dart';

class GoogleMapBloc extends Bloc<GoogleMapEvent, GoogleMapState> {
  GoogleMapBloc({required this.api}) : super(const GoogleMapState.google()) {
    on<_InitAddress>(_initAddress);
    on<_SearchAddress>(_searchAddress);
  }

  final MapApi api;
}

@freezed
class GoogleMapEvent with _$GoogleMapEvent {
  const factory GoogleMapEvent.initAddress({
    required double lat,
    required double long,
    double? currentLat,
    double? currentLong,
    @Default(false) bool selectionObject,
  }) = _InitAddress;

  const factory GoogleMapEvent.searchAddress({
    required String search,
  }) = _SearchAddress;
}

@freezed
class GoogleMapState with _$GoogleMapState {
  const factory GoogleMapState.google({
    @Default(false) bool loadingAddresses,
    @Default(false) bool loadingAddress,
    List<PlaceSearch>? places,
    List<PlaceSearch>? searchingPlaces,
    LocationMap? location,
    List<Marker>? markers,
    String? currentAddress,
    String? selectedAddress,
    String? error,
  }) = _Google;
}
