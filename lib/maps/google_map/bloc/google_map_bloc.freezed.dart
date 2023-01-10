// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_map_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GoogleMapEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double lat, double long, double? currentLat,
            double? currentLong, bool selectionObject)
        initAddress,
    required TResult Function(String search) searchAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double lat, double long, double? currentLat,
            double? currentLong, bool selectionObject)?
        initAddress,
    TResult? Function(String search)? searchAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double lat, double long, double? currentLat,
            double? currentLong, bool selectionObject)?
        initAddress,
    TResult Function(String search)? searchAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitAddress value) initAddress,
    required TResult Function(_SearchAddress value) searchAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitAddress value)? initAddress,
    TResult? Function(_SearchAddress value)? searchAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitAddress value)? initAddress,
    TResult Function(_SearchAddress value)? searchAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleMapEventCopyWith<$Res> {
  factory $GoogleMapEventCopyWith(
          GoogleMapEvent value, $Res Function(GoogleMapEvent) then) =
      _$GoogleMapEventCopyWithImpl<$Res, GoogleMapEvent>;
}

/// @nodoc
class _$GoogleMapEventCopyWithImpl<$Res, $Val extends GoogleMapEvent>
    implements $GoogleMapEventCopyWith<$Res> {
  _$GoogleMapEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitAddressCopyWith<$Res> {
  factory _$$_InitAddressCopyWith(
          _$_InitAddress value, $Res Function(_$_InitAddress) then) =
      __$$_InitAddressCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {double lat,
      double long,
      double? currentLat,
      double? currentLong,
      bool selectionObject});
}

/// @nodoc
class __$$_InitAddressCopyWithImpl<$Res>
    extends _$GoogleMapEventCopyWithImpl<$Res, _$_InitAddress>
    implements _$$_InitAddressCopyWith<$Res> {
  __$$_InitAddressCopyWithImpl(
      _$_InitAddress _value, $Res Function(_$_InitAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? long = null,
    Object? currentLat = freezed,
    Object? currentLong = freezed,
    Object? selectionObject = null,
  }) {
    return _then(_$_InitAddress(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
      currentLat: freezed == currentLat
          ? _value.currentLat
          : currentLat // ignore: cast_nullable_to_non_nullable
              as double?,
      currentLong: freezed == currentLong
          ? _value.currentLong
          : currentLong // ignore: cast_nullable_to_non_nullable
              as double?,
      selectionObject: null == selectionObject
          ? _value.selectionObject
          : selectionObject // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_InitAddress implements _InitAddress {
  const _$_InitAddress(
      {required this.lat,
      required this.long,
      this.currentLat,
      this.currentLong,
      this.selectionObject = false});

  @override
  final double lat;
  @override
  final double long;
  @override
  final double? currentLat;
  @override
  final double? currentLong;
  @override
  @JsonKey()
  final bool selectionObject;

  @override
  String toString() {
    return 'GoogleMapEvent.initAddress(lat: $lat, long: $long, currentLat: $currentLat, currentLong: $currentLong, selectionObject: $selectionObject)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitAddress &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.long, long) || other.long == long) &&
            (identical(other.currentLat, currentLat) ||
                other.currentLat == currentLat) &&
            (identical(other.currentLong, currentLong) ||
                other.currentLong == currentLong) &&
            (identical(other.selectionObject, selectionObject) ||
                other.selectionObject == selectionObject));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, lat, long, currentLat, currentLong, selectionObject);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitAddressCopyWith<_$_InitAddress> get copyWith =>
      __$$_InitAddressCopyWithImpl<_$_InitAddress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double lat, double long, double? currentLat,
            double? currentLong, bool selectionObject)
        initAddress,
    required TResult Function(String search) searchAddress,
  }) {
    return initAddress(lat, long, currentLat, currentLong, selectionObject);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double lat, double long, double? currentLat,
            double? currentLong, bool selectionObject)?
        initAddress,
    TResult? Function(String search)? searchAddress,
  }) {
    return initAddress?.call(
        lat, long, currentLat, currentLong, selectionObject);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double lat, double long, double? currentLat,
            double? currentLong, bool selectionObject)?
        initAddress,
    TResult Function(String search)? searchAddress,
    required TResult orElse(),
  }) {
    if (initAddress != null) {
      return initAddress(lat, long, currentLat, currentLong, selectionObject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitAddress value) initAddress,
    required TResult Function(_SearchAddress value) searchAddress,
  }) {
    return initAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitAddress value)? initAddress,
    TResult? Function(_SearchAddress value)? searchAddress,
  }) {
    return initAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitAddress value)? initAddress,
    TResult Function(_SearchAddress value)? searchAddress,
    required TResult orElse(),
  }) {
    if (initAddress != null) {
      return initAddress(this);
    }
    return orElse();
  }
}

