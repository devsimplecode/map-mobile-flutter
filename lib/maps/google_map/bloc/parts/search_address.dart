part of '../google_map_bloc.dart';

extension SearchAddress on GoogleMapBloc {
  Future<void> _searchAddress(
    _SearchAddress event,
    Emitter<GoogleMapState> emit,
  ) async {
    if (event.search.isEmpty) {
      emit(state.copyWith(
        searchingPlaces: [],
        places: [],
      ));
      return;
    }
    if (event.search.length > 3 && (state.places?.isEmpty ?? true)) {
      emit(state.copyWith(loadingAddresses: true));
      List<PlaceSearch> takePlaces = [];
      final responsePlaces = await api.getAutoComplete(event.search);
      if (responsePlaces.error != null) {
        emit(state.copyWith(error: responsePlaces.error?.message));
      }
      for (PlaceSearch item in responsePlaces.data ?? []) {
        if (item.placeId != null) {
          final responsePlace = await api.getPlace(item.placeId!);
          if (responsePlace.error != null) {
            emit(state.copyWith(error: responsePlace.error?.message));
          }
          takePlaces.add(PlaceSearch(
            placeId: item.placeId,
            description: item.description,
            place: responsePlace.data,
          ));
        }
      }
      emit(state.copyWith(
        places: takePlaces,
        searchingPlaces: takePlaces,
        loadingAddresses: false,
      ));
    } else {
      var places = state.places;
      var sortedPlaces = places?.where((element) {
        return element.description?.toLowerCase().contains(event.search.toLowerCase()) ?? false;
      }).toList();
      emit(state.copyWith(searchingPlaces: sortedPlaces));
    }
  }
}
