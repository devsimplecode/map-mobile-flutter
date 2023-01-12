// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'osm_map_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OsmMapEvent {
  String get search => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String search) searchAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String search)? searchAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search)? searchAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchAddress value) searchAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchAddress value)? searchAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchAddress value)? searchAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OsmMapEventCopyWith<OsmMapEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OsmMapEventCopyWith<$Res> {
  factory $OsmMapEventCopyWith(
          OsmMapEvent value, $Res Function(OsmMapEvent) then) =
      _$OsmMapEventCopyWithImpl<$Res, OsmMapEvent>;
  @useResult
  $Res call({String search});
}

/// @nodoc
class _$OsmMapEventCopyWithImpl<$Res, $Val extends OsmMapEvent>
    implements $OsmMapEventCopyWith<$Res> {
  _$OsmMapEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
  }) {
    return _then(_value.copyWith(
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchAddressCopyWith<$Res>
    implements $OsmMapEventCopyWith<$Res> {
  factory _$$_SearchAddressCopyWith(
          _$_SearchAddress value, $Res Function(_$_SearchAddress) then) =
      __$$_SearchAddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String search});
}

/// @nodoc
class __$$_SearchAddressCopyWithImpl<$Res>
    extends _$OsmMapEventCopyWithImpl<$Res, _$_SearchAddress>
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
    return 'OsmMapEvent.searchAddress(search: $search)';
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
    required TResult Function(String search) searchAddress,
  }) {
    return searchAddress(search);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String search)? searchAddress,
  }) {
    return searchAddress?.call(search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_SearchAddress value) searchAddress,
  }) {
    return searchAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchAddress value)? searchAddress,
  }) {
    return searchAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchAddress value)? searchAddress,
    required TResult orElse(),
  }) {
    if (searchAddress != null) {
      return searchAddress(this);
    }
    return orElse();
  }
}

abstract class _SearchAddress implements OsmMapEvent {
  const factory _SearchAddress({required final String search}) =
      _$_SearchAddress;

  @override
  String get search;
  @override
  @JsonKey(ignore: true)
  _$$_SearchAddressCopyWith<_$_SearchAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OsmMapState {
  bool get loadingAddress => throw _privateConstructorUsedError;
  List<Place>? get places => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool loadingAddress, List<Place>? places, String? error)
        osm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool loadingAddress, List<Place>? places, String? error)?
        osm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool loadingAddress, List<Place>? places, String? error)?
        osm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Osm value) osm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Osm value)? osm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Osm value)? osm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OsmMapStateCopyWith<OsmMapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OsmMapStateCopyWith<$Res> {
  factory $OsmMapStateCopyWith(
          OsmMapState value, $Res Function(OsmMapState) then) =
      _$OsmMapStateCopyWithImpl<$Res, OsmMapState>;
  @useResult
  $Res call({bool loadingAddress, List<Place>? places, String? error});
}

/// @nodoc
class _$OsmMapStateCopyWithImpl<$Res, $Val extends OsmMapState>
    implements $OsmMapStateCopyWith<$Res> {
  _$OsmMapStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingAddress = null,
    Object? places = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      loadingAddress: null == loadingAddress
          ? _value.loadingAddress
          : loadingAddress // ignore: cast_nullable_to_non_nullable
              as bool,
      places: freezed == places
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Place>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OsmCopyWith<$Res> implements $OsmMapStateCopyWith<$Res> {
  factory _$$_OsmCopyWith(_$_Osm value, $Res Function(_$_Osm) then) =
      __$$_OsmCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loadingAddress, List<Place>? places, String? error});
}

/// @nodoc
class __$$_OsmCopyWithImpl<$Res> extends _$OsmMapStateCopyWithImpl<$Res, _$_Osm>
    implements _$$_OsmCopyWith<$Res> {
  __$$_OsmCopyWithImpl(_$_Osm _value, $Res Function(_$_Osm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingAddress = null,
    Object? places = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_Osm(
      loadingAddress: null == loadingAddress
          ? _value.loadingAddress
          : loadingAddress // ignore: cast_nullable_to_non_nullable
              as bool,
      places: freezed == places
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Place>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Osm implements _Osm {
  const _$_Osm(
      {this.loadingAddress = false, final List<Place>? places, this.error})
      : _places = places;

  @override
  @JsonKey()
  final bool loadingAddress;
  final List<Place>? _places;
  @override
  List<Place>? get places {
    final value = _places;
    if (value == null) return null;
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'OsmMapState.osm(loadingAddress: $loadingAddress, places: $places, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Osm &&
            (identical(other.loadingAddress, loadingAddress) ||
                other.loadingAddress == loadingAddress) &&
            const DeepCollectionEquality().equals(other._places, _places) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loadingAddress,
      const DeepCollectionEquality().hash(_places), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OsmCopyWith<_$_Osm> get copyWith =>
      __$$_OsmCopyWithImpl<_$_Osm>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool loadingAddress, List<Place>? places, String? error)
        osm,
  }) {
    return osm(loadingAddress, places, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool loadingAddress, List<Place>? places, String? error)?
        osm,
  }) {
    return osm?.call(loadingAddress, places, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool loadingAddress, List<Place>? places, String? error)?
        osm,
    required TResult orElse(),
  }) {
    if (osm != null) {
      return osm(loadingAddress, places, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Osm value) osm,
  }) {
    return osm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Osm value)? osm,
  }) {
    return osm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Osm value)? osm,
    required TResult orElse(),
  }) {
    if (osm != null) {
      return osm(this);
    }
    return orElse();
  }
}

abstract class _Osm implements OsmMapState {
  const factory _Osm(
      {final bool loadingAddress,
      final List<Place>? places,
      final String? error}) = _$_Osm;

  @override
  bool get loadingAddress;
  @override
  List<Place>? get places;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_OsmCopyWith<_$_Osm> get copyWith => throw _privateConstructorUsedError;
}
