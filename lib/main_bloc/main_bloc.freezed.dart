// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool moveToCurrentLocation) initLocation,
    required TResult Function(MapsType mapsType) setMap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool moveToCurrentLocation)? initLocation,
    TResult? Function(MapsType mapsType)? setMap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool moveToCurrentLocation)? initLocation,
    TResult Function(MapsType mapsType)? setMap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitLocation value) initLocation,
    required TResult Function(_SetMap value) setMap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitLocation value)? initLocation,
    TResult? Function(_SetMap value)? setMap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitLocation value)? initLocation,
    TResult Function(_SetMap value)? setMap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res, MainEvent>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res, $Val extends MainEvent>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitLocationCopyWith<$Res> {
  factory _$$_InitLocationCopyWith(
          _$_InitLocation value, $Res Function(_$_InitLocation) then) =
      __$$_InitLocationCopyWithImpl<$Res>;
  @useResult
  $Res call({bool moveToCurrentLocation});
}

/// @nodoc
class __$$_InitLocationCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$_InitLocation>
    implements _$$_InitLocationCopyWith<$Res> {
  __$$_InitLocationCopyWithImpl(
      _$_InitLocation _value, $Res Function(_$_InitLocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moveToCurrentLocation = null,
  }) {
    return _then(_$_InitLocation(
      moveToCurrentLocation: null == moveToCurrentLocation
          ? _value.moveToCurrentLocation
          : moveToCurrentLocation // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_InitLocation implements _InitLocation {
  const _$_InitLocation({this.moveToCurrentLocation = false});

  @override
  @JsonKey()
  final bool moveToCurrentLocation;

  @override
  String toString() {
    return 'MainEvent.initLocation(moveToCurrentLocation: $moveToCurrentLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitLocation &&
            (identical(other.moveToCurrentLocation, moveToCurrentLocation) ||
                other.moveToCurrentLocation == moveToCurrentLocation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, moveToCurrentLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitLocationCopyWith<_$_InitLocation> get copyWith =>
      __$$_InitLocationCopyWithImpl<_$_InitLocation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool moveToCurrentLocation) initLocation,
    required TResult Function(MapsType mapsType) setMap,
  }) {
    return initLocation(moveToCurrentLocation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool moveToCurrentLocation)? initLocation,
    TResult? Function(MapsType mapsType)? setMap,
  }) {
    return initLocation?.call(moveToCurrentLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool moveToCurrentLocation)? initLocation,
    TResult Function(MapsType mapsType)? setMap,
    required TResult orElse(),
  }) {
    if (initLocation != null) {
      return initLocation(moveToCurrentLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitLocation value) initLocation,
    required TResult Function(_SetMap value) setMap,
  }) {
    return initLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitLocation value)? initLocation,
    TResult? Function(_SetMap value)? setMap,
  }) {
    return initLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitLocation value)? initLocation,
    TResult Function(_SetMap value)? setMap,
    required TResult orElse(),
  }) {
    if (initLocation != null) {
      return initLocation(this);
    }
    return orElse();
  }
}

abstract class _InitLocation implements MainEvent {
  const factory _InitLocation({final bool moveToCurrentLocation}) =
      _$_InitLocation;

  bool get moveToCurrentLocation;
  @JsonKey(ignore: true)
  _$$_InitLocationCopyWith<_$_InitLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetMapCopyWith<$Res> {
  factory _$$_SetMapCopyWith(_$_SetMap value, $Res Function(_$_SetMap) then) =
      __$$_SetMapCopyWithImpl<$Res>;
  @useResult
  $Res call({MapsType mapsType});
}

/// @nodoc
class __$$_SetMapCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$_SetMap>
    implements _$$_SetMapCopyWith<$Res> {
  __$$_SetMapCopyWithImpl(_$_SetMap _value, $Res Function(_$_SetMap) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mapsType = null,
  }) {
    return _then(_$_SetMap(
      mapsType: null == mapsType
          ? _value.mapsType
          : mapsType // ignore: cast_nullable_to_non_nullable
              as MapsType,
    ));
  }
}

