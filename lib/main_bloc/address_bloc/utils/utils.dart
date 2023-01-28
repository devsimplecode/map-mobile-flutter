part of '../address_bloc.dart';

extension Utils on AddressBloc {
  String adr(Placemark value) {
    return '${street(value.street)}${value.administrativeArea}, ${value.subAdministrativeArea}, ${value.country}';
  }

  String street(String? value) {
    if (value?.contains("+") ?? true) {
      return Constants.empty;
    }
    return '$value, ';
  }

  bool notNull(dynamic value) {
    if (value != null) {
      return true;
    }
    return false;
  }

  bool get isNotEmptyLatLng =>
      notNull(bloc.state.maybeCurrentLat()) &&
      notNull(bloc.state.maybeCurrentLng()) &&
      notNull(state.location) &&
      notNull(state.location?.lat) &&
      notNull(state.location?.lng);
}