abstract class _InitAddress implements GoogleMapEvent {
  const factory _InitAddress(
      {required final double lat,
      required final double long,
      final double? currentLat,
      final double? currentLong,
      final bool selectionObject}) = _$_InitAddress;

  double get lat;
  double get long;
  double? get currentLat;
  double? get currentLong;
  bool get selectionObject;
  @JsonKey(ignore: true)
  _$$_InitAddressCopyWith<_$_InitAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchAddressCopyWith<$Res> {
  factory _$$_SearchAddressCopyWith(
          _$_SearchAddress value, $Res Function(_$_SearchAddress) then) =
      __$$_SearchAddressCopyWithImpl<$Res>;
  @useResult
  $Res call({String search});
}

/// @nodoc
class __$$_SearchAddressCopyWithImpl<$Res>
    extends _$GoogleMapEventCopyWithImpl<$Res, _$_SearchAddress>
    implements _$$_SearchAddressCopyWith<$Res> {
  __$$_SearchAddressCopyWithImpl(
      _$_SearchAddress _value, $Res Function(_$_SearchAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
  }) {
    return _then(_$_SearchAddress(
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchAddress implements _SearchAddress {
  const _$_SearchAddress({required this.search});

  @override
  final String search;

  @override
  String toString() {
    return 'GoogleMapEvent.searchAddress(search: $search)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchAddress &&
            (identical(other.search, search) || other.search == search));
  }

  @override
  int get hashCode => Object.hash(runtimeType, search);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchAddressCopyWith<_$_SearchAddress> get copyWith =>
      __$$_SearchAddressCopyWithImpl<_$_SearchAddress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double lat, double long, double? currentLat,
            double? currentLong, bool selectionObject)
        initAddress,
    required TResult Function(String search) searchAddress,
  }) {
    return searchAddress(search);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double lat, double long, double? currentLat,
            double? currentLong, bool selectionObject)?
        initAddress,
    TResult? Function(String search)? searchAddress,
  }) {
    return searchAddress?.call(search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double lat, double long, double? currentLat,
            double? currentLong, bool selectionObject)?
        initAddress,
    TResult Function(String search)? searchAddress,
    required TResult orElse(),
  }) {
    if (searchAddress != null) {
      return searchAddress(search);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitAddress value) initAddress,
    required TResult Function(_SearchAddress value) searchAddress,
  }) {
    return searchAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitAddress value)? initAddress,
    TResult? Function(_SearchAddress value)? searchAddress,
  }) {
    return searchAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitAddress value)? initAddress,
    TResult Function(_SearchAddress value)? searchAddress,
    required TResult orElse(),
  }) {
    if (searchAddress != null) {
      return searchAddress(this);
    }
    return orElse();
  }
}

abstract class _SearchAddress implements GoogleMapEvent {
  const factory _SearchAddress({required final String search}) =
      _$_SearchAddress;

  String get search;
  @JsonKey(ignore: true)
  _$$_SearchAddressCopyWith<_$_SearchAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GoogleMapState {
  bool get loadingAddresses => throw _privateConstructorUsedError;
  bool get loadingAddress => throw _privateConstructorUsedError;
  List<PlaceSearch>? get places => throw _privateConstructorUsedError;
  List<PlaceSearch>? get searchingPlaces => throw _privateConstructorUsedError;
  LocationMap? get location => throw _privateConstructorUsedError;
  List<Marker>? get markers => throw _privateConstructorUsedError;
  String? get currentAddress => throw _privateConstructorUsedError;
  String? get selectedAddress => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool loadingAddresses,
            bool loadingAddress,
            List<PlaceSearch>? places,
            List<PlaceSearch>? searchingPlaces,
            LocationMap? location,
            List<Marker>? markers,
            String? currentAddress,
            String? selectedAddress,
            String? error)
        google,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool loadingAddresses,
            bool loadingAddress,
            List<PlaceSearch>? places,
            List<PlaceSearch>? searchingPlaces,
            LocationMap? location,
            List<Marker>? markers,
            String? currentAddress,
            String? selectedAddress,
            String? error)?
        google,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool loadingAddresses,
            bool loadingAddress,
            List<PlaceSearch>? places,
            List<PlaceSearch>? searchingPlaces,
            LocationMap? location,
            List<Marker>? markers,
            String? currentAddress,
            String? selectedAddress,
            String? error)?
        google,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Google value) google,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Google value)? google,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Google value)? google,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GoogleMapStateCopyWith<GoogleMapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleMapStateCopyWith<$Res> {
  factory $GoogleMapStateCopyWith(
          GoogleMapState value, $Res Function(GoogleMapState) then) =
      _$GoogleMapStateCopyWithImpl<$Res, GoogleMapState>;
  @useResult
  $Res call(
      {bool loadingAddresses,
      bool loadingAddress,
      List<PlaceSearch>? places,
      List<PlaceSearch>? searchingPlaces,
      LocationMap? location,
      List<Marker>? markers,
      String? currentAddress,
      String? selectedAddress,
      String? error});
}