/// @nodoc

class _$_SetMap implements _SetMap {
  const _$_SetMap({required this.mapsType});

  @override
  final MapsType mapsType;

  @override
  String toString() {
    return 'MainEvent.setMap(mapsType: $mapsType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetMap &&
            (identical(other.mapsType, mapsType) ||
                other.mapsType == mapsType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mapsType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetMapCopyWith<_$_SetMap> get copyWith =>
      __$$_SetMapCopyWithImpl<_$_SetMap>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool moveToCurrentLocation) initLocation,
    required TResult Function(MapsType mapsType) setMap,
  }) {
    return setMap(mapsType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool moveToCurrentLocation)? initLocation,
    TResult? Function(MapsType mapsType)? setMap,
  }) {
    return setMap?.call(mapsType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool moveToCurrentLocation)? initLocation,
    TResult Function(MapsType mapsType)? setMap,
    required TResult orElse(),
  }) {
    if (setMap != null) {
      return setMap(mapsType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitLocation value) initLocation,
    required TResult Function(_SetMap value) setMap,
  }) {
    return setMap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitLocation value)? initLocation,
    TResult? Function(_SetMap value)? setMap,
  }) {
    return setMap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitLocation value)? initLocation,
    TResult Function(_SetMap value)? setMap,
    required TResult orElse(),
  }) {
    if (setMap != null) {
      return setMap(this);
    }
    return orElse();
  }
}

abstract class _SetMap implements MainEvent {
  const factory _SetMap({required final MapsType mapsType}) = _$_SetMap;

  MapsType get mapsType;
  @JsonKey(ignore: true)
  _$$_SetMapCopyWith<_$_SetMap> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String? error) error,
    required TResult Function() loading,
    required TResult Function(MapsType mapsType, bool moveToCurrentLocation,
            double? latitude, double? longitude)
        map,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String? error)? error,
    TResult? Function()? loading,
    TResult? Function(MapsType mapsType, bool moveToCurrentLocation,
            double? latitude, double? longitude)?
        map,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String? error)? error,
    TResult Function()? loading,
    TResult Function(MapsType mapsType, bool moveToCurrentLocation,
            double? latitude, double? longitude)?
        map,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Map value) map,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Map value)? map,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Map value)? map,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitCopyWith<$Res> {
  factory _$$_InitCopyWith(_$_Init value, $Res Function(_$_Init) then) =
      __$$_InitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitCopyWithImpl<$Res> extends _$MainStateCopyWithImpl<$Res, _$_Init>
    implements _$$_InitCopyWith<$Res> {
  __$$_InitCopyWithImpl(_$_Init _value, $Res Function(_$_Init) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Init implements _Init {
  const _$_Init();

  @override
  String toString() {
    return 'MainState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String? error) error,
    required TResult Function() loading,
    required TResult Function(MapsType mapsType, bool moveToCurrentLocation,
            double? latitude, double? longitude)
        map,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String? error)? error,
    TResult? Function()? loading,
    TResult? Function(MapsType mapsType, bool moveToCurrentLocation,
            double? latitude, double? longitude)?
        map,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String? error)? error,
    TResult Function()? loading,
    TResult Function(MapsType mapsType, bool moveToCurrentLocation,
            double? latitude, double? longitude)?
        map,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Map value) map,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Map value)? map,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Map value)? map,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements MainState {
  const factory _Init() = _$_Init;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_Error(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({required this.error});

  @override
  final String? error;

  @override
  String toString() {
    return 'MainState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String? error) error,
    required TResult Function() loading,
    required TResult Function(MapsType mapsType, bool moveToCurrentLocation,
            double? latitude, double? longitude)
        map,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String? error)? error,
    TResult? Function()? loading,
    TResult? Function(MapsType mapsType, bool moveToCurrentLocation,
            double? latitude, double? longitude)?
        map,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String? error)? error,
    TResult Function()? loading,
    TResult Function(MapsType mapsType, bool moveToCurrentLocation,
            double? latitude, double? longitude)?
        map,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Map value) map,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Map value)? map,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Map value)? map,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements MainState {
  const factory _Error({required final String? error}) = _$_Error;

  String? get error;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'MainState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String? error) error,
    required TResult Function() loading,
    required TResult Function(MapsType mapsType, bool moveToCurrentLocation,
            double? latitude, double? longitude)
        map,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String? error)? error,
    TResult? Function()? loading,
    TResult? Function(MapsType mapsType, bool moveToCurrentLocation,
            double? latitude, double? longitude)?
        map,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String? error)? error,
    TResult Function()? loading,
    TResult Function(MapsType mapsType, bool moveToCurrentLocation,
            double? latitude, double? longitude)?
        map,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Map value) map,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Map value)? map,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Map value)? map,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements MainState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_MapCopyWith<$Res> {
  factory _$$_MapCopyWith(_$_Map value, $Res Function(_$_Map) then) =
      __$$_MapCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {MapsType mapsType,
      bool moveToCurrentLocation,
      double? latitude,
      double? longitude});
}

