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
    final responsePlaces = await api.getAddressesYandex(event.search);
    if (responsePlaces.error != null) {
      emit(state.copyWith(error: responsePlaces.error?.message));
    }
    emit(state.copyWith(places: responsePlaces.data));
  }
}
