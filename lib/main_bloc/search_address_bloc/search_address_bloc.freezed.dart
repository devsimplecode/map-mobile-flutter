// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_address_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchAddressEvent {
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
  $SearchAddressEventCopyWith<SearchAddressEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchAddressEventCopyWith<$Res> {
  factory $SearchAddressEventCopyWith(
          SearchAddressEvent value, $Res Function(SearchAddressEvent) then) =
      _$SearchAddressEventCopyWithImpl<$Res, SearchAddressEvent>;
  @useResult
  $Res call({String search});
}

/// @nodoc
class _$SearchAddressEventCopyWithImpl<$Res, $Val extends SearchAddressEvent>
    implements $SearchAddressEventCopyWith<$Res> {
  _$SearchAddressEventCopyWithImpl(this._value, this._then);

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
    implements $SearchAddressEventCopyWith<$Res> {
  factory _$$_SearchAddressCopyWith(
          _$_SearchAddress value, $Res Function(_$_SearchAddress) then) =
      __$$_SearchAddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String search});
}

/// @nodoc
class __$$_SearchAddressCopyWithImpl<$Res>
    extends _$SearchAddressEventCopyWithImpl<$Res, _$_SearchAddress>
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
    return 'SearchAddressEvent.searchAddress(search: $search)';
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

abstract class _SearchAddress implements SearchAddressEvent {
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
mixin _$SearchAddressState {
  bool get loadingAddress => throw _privateConstructorUsedError;
  List<PlaceSearch>? get places => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool loadingAddress, List<PlaceSearch>? places, String? error)
        address,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool loadingAddress, List<PlaceSearch>? places, String? error)?
        address,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool loadingAddress, List<PlaceSearch>? places, String? error)?
        address,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Google value) address,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Google value)? address,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Google value)? address,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchAddressStateCopyWith<SearchAddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchAddressStateCopyWith<$Res> {
  factory $SearchAddressStateCopyWith(
          SearchAddressState value, $Res Function(SearchAddressState) then) =
      _$SearchAddressStateCopyWithImpl<$Res, SearchAddressState>;
  @useResult
  $Res call({bool loadingAddress, List<PlaceSearch>? places, String? error});
}

/// @nodoc
class _$SearchAddressStateCopyWithImpl<$Res, $Val extends SearchAddressState>
    implements $SearchAddressStateCopyWith<$Res> {
  _$SearchAddressStateCopyWithImpl(this._value, this._then);

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
              as List<PlaceSearch>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GoogleCopyWith<$Res>
    implements $SearchAddressStateCopyWith<$Res> {
  factory _$$_GoogleCopyWith(_$_Google value, $Res Function(_$_Google) then) =
      __$$_GoogleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loadingAddress, List<PlaceSearch>? places, String? error});
}

/// @nodoc
class __$$_GoogleCopyWithImpl<$Res>
    extends _$SearchAddressStateCopyWithImpl<$Res, _$_Google>
    implements _$$_GoogleCopyWith<$Res> {
  __$$_GoogleCopyWithImpl(_$_Google _value, $Res Function(_$_Google) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingAddress = null,
    Object? places = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_Google(
      loadingAddress: null == loadingAddress
          ? _value.loadingAddress
          : loadingAddress // ignore: cast_nullable_to_non_nullable
              as bool,
      places: freezed == places
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<PlaceSearch>?,
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
      {this.loadingAddress = false,
      final List<PlaceSearch>? places,
      this.error})
      : _places = places;

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

  @override
  final String? error;

  @override
  String toString() {
    return 'SearchAddressState.address(loadingAddress: $loadingAddress, places: $places, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Google &&
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
  _$$_GoogleCopyWith<_$_Google> get copyWith =>
      __$$_GoogleCopyWithImpl<_$_Google>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool loadingAddress, List<PlaceSearch>? places, String? error)
        address,
  }) {
    return address(loadingAddress, places, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool loadingAddress, List<PlaceSearch>? places, String? error)?
        address,
  }) {
    return address?.call(loadingAddress, places, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool loadingAddress, List<PlaceSearch>? places, String? error)?
        address,
    required TResult orElse(),
  }) {
    if (address != null) {
      return address(loadingAddress, places, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Google value) address,
  }) {
    return address(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Google value)? address,
  }) {
    return address?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Google value)? address,
    required TResult orElse(),
  }) {
    if (address != null) {
      return address(this);
    }
    return orElse();
  }
}

abstract class _Google implements SearchAddressState {
  const factory _Google(
      {final bool loadingAddress,
      final List<PlaceSearch>? places,
      final String? error}) = _$_Google;

  @override
  bool get loadingAddress;
  @override
  List<PlaceSearch>? get places;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_GoogleCopyWith<_$_Google> get copyWith =>
      throw _privateConstructorUsedError;
}
