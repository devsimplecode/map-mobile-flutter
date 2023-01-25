import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:map_flutter/constants/constants.dart';
import 'package:map_flutter/main_bloc/location_bloc/location_bloc.dart';
import 'package:map_flutter/models/location.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';
import 'package:map_flutter/main_bloc/address_bloc/parts/google_markers.dart';
import 'package:map_flutter/main_bloc/address_bloc/parts/yandex_markers.dart';
import 'package:geolocator/geolocator.dart';
import 'package:map_flutter/l10n/generated/l10n.dart';

part 'init_address.dart';

part 'address_bloc.freezed.dart';

class AddressBloc extends Bloc<AddressEvent, AddressState> {
  AddressBloc({
    required this.bloc,
  }) : super(const AddressState.address()) {
    on<InitAddress>(_initAddress);
  }

  final LocationBloc bloc;
}

@freezed
class AddressEvent with _$AddressEvent {
  const factory AddressEvent.initAddress({
    required double lat,
    required double lng,
    @Default(false) bool selectionObject,
  }) = InitAddress;
}

@freezed
class AddressState with _$AddressState {
  const factory AddressState.address({
    @Default(false) bool loadingAddress,
    @Default(false) bool setMarkersOsm,
    LocationMap? location,
    Set<Marker>? markersGoogle,
    List<PlacemarkMapObject>? markersYandex,
    String? currentAddress,
    String? selectedAddress,
    double? distanceInMeters,
    double? bearing,
    String? error,
  }) = _Address;
}
