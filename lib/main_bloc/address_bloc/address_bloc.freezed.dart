// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddressEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double lat, double lng, bool selectionObject)
        initAddress,
    required TResult Function() setPolyline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double lat, double lng, bool selectionObject)?
        initAddress,
    TResult? Function()? setPolyline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double lat, double lng, bool selectionObject)? initAddress,
    TResult Function()? setPolyline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAddress value) initAddress,
    required TResult Function(SetPolyline value) setPolyline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAddress value)? initAddress,
    TResult? Function(SetPolyline value)? setPolyline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAddress value)? initAddress,
    TResult Function(SetPolyline value)? setPolyline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressEventCopyWith<$Res> {
  factory $AddressEventCopyWith(
          AddressEvent value, $Res Function(AddressEvent) then) =
      _$AddressEventCopyWithImpl<$Res, AddressEvent>;
}

/// @nodoc
class _$AddressEventCopyWithImpl<$Res, $Val extends AddressEvent>
    implements $AddressEventCopyWith<$Res> {
  _$AddressEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitAddressCopyWith<$Res> {
  factory _$$InitAddressCopyWith(
          _$InitAddress value, $Res Function(_$InitAddress) then) =
      __$$InitAddressCopyWithImpl<$Res>;
  @useResult
  $Res call({double lat, double lng, bool selectionObject});
}

/// @nodoc
class __$$InitAddressCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$InitAddress>
    implements _$$InitAddressCopyWith<$Res> {
  __$$InitAddressCopyWithImpl(
      _$InitAddress _value, $Res Function(_$InitAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
    Object? selectionObject = null,
  }) {
    return _then(_$InitAddress(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      selectionObject: null == selectionObject
          ? _value.selectionObject
          : selectionObject // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitAddress implements InitAddress {
  const _$InitAddress(
      {required this.lat, required this.lng, this.selectionObject = false});

  @override
  final double lat;
  @override
  final double lng;
  @override
  @JsonKey()
  final bool selectionObject;

  @override
  String toString() {
    return 'AddressEvent.initAddress(lat: $lat, lng: $lng, selectionObject: $selectionObject)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitAddress &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.selectionObject, selectionObject) ||
                other.selectionObject == selectionObject));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lat, lng, selectionObject);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitAddressCopyWith<_$InitAddress> get copyWith =>
      __$$InitAddressCopyWithImpl<_$InitAddress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double lat, double lng, bool selectionObject)
        initAddress,
    required TResult Function() setPolyline,
  }) {
    return initAddress(lat, lng, selectionObject);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double lat, double lng, bool selectionObject)?
        initAddress,
    TResult? Function()? setPolyline,
  }) {
    return initAddress?.call(lat, lng, selectionObject);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double lat, double lng, bool selectionObject)? initAddress,
    TResult Function()? setPolyline,
    required TResult orElse(),
  }) {
    if (initAddress != null) {
      return initAddress(lat, lng, selectionObject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAddress value) initAddress,
    required TResult Function(SetPolyline value) setPolyline,
  }) {
    return initAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAddress value)? initAddress,
    TResult? Function(SetPolyline value)? setPolyline,
  }) {
    return initAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAddress value)? initAddress,
    TResult Function(SetPolyline value)? setPolyline,
    required TResult orElse(),
  }) {
    if (initAddress != null) {
      return initAddress(this);
    }
    return orElse();
  }
}

abstract class InitAddress implements AddressEvent {
  const factory InitAddress(
      {required final double lat,
      required final double lng,
      final bool selectionObject}) = _$InitAddress;

  double get lat;
  double get lng;
  bool get selectionObject;
  @JsonKey(ignore: true)
  _$$InitAddressCopyWith<_$InitAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetPolylineCopyWith<$Res> {
  factory _$$SetPolylineCopyWith(
          _$SetPolyline value, $Res Function(_$SetPolyline) then) =
      __$$SetPolylineCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SetPolylineCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$SetPolyline>
    implements _$$SetPolylineCopyWith<$Res> {
  __$$SetPolylineCopyWithImpl(
      _$SetPolyline _value, $Res Function(_$SetPolyline) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SetPolyline implements SetPolyline {
  const _$SetPolyline();

  @override
  String toString() {
    return 'AddressEvent.setPolyline()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SetPolyline);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double lat, double lng, bool selectionObject)
        initAddress,
    required TResult Function() setPolyline,
  }) {
    return setPolyline();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double lat, double lng, bool selectionObject)?
        initAddress,
    TResult? Function()? setPolyline,
  }) {
    return setPolyline?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double lat, double lng, bool selectionObject)? initAddress,
    TResult Function()? setPolyline,
    required TResult orElse(),
  }) {
    if (setPolyline != null) {
      return setPolyline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAddress value) initAddress,
    required TResult Function(SetPolyline value) setPolyline,
  }) {
    return setPolyline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAddress value)? initAddress,
    TResult? Function(SetPolyline value)? setPolyline,
  }) {
    return setPolyline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAddress value)? initAddress,
    TResult Function(SetPolyline value)? setPolyline,
    required TResult orElse(),
  }) {
    if (setPolyline != null) {
      return setPolyline(this);
    }
    return orElse();
  }
}