/// @nodoc
class _$GoogleMapStateCopyWithImpl<$Res, $Val extends GoogleMapState>
    implements $GoogleMapStateCopyWith<$Res> {
  _$GoogleMapStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingAddresses = null,
    Object? loadingAddress = null,
    Object? places = freezed,
    Object? searchingPlaces = freezed,
    Object? location = freezed,
    Object? markers = freezed,
    Object? currentAddress = freezed,
    Object? selectedAddress = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      loadingAddresses: null == loadingAddresses
          ? _value.loadingAddresses
          : loadingAddresses // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingAddress: null == loadingAddress
          ? _value.loadingAddress
          : loadingAddress // ignore: cast_nullable_to_non_nullable
              as bool,
      places: freezed == places
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<PlaceSearch>?,
      searchingPlaces: freezed == searchingPlaces
          ? _value.searchingPlaces
          : searchingPlaces // ignore: cast_nullable_to_non_nullable
              as List<PlaceSearch>?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationMap?,
      markers: freezed == markers
          ? _value.markers
          : markers // ignore: cast_nullable_to_non_nullable
              as List<Marker>?,
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
abstract class _$$_GoogleCopyWith<$Res>
    implements $GoogleMapStateCopyWith<$Res> {
  factory _$$_GoogleCopyWith(_$_Google value, $Res Function(_$_Google) then) =
      __$$_GoogleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loadingAddresses,
      bool loadingAddress,
      List<PlaceSearch>? places,
      List<PlaceSearch>? searchingPlaces,
      LocationMap? location,
      List<Marker>? markers,
      String? currentAddress,
      String? selectedAddress,
      String? error});
}

