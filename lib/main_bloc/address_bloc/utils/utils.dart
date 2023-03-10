part of '../address_bloc.dart';

extension Utils on AddressBloc {
  double? get currentLng => bloc.state.maybeCurrentLng();

  double? get currentLat => bloc.state.maybeCurrentLat();

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
      notNull(currentLng) &&
      notNull(currentLat) &&
      notNull(state.location) &&
      notNull(state.location?.lat) &&
      notNull(state.location?.lng);
}
