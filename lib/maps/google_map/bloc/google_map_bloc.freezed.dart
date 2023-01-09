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
  double get lat => throw _privateConstructorUsedError;
  double get long => throw _privateConstructorUsedError;
  double? get currentLat => throw _privateConstructorUsedError;
  double? get currentLong => throw _privateConstructorUsedError;
  bool get selectionObject => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double lat, double long, double? currentLat,
            double? currentLong, bool selectionObject)
        initAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double lat, double long, double? currentLat,
            double? currentLong, bool selectionObject)?
        initAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double lat, double long, double? currentLat,
            double? currentLong, bool selectionObject)?
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
  $GoogleMapEventCopyWith<GoogleMapEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleMapEventCopyWith<$Res> {
  factory $GoogleMapEventCopyWith(
          GoogleMapEvent value, $Res Function(GoogleMapEvent) then) =
      _$GoogleMapEventCopyWithImpl<$Res, GoogleMapEvent>;
  @useResult
  $Res call(
      {double lat,
      double long,
      double? currentLat,
      double? currentLong,
      bool selectionObject});
}

/// @nodoc
class _$GoogleMapEventCopyWithImpl<$Res, $Val extends GoogleMapEvent>
    implements $GoogleMapEventCopyWith<$Res> {
  _$GoogleMapEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? long = null,
    Object? currentLat = freezed,
    Object? currentLong = freezed,
    Object? selectionObject = null,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitAddressCopyWith<$Res>
    implements $GoogleMapEventCopyWith<$Res> {
  factory _$$_InitAddressCopyWith(
          _$_InitAddress value, $Res Function(_$_InitAddress) then) =
      __$$_InitAddressCopyWithImpl<$Res>;
  @override
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
  }) {
    return initAddress(lat, long, currentLat, currentLong, selectionObject);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double lat, double long, double? currentLat,
            double? currentLong, bool selectionObject)?
        initAddress,
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

abstract class _InitAddress implements GoogleMapEvent {
  const factory _InitAddress(
      {required final double lat,
      required final double long,
      final double? currentLat,
      final double? currentLong,
      final bool selectionObject}) = _$_InitAddress;

  @override
  double get lat;
  @override
  double get long;
  @override
  double? get currentLat;
  @override
  double? get currentLong;
  @override
  bool get selectionObject;
  @override
  @JsonKey(ignore: true)
  _$$_InitAddressCopyWith<_$_InitAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GoogleMapState {
  bool get loading => throw _privateConstructorUsedError;
  List<Marker>? get markers => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool loading, List<Marker>? markers, String? address)
        google,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool loading, List<Marker>? markers, String? address)?
        google,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool loading, List<Marker>? markers, String? address)?
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
  $Res call({bool loading, List<Marker>? markers, String? address});
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
    Object? loading = null,
    Object? markers = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      markers: freezed == markers
          ? _value.markers
          : markers // ignore: cast_nullable_to_non_nullable
              as List<Marker>?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
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
  $Res call({bool loading, List<Marker>? markers, String? address});
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
    Object? loading = null,
    Object? markers = freezed,
    Object? address = freezed,
  }) {
    return _then(_$_Google(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      markers: freezed == markers
          ? _value._markers
          : markers // ignore: cast_nullable_to_non_nullable
              as List<Marker>?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Google implements _Google {
  const _$_Google(
      {this.loading = false, final List<Marker>? markers, this.address})
      : _markers = markers;

  @override
  @JsonKey()
  final bool loading;
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
  final String? address;

  @override
  String toString() {
    return 'GoogleMapState.google(loading: $loading, markers: $markers, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Google &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality().equals(other._markers, _markers) &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading,
      const DeepCollectionEquality().hash(_markers), address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GoogleCopyWith<_$_Google> get copyWith =>
      __$$_GoogleCopyWithImpl<_$_Google>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool loading, List<Marker>? markers, String? address)
        google,
  }) {
    return google(loading, markers, address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool loading, List<Marker>? markers, String? address)?
        google,
  }) {
    return google?.call(loading, markers, address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool loading, List<Marker>? markers, String? address)?
        google,
    required TResult orElse(),
  }) {
    if (google != null) {
      return google(loading, markers, address);
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
      {final bool loading,
      final List<Marker>? markers,
      final String? address}) = _$_Google;

  @override
  bool get loading;
  @override
  List<Marker>? get markers;
  @override
  String? get address;
  @override
  @JsonKey(ignore: true)
  _$$_GoogleCopyWith<_$_Google> get copyWith =>
      throw _privateConstructorUsedError;
}
