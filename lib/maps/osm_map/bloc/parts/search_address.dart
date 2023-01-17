part of '../osm_map_bloc.dart';

extension SearchAddress on OsmMapBloc {
  Future<void> _searchAddress(
    _SearchAddress event,
    Emitter<OsmMapState> emit,
  ) async {
    if (event.search.isEmpty) {
      emit(state.copyWith(
        places: [],
        loadingAddress: false,
      ));
      return;
    }
    emit(state.copyWith(loadingAddress: true));
    try {
      List<Place> takePlaces = [];
      final addresses = await addressSuggestion(event.search);
      for (var item in addresses) {
        takePlaces.add(
          Place(
            geometry: Geometry(
              locationOsm: LocationMap(
                lat: item.point?.latitude,
                lng: item.point?.longitude,
              ),
            ),
            address:
                '${item.address?.street ?? ''} ${item.address?.state ?? ''} ${item.address?.city ?? ''} ${item.address?.country ?? ''}',
            name: '${item.address?.name}',
          ),
        );
      }
      emit(state.copyWith(
        places: takePlaces,
        loadingAddress: false,
        error: '',
      ));
    } catch (error) {
      emit(state.copyWith(
        error: 'Что-то пошло не так ;)',
        loadingAddress: false,
      ));
    }
  }
}
