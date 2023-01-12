import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:map_flutter/models/geometry.dart';
import 'package:map_flutter/models/location.dart';
import 'package:map_flutter/models/place.dart';

part 'osm_map_bloc.freezed.dart';

part 'parts/search_address.dart';

class OsmMapBloc extends Bloc<OsmMapEvent, OsmMapState> {
  OsmMapBloc() : super(const OsmMapState.osm()) {
    on<_SearchAddress>(_searchAddress);
  }
}

@freezed
class OsmMapEvent with _$OsmMapEvent {
  const factory OsmMapEvent.searchAddress({
    required String search,
  }) = _SearchAddress;
}

@freezed
class OsmMapState with _$OsmMapState {
  const factory OsmMapState.osm({
    @Default(false) bool loadingAddress,
    List<Place>? places,
    String? error,
  }) = _Osm;
}
