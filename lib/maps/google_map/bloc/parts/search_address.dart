part of '../google_map_bloc.dart';

extension SearchAddress on GoogleMapBloc {
  Future<void> _searchAddress(
    _SearchAddress event,
    Emitter<GoogleMapState> emit,
  ) async {
    if (event.search.isEmpty) {
      emit(state.copyWith(places: []));
      return;
    }
    emit(state.copyWith(loadingAddress: true));

    List<PlaceSearch> takePlaces = [];
    final responsePlaces = await api.getAddressesGoogle(
      event.search,
      '${bloc.state.maybeCurrentLat()},${bloc.state.maybeCurrentLng()}',
    );

    if (responsePlaces.error != null) {
      emit(state.copyWith(
        error: S.current.dataNoLoaded,
        loadingAddress: false,
      ));
      return;
    }
    for (PlaceSearch item in responsePlaces.data ?? []) {
      if (item.placeId != null) {
        final responsePlace = await api.getPlaceGoogle(item.placeId!);

        if (responsePlace.error != null) {
          emit(state.copyWith(
            error: S.current.dataNoLoaded,
            loadingAddress: false,
          ));
          return;
        }
        takePlaces.add(PlaceSearch(
          placeId: item.placeId,
          address: item.address,
          place: responsePlace.data,
        ));
      }
    }
    emit(state.copyWith(
      places: takePlaces,
      loadingAddress: false,
      error: '',
    ));
  }
}
