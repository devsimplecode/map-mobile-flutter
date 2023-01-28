import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:map_flutter/constants/constants.dart';
import 'package:map_flutter/constants/environment.dart';
import 'package:map_flutter/main_bloc/location_bloc/location_bloc.dart';
import 'package:map_flutter/models/location.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';
import 'package:map_flutter/main_bloc/address_bloc/parts/google_markers.dart';
import 'package:map_flutter/main_bloc/address_bloc/parts/yandex_markers.dart';
import 'package:map_flutter/main_bloc/address_bloc/parts/yandex_polyline.dart';
import 'package:map_flutter/main_bloc/address_bloc/parts/google_polyline.dart';
import 'package:geolocator/geolocator.dart';
import 'package:map_flutter/l10n/generated/l10n.dart';

part 'events/init_address.dart';

part 'events/set_polyline.dart';

part 'utils/utils.dart';

part 'address_bloc.freezed.dart';

class AddressBloc extends Bloc<AddressEvent, AddressState> {
  AddressBloc({
    required this.bloc,
  }) : super(const AddressState.address()) {
    on<InitAddress>(_initAddress);
    on<SetPolyline>(_setPolyline);
  }

  final LocationBloc bloc;
  PolylinePoints polylinePoints = PolylinePoints();
}

@freezed
class AddressEvent with _$AddressEvent {
  const factory AddressEvent.initAddress({
    required double lat,
    required double lng,
    @Default(false) bool selectionObject,
  }) = InitAddress;

  const factory AddressEvent.setPolyline({
    @Default(false) bool clearAllPolyline,
  }) = SetPolyline;
}

@freezed
class AddressState with _$AddressState {
  const AddressState._();

  const factory AddressState.address({
    @Default(false) bool loadingAddress,
    @Default(false) bool setMarkersOsm,
    @Default(false) bool setPolylineOsm,
    List<PlacemarkMapObject>? markersYandex,
    List<MapObject>? polylineYandex,
    Set<dynamic>? polylineGoogle,
    Set<Marker>? markersGoogle,
    LocationMap? location,
    String? currentAddress,
    String? selectedAddress,
    double? distanceInMeters,
    double? bearing,
    String? error,
  }) = _Address;

  bool get emptyAddress => map(
      address: (state) =>
          (state.selectedAddress?.isEmpty ?? true) && (state.currentAddress?.isEmpty ?? true));

  String get distance => map(
        address: (state) => (state.distanceInMeters ?? 0) > 1000
            ? '${state.bearing?.toInt() ?? 0} KM'
            : '${state.distanceInMeters?.toInt() ?? 0} M',
      );

  bool get selectedAddressIsEmpty => map(
        address: (state) => state.selectedAddress?.isEmpty ?? true,
      );

  bool get currentAddressIsEmpty => map(
        address: (state) => state.currentAddress?.isEmpty ?? true,
      );

  bool get errorIsEmpty => map(
        address: (state) => state.error?.isEmpty ?? true,
      );
}
