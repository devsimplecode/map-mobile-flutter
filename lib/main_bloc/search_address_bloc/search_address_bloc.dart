import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:map_flutter/main_bloc/location_bloc/location_bloc.dart';
import 'package:map_flutter/models/place_search.dart';
import 'package:map_flutter/repo/map_api.dart';
import 'package:map_flutter/l10n/generated/l10n.dart';

part 'search_address_bloc.freezed.dart';

part 'parts/search_address.dart';

class SearchAddressBloc extends Bloc<SearchAddressEvent, SearchAddressState> {
  SearchAddressBloc({
    required this.api,
    required this.bloc,
  }) : super(const SearchAddressState.address()) {
    on<_SearchAddress>(_searchAddress);
  }

  final MapApi api;
  final LocationBloc bloc;
}

@freezed
class SearchAddressEvent with _$SearchAddressEvent {
  const factory SearchAddressEvent.searchAddress({
    required String search,
  }) = _SearchAddress;
}

@freezed
class SearchAddressState with _$SearchAddressState {
  const factory SearchAddressState.address({
    @Default(false) bool loadingAddress,
    List<PlaceSearch>? places,
    String? error,
  }) = _Google;
}