/// @nodoc
class __$$_GoogleCopyWithImpl<$Res>
    extends _$GoogleMapStateCopyWithImpl<$Res, _$_Google>
    implements _$$_GoogleCopyWith<$Res> {
  __$$_GoogleCopyWithImpl(_$_Google _value, $Res Function(_$_Google) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingAddresses = null,
    Object? loadingAddress = null,
    Object? places = freezed,
    Object? searchingPlaces = freezed,
    Object? location = freezed,
    Object? markers = freezed,
    Object? currentAddress = freezed,
    Object? selectedAddress = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_Google(
      loadingAddresses: null == loadingAddresses
          ? _value.loadingAddresses
          : loadingAddresses // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingAddress: null == loadingAddress
          ? _value.loadingAddress
          : loadingAddress // ignore: cast_nullable_to_non_nullable
              as bool,
      places: freezed == places
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<PlaceSearch>?,
      searchingPlaces: freezed == searchingPlaces
          ? _value._searchingPlaces
          : searchingPlaces // ignore: cast_nullable_to_non_nullable
              as List<PlaceSearch>?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationMap?,
      markers: freezed == markers
          ? _value._markers
          : markers // ignore: cast_nullable_to_non_nullable
              as List<Marker>?,
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

class _$_Google implements _Google {
  const _$_Google(
      {this.loadingAddresses = false,
      this.loadingAddress = false,
      final List<PlaceSearch>? places,
      final List<PlaceSearch>? searchingPlaces,
      this.location,
      final List<Marker>? markers,
      this.currentAddress,
      this.selectedAddress,
      this.error})
      : _places = places,
        _searchingPlaces = searchingPlaces,
        _markers = markers;

  @override
  @JsonKey()
  final bool loadingAddresses;
  @override
  @JsonKey()
  final bool loadingAddress;
  final List<PlaceSearch>? _places;
  @override
  List<PlaceSearch>? get places {
    final value = _places;
    if (value == null) return null;
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PlaceSearch>? _searchingPlaces;
  @override
  List<PlaceSearch>? get searchingPlaces {
    final value = _searchingPlaces;
    if (value == null) return null;
    if (_searchingPlaces is EqualUnmodifiableListView) return _searchingPlaces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final LocationMap? location;
  final List<Marker>? _markers;
  @override
  List<Marker>? get markers {
    final value = _markers;
    if (value == null) return null;
    if (_markers is EqualUnmodifiableListView) return _markers;
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
    return 'GoogleMapState.google(loadingAddresses: $loadingAddresses, loadingAddress: $loadingAddress, places: $places, searchingPlaces: $searchingPlaces, location: $location, markers: $markers, currentAddress: $currentAddress, selectedAddress: $selectedAddress, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Google &&
            (identical(other.loadingAddresses, loadingAddresses) ||
                other.loadingAddresses == loadingAddresses) &&
            (identical(other.loadingAddress, loadingAddress) ||
                other.loadingAddress == loadingAddress) &&
            const DeepCollectionEquality().equals(other._places, _places) &&
            const DeepCollectionEquality()
                .equals(other._searchingPlaces, _searchingPlaces) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality().equals(other._markers, _markers) &&
            (identical(other.currentAddress, currentAddress) ||
                other.currentAddress == currentAddress) &&
            (identical(other.selectedAddress, selectedAddress) ||
                other.selectedAddress == selectedAddress) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loadingAddresses,
      loadingAddress,
      const DeepCollectionEquality().hash(_places),
      const DeepCollectionEquality().hash(_searchingPlaces),
      location,
      const DeepCollectionEquality().hash(_markers),
      currentAddress,
      selectedAddress,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GoogleCopyWith<_$_Google> get copyWith =>
      __$$_GoogleCopyWithImpl<_$_Google>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool loadingAddresses,
            bool loadingAddress,
            List<PlaceSearch>? places,
            List<PlaceSearch>? searchingPlaces,
            LocationMap? location,
            List<Marker>? markers,
            String? currentAddress,
            String? selectedAddress,
            String? error)
        google,
  }) {
    return google(loadingAddresses, loadingAddress, places, searchingPlaces,
        location, markers, currentAddress, selectedAddress, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool loadingAddresses,
            bool loadingAddress,
            List<PlaceSearch>? places,
            List<PlaceSearch>? searchingPlaces,
            LocationMap? location,
            List<Marker>? markers,
            String? currentAddress,
            String? selectedAddress,
            String? error)?
        google,
  }) {
    return google?.call(
        loadingAddresses,
        loadingAddress,
        places,
        searchingPlaces,
        location,
        markers,
        currentAddress,
        selectedAddress,
        error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool loadingAddresses,
            bool loadingAddress,
            List<PlaceSearch>? places,
            List<PlaceSearch>? searchingPlaces,
            LocationMap? location,
            List<Marker>? markers,
            String? currentAddress,
            String? selectedAddress,
            String? error)?
        google,
    required TResult orElse(),
  }) {
    if (google != null) {
      return google(loadingAddresses, loadingAddress, places, searchingPlaces,
          location, markers, currentAddress, selectedAddress, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Google value) google,
  }) {
    return google(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Google value)? google,
  }) {
    return google?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Google value)? google,
    required TResult orElse(),
  }) {
    if (google != null) {
      return google(this);
    }
    return orElse();
  }
}

abstract class _Google implements GoogleMapState {
  const factory _Google(
      {final bool loadingAddresses,
      final bool loadingAddress,
      final List<PlaceSearch>? places,
      final List<PlaceSearch>? searchingPlaces,
      final LocationMap? location,
      final List<Marker>? markers,
      final String? currentAddress,
      final String? selectedAddress,
      final String? error}) = _$_Google;

  @override
  bool get loadingAddresses;
  @override
  bool get loadingAddress;
  @override
  List<PlaceSearch>? get places;
  @override
  List<PlaceSearch>? get searchingPlaces;
  @override
  LocationMap? get location;
  @override
  List<Marker>? get markers;
  @override
  String? get currentAddress;
  @override
  String? get selectedAddress;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_GoogleCopyWith<_$_Google> get copyWith =>
      throw _privateConstructorUsedError;
}
