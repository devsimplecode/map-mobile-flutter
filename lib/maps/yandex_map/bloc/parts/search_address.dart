part of '../yandex_map_bloc.dart';

extension SearchAddress on YandexMapBloc {
  Future<void> _searchAddress(
    _SearchAddress event,
    Emitter<YandexMapState> emit,
  ) async {
    if (event.search.isEmpty) {
      emit(state.copyWith(places: []));
      return;
    }
    emit(state.copyWith(loadingAddress: true));
    final responsePlaces = await api.getAddressesYandex(
      event.search,
    );
    if (responsePlaces.error != null) {
      emit(state.copyWith(
        error: S.current.dataNoLoaded,
        loadingAddress: false,
      ));
      return;
    }
    emit(state.copyWith(
      places: responsePlaces.data,
      loadingAddress: false,
      error: '',
    ));
  }
}