abstract class SetPolyline implements AddressEvent {
  const factory SetPolyline() = _$SetPolyline;
}

/// @nodoc
mixin _$AddressState {
  bool get loadingAddress => throw _privateConstructorUsedError;
  bool get setMarkersOsm => throw _privateConstructorUsedError;
  List<PlacemarkMapObject>? get markersYandex =>
      throw _privateConstructorUsedError;
  List<MapObject>? get mapObjectsYandex => throw _privateConstructorUsedError;
  Set<Marker>? get markersGoogle => throw _privateConstructorUsedError;
  LocationMap? get location => throw _privateConstructorUsedError;
  String? get currentAddress => throw _privateConstructorUsedError;
  String? get selectedAddress => throw _privateConstructorUsedError;
  double? get distanceInMeters => throw _privateConstructorUsedError;
  double? get bearing => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool loadingAddress,
            bool setMarkersOsm,
            List<PlacemarkMapObject>? markersYandex,
            List<MapObject>? mapObjectsYandex,
            Set<Marker>? markersGoogle,
            LocationMap? location,
            String? currentAddress,
            String? selectedAddress,
            double? distanceInMeters,
            double? bearing,
            String? error)
        address,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool loadingAddress,
            bool setMarkersOsm,
            List<PlacemarkMapObject>? markersYandex,
            List<MapObject>? mapObjectsYandex,
            Set<Marker>? markersGoogle,
            LocationMap? location,
            String? currentAddress,
            String? selectedAddress,
            double? distanceInMeters,
            double? bearing,
            String? error)?
        address,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool loadingAddress,
            bool setMarkersOsm,
            List<PlacemarkMapObject>? markersYandex,
            List<MapObject>? mapObjectsYandex,
            Set<Marker>? markersGoogle,
            LocationMap? location,
            String? currentAddress,
            String? selectedAddress,
            double? distanceInMeters,
            double? bearing,
            String? error)?
        address,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Address value) address,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Address value)? address,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Address value)? address,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressStateCopyWith<AddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressStateCopyWith<$Res> {
  factory $AddressStateCopyWith(
          AddressState value, $Res Function(AddressState) then) =
      _$AddressStateCopyWithImpl<$Res, AddressState>;
  @useResult
  $Res call(
      {bool loadingAddress,
      bool setMarkersOsm,
      List<PlacemarkMapObject>? markersYandex,
      List<MapObject>? mapObjectsYandex,
      Set<Marker>? markersGoogle,
      LocationMap? location,
      String? currentAddress,
      String? selectedAddress,
      double? distanceInMeters,
      double? bearing,
      String? error});
}

/// @nodoc
class _$AddressStateCopyWithImpl<$Res, $Val extends AddressState>
    implements $AddressStateCopyWith<$Res> {
  _$AddressStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingAddress = null,
    Object? setMarkersOsm = null,
    Object? markersYandex = freezed,
    Object? mapObjectsYandex = freezed,
    Object? markersGoogle = freezed,
    Object? location = freezed,
    Object? currentAddress = freezed,
    Object? selectedAddress = freezed,
    Object? distanceInMeters = freezed,
    Object? bearing = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      loadingAddress: null == loadingAddress
          ? _value.loadingAddress
          : loadingAddress // ignore: cast_nullable_to_non_nullable
              as bool,
      setMarkersOsm: null == setMarkersOsm
          ? _value.setMarkersOsm
          : setMarkersOsm // ignore: cast_nullable_to_non_nullable
              as bool,
      markersYandex: freezed == markersYandex
          ? _value.markersYandex
          : markersYandex // ignore: cast_nullable_to_non_nullable
              as List<PlacemarkMapObject>?,
      mapObjectsYandex: freezed == mapObjectsYandex
          ? _value.mapObjectsYandex
          : mapObjectsYandex // ignore: cast_nullable_to_non_nullable
              as List<MapObject>?,
      markersGoogle: freezed == markersGoogle
          ? _value.markersGoogle
          : markersGoogle // ignore: cast_nullable_to_non_nullable
              as Set<Marker>?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationMap?,
      currentAddress: freezed == currentAddress
          ? _value.currentAddress
          : currentAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedAddress: freezed == selectedAddress
          ? _value.selectedAddress
          : selectedAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      distanceInMeters: freezed == distanceInMeters
          ? _value.distanceInMeters
          : distanceInMeters // ignore: cast_nullable_to_non_nullable
              as double?,
      bearing: freezed == bearing
          ? _value.bearing
          : bearing // ignore: cast_nullable_to_non_nullable
              as double?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressCopyWith<$Res>
    implements $AddressStateCopyWith<$Res> {
  factory _$$_AddressCopyWith(
          _$_Address value, $Res Function(_$_Address) then) =
      __$$_AddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loadingAddress,
      bool setMarkersOsm,
      List<PlacemarkMapObject>? markersYandex,
      List<MapObject>? mapObjectsYandex,
      Set<Marker>? markersGoogle,
      LocationMap? location,
      String? currentAddress,
      String? selectedAddress,
      double? distanceInMeters,
      double? bearing,
      String? error});
}

