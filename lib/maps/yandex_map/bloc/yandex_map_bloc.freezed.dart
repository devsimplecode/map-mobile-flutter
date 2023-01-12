// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'yandex_map_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$YandexMapEvent {
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
  $YandexMapEventCopyWith<YandexMapEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YandexMapEventCopyWith<$Res> {
  factory $YandexMapEventCopyWith(
          YandexMapEvent value, $Res Function(YandexMapEvent) then) =
      _$YandexMapEventCopyWithImpl<$Res, YandexMapEvent>;
  @useResult
  $Res call({String search});
}

/// @nodoc
class _$YandexMapEventCopyWithImpl<$Res, $Val extends YandexMapEvent>
    implements $YandexMapEventCopyWith<$Res> {
  _$YandexMapEventCopyWithImpl(this._value, this._then);

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
    implements $YandexMapEventCopyWith<$Res> {
  factory _$$_SearchAddressCopyWith(
          _$_SearchAddress value, $Res Function(_$_SearchAddress) then) =
      __$$_SearchAddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String search});
}

/// @nodoc
class __$$_SearchAddressCopyWithImpl<$Res>
    extends _$YandexMapEventCopyWithImpl<$Res, _$_SearchAddress>
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
    return 'YandexMapEvent.searchAddress(search: $search)';
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

abstract class _SearchAddress implements YandexMapEvent {
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
mixin _$YandexMapState {
  List<Place>? get places => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Place>? places, String? error) yandex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Place>? places, String? error)? yandex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Place>? places, String? error)? yandex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Yandex value) yandex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Yandex value)? yandex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Yandex value)? yandex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $YandexMapStateCopyWith<YandexMapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YandexMapStateCopyWith<$Res> {
  factory $YandexMapStateCopyWith(
          YandexMapState value, $Res Function(YandexMapState) then) =
      _$YandexMapStateCopyWithImpl<$Res, YandexMapState>;
  @useResult
  $Res call({List<Place>? places, String? error});
}

/// @nodoc
class _$YandexMapStateCopyWithImpl<$Res, $Val extends YandexMapState>
    implements $YandexMapStateCopyWith<$Res> {
  _$YandexMapStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_YandexCopyWith<$Res>
    implements $YandexMapStateCopyWith<$Res> {
  factory _$$_YandexCopyWith(_$_Yandex value, $Res Function(_$_Yandex) then) =
      __$$_YandexCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Place>? places, String? error});
}

/// @nodoc
class __$$_YandexCopyWithImpl<$Res>
    extends _$YandexMapStateCopyWithImpl<$Res, _$_Yandex>
    implements _$$_YandexCopyWith<$Res> {
  __$$_YandexCopyWithImpl(_$_Yandex _value, $Res Function(_$_Yandex) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_Yandex(
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

class _$_Yandex implements _Yandex {
  const _$_Yandex({final List<Place>? places, this.error}) : _places = places;

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
    return 'YandexMapState.yandex(places: $places, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Yandex &&
            const DeepCollectionEquality().equals(other._places, _places) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_places), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_YandexCopyWith<_$_Yandex> get copyWith =>
      __$$_YandexCopyWithImpl<_$_Yandex>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Place>? places, String? error) yandex,
  }) {
    return yandex(places, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Place>? places, String? error)? yandex,
  }) {
    return yandex?.call(places, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Place>? places, String? error)? yandex,
    required TResult orElse(),
  }) {
    if (yandex != null) {
      return yandex(places, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Yandex value) yandex,
  }) {
    return yandex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Yandex value)? yandex,
  }) {
    return yandex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Yandex value)? yandex,
    required TResult orElse(),
  }) {
    if (yandex != null) {
      return yandex(this);
    }
    return orElse();
  }
}

abstract class _Yandex implements YandexMapState {
  const factory _Yandex({final List<Place>? places, final String? error}) =
      _$_Yandex;

  @override
  List<Place>? get places;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_YandexCopyWith<_$_Yandex> get copyWith =>
      throw _privateConstructorUsedError;
}
