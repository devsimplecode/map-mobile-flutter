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
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;
  double? get currentLat => throw _privateConstructorUsedError;
  double? get currentLng => throw _privateConstructorUsedError;
  bool get selectionObject => throw _privateConstructorUsedError;
  bool get changeMarkersOsm => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double lat, double lng, double? currentLat,
            double? currentLng, bool selectionObject, bool changeMarkersOsm)
        initAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double lat, double lng, double? currentLat,
            double? currentLng, bool selectionObject, bool changeMarkersOsm)?
        initAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double lat, double lng, double? currentLat,
            double? currentLng, bool selectionObject, bool changeMarkersOsm)?
        initAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitAddress value) initAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitAddress value)? initAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitAddress value)? initAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressEventCopyWith<AddressEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressEventCopyWith<$Res> {
  factory $AddressEventCopyWith(
          AddressEvent value, $Res Function(AddressEvent) then) =
      _$AddressEventCopyWithImpl<$Res, AddressEvent>;
  @useResult
  $Res call(
      {double lat,
      double lng,
      double? currentLat,
      double? currentLng,
      bool selectionObject,
      bool changeMarkersOsm});
}

/// @nodoc
class _$AddressEventCopyWithImpl<$Res, $Val extends AddressEvent>
    implements $AddressEventCopyWith<$Res> {
  _$AddressEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
    Object? currentLat = freezed,
    Object? currentLng = freezed,
    Object? selectionObject = null,
    Object? changeMarkersOsm = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      currentLat: freezed == currentLat
          ? _value.currentLat
          : currentLat // ignore: cast_nullable_to_non_nullable
              as double?,
      currentLng: freezed == currentLng
          ? _value.currentLng
          : currentLng // ignore: cast_nullable_to_non_nullable
              as double?,
      selectionObject: null == selectionObject
          ? _value.selectionObject
          : selectionObject // ignore: cast_nullable_to_non_nullable
              as bool,
      changeMarkersOsm: null == changeMarkersOsm
          ? _value.changeMarkersOsm
          : changeMarkersOsm // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitAddressCopyWith<$Res>
    implements $AddressEventCopyWith<$Res> {
  factory _$$_InitAddressCopyWith(
          _$_InitAddress value, $Res Function(_$_InitAddress) then) =
      __$$_InitAddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double lat,
      double lng,
      double? currentLat,
      double? currentLng,
      bool selectionObject,
      bool changeMarkersOsm});
}

/// @nodoc
class __$$_InitAddressCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$_InitAddress>
    implements _$$_InitAddressCopyWith<$Res> {
  __$$_InitAddressCopyWithImpl(
      _$_InitAddress _value, $Res Function(_$_InitAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
    Object? currentLat = freezed,
    Object? currentLng = freezed,
    Object? selectionObject = null,
    Object? changeMarkersOsm = null,
  }) {
    return _then(_$_InitAddress(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      currentLat: freezed == currentLat
          ? _value.currentLat
          : currentLat // ignore: cast_nullable_to_non_nullable
              as double?,
      currentLng: freezed == currentLng
          ? _value.currentLng
          : currentLng // ignore: cast_nullable_to_non_nullable
              as double?,
      selectionObject: null == selectionObject
          ? _value.selectionObject
          : selectionObject // ignore: cast_nullable_to_non_nullable
              as bool,
      changeMarkersOsm: null == changeMarkersOsm
          ? _value.changeMarkersOsm
          : changeMarkersOsm // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_InitAddress implements _InitAddress {
  const _$_InitAddress(
      {required this.lat,
      required this.lng,
      this.currentLat,
      this.currentLng,
      this.selectionObject = false,
      this.changeMarkersOsm = false});

  @override
  final double lat;
  @override
  final double lng;
  @override
  final double? currentLat;
  @override
  final double? currentLng;
  @override
  @JsonKey()
  final bool selectionObject;
  @override
  @JsonKey()
  final bool changeMarkersOsm;

  @override
  String toString() {
    return 'AddressEvent.initAddress(lat: $lat, lng: $lng, currentLat: $currentLat, currentLng: $currentLng, selectionObject: $selectionObject, changeMarkersOsm: $changeMarkersOsm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitAddress &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.currentLat, currentLat) ||
                other.currentLat == currentLat) &&
            (identical(other.currentLng, currentLng) ||
                other.currentLng == currentLng) &&
            (identical(other.selectionObject, selectionObject) ||
                other.selectionObject == selectionObject) &&
            (identical(other.changeMarkersOsm, changeMarkersOsm) ||
                other.changeMarkersOsm == changeMarkersOsm));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lat, lng, currentLat, currentLng,
      selectionObject, changeMarkersOsm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitAddressCopyWith<_$_InitAddress> get copyWith =>
      __$$_InitAddressCopyWithImpl<_$_InitAddress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double lat, double lng, double? currentLat,
            double? currentLng, bool selectionObject, bool changeMarkersOsm)
        initAddress,
  }) {
    return initAddress(
        lat, lng, currentLat, currentLng, selectionObject, changeMarkersOsm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double lat, double lng, double? currentLat,
            double? currentLng, bool selectionObject, bool changeMarkersOsm)?
        initAddress,
  }) {
    return initAddress?.call(
        lat, lng, currentLat, currentLng, selectionObject, changeMarkersOsm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double lat, double lng, double? currentLat,
            double? currentLng, bool selectionObject, bool changeMarkersOsm)?
        initAddress,
    required TResult orElse(),
  }) {
    if (initAddress != null) {
      return initAddress(
          lat, lng, currentLat, currentLng, selectionObject, changeMarkersOsm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitAddress value) initAddress,
  }) {
    return initAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitAddress value)? initAddress,
  }) {
    return initAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitAddress value)? initAddress,
    required TResult orElse(),
  }) {
    if (initAddress != null) {
      return initAddress(this);
    }
    return orElse();
  }
}