/// @nodoc
class __$$_AddressCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res, _$_Address>
    implements _$$_AddressCopyWith<$Res> {
  __$$_AddressCopyWithImpl(_$_Address _value, $Res Function(_$_Address) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingAddress = null,
    Object? setMarkersOsm = null,
    Object? markersYandex = freezed,
    Object? mapObjectsYandex = freezed,
    Object? markersGoogle = freezed,
    Object? location = freezed,
    Object? currentAddress = freezed,
    Object? selectedAddress = freezed,
    Object? distanceInMeters = freezed,
    Object? bearing = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_Address(
      loadingAddress: null == loadingAddress
          ? _value.loadingAddress
          : loadingAddress // ignore: cast_nullable_to_non_nullable
              as bool,
      setMarkersOsm: null == setMarkersOsm
          ? _value.setMarkersOsm
          : setMarkersOsm // ignore: cast_nullable_to_non_nullable
              as bool,
      markersYandex: freezed == markersYandex
          ? _value._markersYandex
          : markersYandex // ignore: cast_nullable_to_non_nullable
              as List<PlacemarkMapObject>?,
      mapObjectsYandex: freezed == mapObjectsYandex
          ? _value._mapObjectsYandex
          : mapObjectsYandex // ignore: cast_nullable_to_non_nullable
              as List<MapObject>?,
      markersGoogle: freezed == markersGoogle
          ? _value._markersGoogle
          : markersGoogle // ignore: cast_nullable_to_non_nullable
              as Set<Marker>?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationMap?,
      currentAddress: freezed == currentAddress
          ? _value.currentAddress
          : currentAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedAddress: freezed == selectedAddress
          ? _value.selectedAddress
          : selectedAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      distanceInMeters: freezed == distanceInMeters
          ? _value.distanceInMeters
          : distanceInMeters // ignore: cast_nullable_to_non_nullable
              as double?,
      bearing: freezed == bearing
          ? _value.bearing
          : bearing // ignore: cast_nullable_to_non_nullable
              as double?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Address extends _Address {
  const _$_Address(
      {this.loadingAddress = false,
      this.setMarkersOsm = false,
      final List<PlacemarkMapObject>? markersYandex,
      final List<MapObject>? mapObjectsYandex,
      final Set<Marker>? markersGoogle,
      this.location,
      this.currentAddress,
      this.selectedAddress,
      this.distanceInMeters,
      this.bearing,
      this.error})
      : _markersYandex = markersYandex,
        _mapObjectsYandex = mapObjectsYandex,
        _markersGoogle = markersGoogle,
        super._();

  @override
  @JsonKey()
  final bool loadingAddress;
  @override
  @JsonKey()
  final bool setMarkersOsm;
  final List<PlacemarkMapObject>? _markersYandex;
  @override
  List<PlacemarkMapObject>? get markersYandex {
    final value = _markersYandex;
    if (value == null) return null;
    if (_markersYandex is EqualUnmodifiableListView) return _markersYandex;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MapObject>? _mapObjectsYandex;
  @override
  List<MapObject>? get mapObjectsYandex {
    final value = _mapObjectsYandex;
    if (value == null) return null;
    if (_mapObjectsYandex is EqualUnmodifiableListView)
      return _mapObjectsYandex;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Set<Marker>? _markersGoogle;
  @override
  Set<Marker>? get markersGoogle {
    final value = _markersGoogle;
    if (value == null) return null;
    if (_markersGoogle is EqualUnmodifiableSetView) return _markersGoogle;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(value);
  }

  @override
  final LocationMap? location;
  @override
  final String? currentAddress;
  @override
  final String? selectedAddress;
  @override
  final double? distanceInMeters;
  @override
  final double? bearing;
  @override
  final String? error;

  @override
  String toString() {
    return 'AddressState.address(loadingAddress: $loadingAddress, setMarkersOsm: $setMarkersOsm, markersYandex: $markersYandex, mapObjectsYandex: $mapObjectsYandex, markersGoogle: $markersGoogle, location: $location, currentAddress: $currentAddress, selectedAddress: $selectedAddress, distanceInMeters: $distanceInMeters, bearing: $bearing, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Address &&
            (identical(other.loadingAddress, loadingAddress) ||
                other.loadingAddress == loadingAddress) &&
            (identical(other.setMarkersOsm, setMarkersOsm) ||
                other.setMarkersOsm == setMarkersOsm) &&
            const DeepCollectionEquality()
                .equals(other._markersYandex, _markersYandex) &&
            const DeepCollectionEquality()
                .equals(other._mapObjectsYandex, _mapObjectsYandex) &&
            const DeepCollectionEquality()
                .equals(other._markersGoogle, _markersGoogle) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.currentAddress, currentAddress) ||
                other.currentAddress == currentAddress) &&
            (identical(other.selectedAddress, selectedAddress) ||
                other.selectedAddress == selectedAddress) &&
            (identical(other.distanceInMeters, distanceInMeters) ||
                other.distanceInMeters == distanceInMeters) &&
            (identical(other.bearing, bearing) || other.bearing == bearing) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loadingAddress,
      setMarkersOsm,
      const DeepCollectionEquality().hash(_markersYandex),
      const DeepCollectionEquality().hash(_mapObjectsYandex),
      const DeepCollectionEquality().hash(_markersGoogle),
      location,
      currentAddress,
      selectedAddress,
      distanceInMeters,
      bearing,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressCopyWith<_$_Address> get copyWith =>
      __$$_AddressCopyWithImpl<_$_Address>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool loadingAddress,
            bool setMarkersOsm,
            List<PlacemarkMapObject>? markersYandex,
            List<MapObject>? mapObjectsYandex,
            Set<Marker>? markersGoogle,
            LocationMap? location,
            String? currentAddress,
            String? selectedAddress,
            double? distanceInMeters,
            double? bearing,
            String? error)
        address,
  }) {
    return address(
        loadingAddress,
        setMarkersOsm,
        markersYandex,
        mapObjectsYandex,
        markersGoogle,
        location,
        currentAddress,
        selectedAddress,
        distanceInMeters,
        bearing,
        error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool loadingAddress,
            bool setMarkersOsm,
            List<PlacemarkMapObject>? markersYandex,
            List<MapObject>? mapObjectsYandex,
            Set<Marker>? markersGoogle,
            LocationMap? location,
            String? currentAddress,
            String? selectedAddress,
            double? distanceInMeters,
            double? bearing,
            String? error)?
        address,
  }) {
    return address?.call(
        loadingAddress,
        setMarkersOsm,
        markersYandex,
        mapObjectsYandex,
        markersGoogle,
        location,
        currentAddress,
        selectedAddress,
        distanceInMeters,
        bearing,
        error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool loadingAddress,
            bool setMarkersOsm,
            List<PlacemarkMapObject>? markersYandex,
            List<MapObject>? mapObjectsYandex,
            Set<Marker>? markersGoogle,
            LocationMap? location,
            String? currentAddress,
            String? selectedAddress,
            double? distanceInMeters,
            double? bearing,
            String? error)?
        address,
    required TResult orElse(),
  }) {
    if (address != null) {
      return address(
          loadingAddress,
          setMarkersOsm,
          markersYandex,
          mapObjectsYandex,
          markersGoogle,
          location,
          currentAddress,
          selectedAddress,
          distanceInMeters,
          bearing,
          error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Address value) address,
  }) {
    return address(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Address value)? address,
  }) {
    return address?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Address value)? address,
    required TResult orElse(),
  }) {
    if (address != null) {
      return address(this);
    }
    return orElse();
  }
}

abstract class _Address extends AddressState {
  const factory _Address(
      {final bool loadingAddress,
      final bool setMarkersOsm,
      final List<PlacemarkMapObject>? markersYandex,
      final List<MapObject>? mapObjectsYandex,
      final Set<Marker>? markersGoogle,
      final LocationMap? location,
      final String? currentAddress,
      final String? selectedAddress,
      final double? distanceInMeters,
      final double? bearing,
      final String? error}) = _$_Address;
  const _Address._() : super._();

  @override
  bool get loadingAddress;
  @override
  bool get setMarkersOsm;
  @override
  List<PlacemarkMapObject>? get markersYandex;
  @override
  List<MapObject>? get mapObjectsYandex;
  @override
  Set<Marker>? get markersGoogle;
  @override
  LocationMap? get location;
  @override
  String? get currentAddress;
  @override
  String? get selectedAddress;
  @override
  double? get distanceInMeters;
  @override
  double? get bearing;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_AddressCopyWith<_$_Address> get copyWith =>
      throw _privateConstructorUsedError;
}
