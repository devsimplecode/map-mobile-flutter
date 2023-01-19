// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocationEvent {
  bool get moveToCurrentLocation => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool moveToCurrentLocation) initLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool moveToCurrentLocation)? initLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool moveToCurrentLocation)? initLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitLocation value) initLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitLocation value)? initLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitLocation value)? initLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationEventCopyWith<LocationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationEventCopyWith<$Res> {
  factory $LocationEventCopyWith(
          LocationEvent value, $Res Function(LocationEvent) then) =
      _$LocationEventCopyWithImpl<$Res, LocationEvent>;
  @useResult
  $Res call({bool moveToCurrentLocation});
}

/// @nodoc
class _$LocationEventCopyWithImpl<$Res, $Val extends LocationEvent>
    implements $LocationEventCopyWith<$Res> {
  _$LocationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moveToCurrentLocation = null,
  }) {
    return _then(_value.copyWith(
      moveToCurrentLocation: null == moveToCurrentLocation
          ? _value.moveToCurrentLocation
          : moveToCurrentLocation // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitLocationCopyWith<$Res>
    implements $LocationEventCopyWith<$Res> {
  factory _$$_InitLocationCopyWith(
          _$_InitLocation value, $Res Function(_$_InitLocation) then) =
      __$$_InitLocationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool moveToCurrentLocation});
}

/// @nodoc
class __$$_InitLocationCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$_InitLocation>
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
    return 'LocationEvent.initLocation(moveToCurrentLocation: $moveToCurrentLocation)';
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
  }) {
    return initLocation(moveToCurrentLocation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool moveToCurrentLocation)? initLocation,
  }) {
    return initLocation?.call(moveToCurrentLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool moveToCurrentLocation)? initLocation,
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
  }) {
    return initLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitLocation value)? initLocation,
  }) {
    return initLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitLocation value)? initLocation,
    required TResult orElse(),
  }) {
    if (initLocation != null) {
      return initLocation(this);
    }
    return orElse();
  }
}

abstract class _InitLocation implements LocationEvent {
  const factory _InitLocation({final bool moveToCurrentLocation}) =
      _$_InitLocation;

  @override
  bool get moveToCurrentLocation;
  @override
  @JsonKey(ignore: true)
  _$$_InitLocationCopyWith<_$_InitLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(bool moveToCurrentLocation, double? latitude,
            double? longitude, PermissionStatus? status, UniqueKey? key)
        map,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(bool moveToCurrentLocation, double? latitude,
            double? longitude, PermissionStatus? status, UniqueKey? key)?
        map,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool moveToCurrentLocation, double? latitude,
            double? longitude, PermissionStatus? status, UniqueKey? key)?
        map,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Map value) map,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Map value)? map,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Map value)? map,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res, LocationState>;
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res, $Val extends LocationState>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

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
class __$$_InitCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$_Init>
    implements _$$_InitCopyWith<$Res> {
  __$$_InitCopyWithImpl(_$_Init _value, $Res Function(_$_Init) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Init extends _Init {
  const _$_Init() : super._();

  @override
  String toString() {
    return 'LocationState.init()';
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
    required TResult Function(bool moveToCurrentLocation, double? latitude,
            double? longitude, PermissionStatus? status, UniqueKey? key)
        map,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(bool moveToCurrentLocation, double? latitude,
            double? longitude, PermissionStatus? status, UniqueKey? key)?
        map,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool moveToCurrentLocation, double? latitude,
            double? longitude, PermissionStatus? status, UniqueKey? key)?
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
    required TResult Function(_Map value) map,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Map value)? map,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Map value)? map,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init extends LocationState {
  const factory _Init() = _$_Init;
  const _Init._() : super._();
}

/// @nodoc
abstract class _$$_MapCopyWith<$Res> {
  factory _$$_MapCopyWith(_$_Map value, $Res Function(_$_Map) then) =
      __$$_MapCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {bool moveToCurrentLocation,
      double? latitude,
      double? longitude,
      PermissionStatus? status,
      UniqueKey? key});
}

/// @nodoc
class __$$_MapCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$_Map>
    implements _$$_MapCopyWith<$Res> {
  __$$_MapCopyWithImpl(_$_Map _value, $Res Function(_$_Map) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moveToCurrentLocation = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? status = freezed,
    Object? key = freezed,
  }) {
    return _then(_$_Map(
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PermissionStatus?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as UniqueKey?,
    ));
  }
}

/// @nodoc

class _$_Map extends _Map {
  const _$_Map(
      {this.moveToCurrentLocation = false,
      this.latitude,
      this.longitude,
      this.status,
      this.key})
      : super._();

  @override
  @JsonKey()
  final bool moveToCurrentLocation;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final PermissionStatus? status;
  @override
  final UniqueKey? key;

  @override
  String toString() {
    return 'LocationState.map(moveToCurrentLocation: $moveToCurrentLocation, latitude: $latitude, longitude: $longitude, status: $status, key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Map &&
            (identical(other.moveToCurrentLocation, moveToCurrentLocation) ||
                other.moveToCurrentLocation == moveToCurrentLocation) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.key, key) || other.key == key));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, moveToCurrentLocation, latitude, longitude, status, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MapCopyWith<_$_Map> get copyWith =>
      __$$_MapCopyWithImpl<_$_Map>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(bool moveToCurrentLocation, double? latitude,
            double? longitude, PermissionStatus? status, UniqueKey? key)
        map,
  }) {
    return map(moveToCurrentLocation, latitude, longitude, status, key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(bool moveToCurrentLocation, double? latitude,
            double? longitude, PermissionStatus? status, UniqueKey? key)?
        map,
  }) {
    return map?.call(moveToCurrentLocation, latitude, longitude, status, key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool moveToCurrentLocation, double? latitude,
            double? longitude, PermissionStatus? status, UniqueKey? key)?
        map,
    required TResult orElse(),
  }) {
    if (map != null) {
      return map(moveToCurrentLocation, latitude, longitude, status, key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Map value) map,
  }) {
    return map(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Map value)? map,
  }) {
    return map?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Map value)? map,
    required TResult orElse(),
  }) {
    if (map != null) {
      return map(this);
    }
    return orElse();
  }
}

abstract class _Map extends LocationState {
  const factory _Map(
      {final bool moveToCurrentLocation,
      final double? latitude,
      final double? longitude,
      final PermissionStatus? status,
      final UniqueKey? key}) = _$_Map;
  const _Map._() : super._();

  bool get moveToCurrentLocation;
  double? get latitude;
  double? get longitude;
  PermissionStatus? get status;
  UniqueKey? get key;
  @JsonKey(ignore: true)
  _$$_MapCopyWith<_$_Map> get copyWith => throw _privateConstructorUsedError;
}