abstract class _InitAddress implements AddressEvent {
  const factory _InitAddress(
      {required final double lat,
      required final double lng,
      final double? currentLat,
      final double? currentLng,
      final bool selectionObject,
      final bool changeMarkersOsm}) = _$_InitAddress;

  @override
  double get lat;
  @override
  double get lng;
  @override
  double? get currentLat;
  @override
  double? get currentLng;
  @override
  bool get selectionObject;
  @override
  bool get changeMarkersOsm;
  @override
  @JsonKey(ignore: true)
  _$$_InitAddressCopyWith<_$_InitAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddressState {
  bool get loadingAddress => throw _privateConstructorUsedError;
  bool get setMarkersOsm => throw _privateConstructorUsedError;
  bool get changeMarkersOsm => throw _privateConstructorUsedError;
  LocationMap? get location => throw _privateConstructorUsedError;
  Set<Marker>? get markersGoogle => throw _privateConstructorUsedError;
  List<PlacemarkMapObject>? get markersYandex =>
      throw _privateConstructorUsedError;
  String? get currentAddress => throw _privateConstructorUsedError;
  String? get selectedAddress => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool loadingAddress,
            bool setMarkersOsm,
            bool changeMarkersOsm,
            LocationMap? location,
            Set<Marker>? markersGoogle,
            List<PlacemarkMapObject>? markersYandex,
            String? currentAddress,
            String? selectedAddress,
            String? error)
        address,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool loadingAddress,
            bool setMarkersOsm,
            bool changeMarkersOsm,
            LocationMap? location,
            Set<Marker>? markersGoogle,
            List<PlacemarkMapObject>? markersYandex,
            String? currentAddress,
            String? selectedAddress,
            String? error)?
        address,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool loadingAddress,
            bool setMarkersOsm,
            bool changeMarkersOsm,
            LocationMap? location,
            Set<Marker>? markersGoogle,
            List<PlacemarkMapObject>? markersYandex,
            String? currentAddress,
            String? selectedAddress,
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
      bool changeMarkersOsm,
      LocationMap? location,
      Set<Marker>? markersGoogle,
      List<PlacemarkMapObject>? markersYandex,
      String? currentAddress,
      String? selectedAddress,
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
    Object? changeMarkersOsm = null,
    Object? location = freezed,
    Object? markersGoogle = freezed,
    Object? markersYandex = freezed,
    Object? currentAddress = freezed,
    Object? selectedAddress = freezed,
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
      changeMarkersOsm: null == changeMarkersOsm
          ? _value.changeMarkersOsm
          : changeMarkersOsm // ignore: cast_nullable_to_non_nullable
              as bool,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationMap?,
      markersGoogle: freezed == markersGoogle
          ? _value.markersGoogle
          : markersGoogle // ignore: cast_nullable_to_non_nullable
              as Set<Marker>?,
      markersYandex: freezed == markersYandex
          ? _value.markersYandex
          : markersYandex // ignore: cast_nullable_to_non_nullable
              as List<PlacemarkMapObject>?,
      currentAddress: freezed == currentAddress
          ? _value.currentAddress
          : currentAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedAddress: freezed == selectedAddress
          ? _value.selectedAddress
          : selectedAddress // ignore: cast_nullable_to_non_nullable
              as String?,
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
      bool changeMarkersOsm,
      LocationMap? location,
      Set<Marker>? markersGoogle,
      List<PlacemarkMapObject>? markersYandex,
      String? currentAddress,
      String? selectedAddress,
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
    Object? changeMarkersOsm = null,
    Object? location = freezed,
    Object? markersGoogle = freezed,
    Object? markersYandex = freezed,
    Object? currentAddress = freezed,
    Object? selectedAddress = freezed,
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
      changeMarkersOsm: null == changeMarkersOsm
          ? _value.changeMarkersOsm
          : changeMarkersOsm // ignore: cast_nullable_to_non_nullable
              as bool,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationMap?,
      markersGoogle: freezed == markersGoogle
          ? _value._markersGoogle
          : markersGoogle // ignore: cast_nullable_to_non_nullable
              as Set<Marker>?,
      markersYandex: freezed == markersYandex
          ? _value._markersYandex
          : markersYandex // ignore: cast_nullable_to_non_nullable
              as List<PlacemarkMapObject>?,
      currentAddress: freezed == currentAddress
          ? _value.currentAddress
          : currentAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedAddress: freezed == selectedAddress
          ? _value.selectedAddress
          : selectedAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Address implements _Address {
  const _$_Address(
      {this.loadingAddress = false,
      this.setMarkersOsm = false,
      this.changeMarkersOsm = false,
      this.location,
      final Set<Marker>? markersGoogle,
      final List<PlacemarkMapObject>? markersYandex,
      this.currentAddress,
      this.selectedAddress,
      this.error})
      : _markersGoogle = markersGoogle,
        _markersYandex = markersYandex;

  @override
  @JsonKey()
  final bool loadingAddress;
  @override
  @JsonKey()
  final bool setMarkersOsm;
  @override
  @JsonKey()
  final bool changeMarkersOsm;
  @override
  final LocationMap? location;
  final Set<Marker>? _markersGoogle;
  @override
  Set<Marker>? get markersGoogle {
    final value = _markersGoogle;
    if (value == null) return null;
    if (_markersGoogle is EqualUnmodifiableSetView) return _markersGoogle;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(value);
  }

  final List<PlacemarkMapObject>? _markersYandex;
  @override
  List<PlacemarkMapObject>? get markersYandex {
    final value = _markersYandex;
    if (value == null) return null;
    if (_markersYandex is EqualUnmodifiableListView) return _markersYandex;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? currentAddress;
  @override
  final String? selectedAddress;
  @override
  final String? error;

  @override
  String toString() {
    return 'AddressState.address(loadingAddress: $loadingAddress, setMarkersOsm: $setMarkersOsm, changeMarkersOsm: $changeMarkersOsm, location: $location, markersGoogle: $markersGoogle, markersYandex: $markersYandex, currentAddress: $currentAddress, selectedAddress: $selectedAddress, error: $error)';
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
            (identical(other.changeMarkersOsm, changeMarkersOsm) ||
                other.changeMarkersOsm == changeMarkersOsm) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality()
                .equals(other._markersGoogle, _markersGoogle) &&
            const DeepCollectionEquality()
                .equals(other._markersYandex, _markersYandex) &&
            (identical(other.currentAddress, currentAddress) ||
                other.currentAddress == currentAddress) &&
            (identical(other.selectedAddress, selectedAddress) ||
                other.selectedAddress == selectedAddress) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loadingAddress,
      setMarkersOsm,
      changeMarkersOsm,
      location,
      const DeepCollectionEquality().hash(_markersGoogle),
      const DeepCollectionEquality().hash(_markersYandex),
      currentAddress,
      selectedAddress,
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
            bool changeMarkersOsm,
            LocationMap? location,
            Set<Marker>? markersGoogle,
            List<PlacemarkMapObject>? markersYandex,
            String? currentAddress,
            String? selectedAddress,
            String? error)
        address,
  }) {
    return address(loadingAddress, setMarkersOsm, changeMarkersOsm, location,
        markersGoogle, markersYandex, currentAddress, selectedAddress, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool loadingAddress,
            bool setMarkersOsm,
            bool changeMarkersOsm,
            LocationMap? location,
            Set<Marker>? markersGoogle,
            List<PlacemarkMapObject>? markersYandex,
            String? currentAddress,
            String? selectedAddress,
            String? error)?
        address,
  }) {
    return address?.call(
        loadingAddress,
        setMarkersOsm,
        changeMarkersOsm,
        location,
        markersGoogle,
        markersYandex,
        currentAddress,
        selectedAddress,
        error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool loadingAddress,
            bool setMarkersOsm,
            bool changeMarkersOsm,
            LocationMap? location,
            Set<Marker>? markersGoogle,
            List<PlacemarkMapObject>? markersYandex,
            String? currentAddress,
            String? selectedAddress,
            String? error)?
        address,
    required TResult orElse(),
  }) {
    if (address != null) {
      return address(loadingAddress, setMarkersOsm, changeMarkersOsm, location,
          markersGoogle, markersYandex, currentAddress, selectedAddress, error);
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

abstract class _Address implements AddressState {
  const factory _Address(
      {final bool loadingAddress,
      final bool setMarkersOsm,
      final bool changeMarkersOsm,
      final LocationMap? location,
      final Set<Marker>? markersGoogle,
      final List<PlacemarkMapObject>? markersYandex,
      final String? currentAddress,
      final String? selectedAddress,
      final String? error}) = _$_Address;

  @override
  bool get loadingAddress;
  @override
  bool get setMarkersOsm;
  @override
  bool get changeMarkersOsm;
  @override
  LocationMap? get location;
  @override
  Set<Marker>? get markersGoogle;
  @override
  List<PlacemarkMapObject>? get markersYandex;
  @override
  String? get currentAddress;
  @override
  String? get selectedAddress;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_AddressCopyWith<_$_Address> get copyWith =>
      throw _privateConstructorUsedError;
}