/// @nodoc
class __$$_MapCopyWithImpl<$Res> extends _$MainStateCopyWithImpl<$Res, _$_Map>
    implements _$$_MapCopyWith<$Res> {
  __$$_MapCopyWithImpl(_$_Map _value, $Res Function(_$_Map) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mapsType = null,
    Object? moveToCurrentLocation = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$_Map(
      mapsType: null == mapsType
          ? _value.mapsType
          : mapsType // ignore: cast_nullable_to_non_nullable
              as MapsType,
      moveToCurrentLocation: null == moveToCurrentLocation
          ? _value.moveToCurrentLocation
          : moveToCurrentLocation // ignore: cast_nullable_to_non_nullable
              as bool,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_Map implements _Map {
  const _$_Map(
      {this.mapsType = MapsType.google,
      this.moveToCurrentLocation = false,
      this.latitude,
      this.longitude});

  @override
  @JsonKey()
  final MapsType mapsType;
  @override
  @JsonKey()
  final bool moveToCurrentLocation;
  @override
  final double? latitude;
  @override
  final double? longitude;

  @override
  String toString() {
    return 'MainState.map(mapsType: $mapsType, moveToCurrentLocation: $moveToCurrentLocation, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Map &&
            (identical(other.mapsType, mapsType) ||
                other.mapsType == mapsType) &&
            (identical(other.moveToCurrentLocation, moveToCurrentLocation) ||
                other.moveToCurrentLocation == moveToCurrentLocation) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, mapsType, moveToCurrentLocation, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MapCopyWith<_$_Map> get copyWith =>
      __$$_MapCopyWithImpl<_$_Map>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String? error) error,
    required TResult Function() loading,
    required TResult Function(MapsType mapsType, bool moveToCurrentLocation,
            double? latitude, double? longitude)
        map,
  }) {
    return map(mapsType, moveToCurrentLocation, latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String? error)? error,
    TResult? Function()? loading,
    TResult? Function(MapsType mapsType, bool moveToCurrentLocation,
            double? latitude, double? longitude)?
        map,
  }) {
    return map?.call(mapsType, moveToCurrentLocation, latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String? error)? error,
    TResult Function()? loading,
    TResult Function(MapsType mapsType, bool moveToCurrentLocation,
            double? latitude, double? longitude)?
        map,
    required TResult orElse(),
  }) {
    if (map != null) {
      return map(mapsType, moveToCurrentLocation, latitude, longitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Map value) map,
  }) {
    return map(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Map value)? map,
  }) {
    return map?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Map value)? map,
    required TResult orElse(),
  }) {
    if (map != null) {
      return map(this);
    }
    return orElse();
  }
}

abstract class _Map implements MainState {
  const factory _Map(
      {final MapsType mapsType,
      final bool moveToCurrentLocation,
      final double? latitude,
      final double? longitude}) = _$_Map;

  MapsType get mapsType;
  bool get moveToCurrentLocation;
  double? get latitude;
  double? get longitude;
  @JsonKey(ignore: true)
  _$$_MapCopyWith<_$_Map> get copyWith => throw _privateConstructorUsedError;
}
