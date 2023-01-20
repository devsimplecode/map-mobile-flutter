// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloc_check_internet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventCheckInternet {
  ConnectionStatus? get connection => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ConnectionStatus? connection) listenError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConnectionStatus? connection)? listenError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConnectionStatus? connection)? listenError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListenError value) listenError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ListenError value)? listenError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListenError value)? listenError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventCheckInternetCopyWith<EventCheckInternet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCheckInternetCopyWith<$Res> {
  factory $EventCheckInternetCopyWith(
          EventCheckInternet value, $Res Function(EventCheckInternet) then) =
      _$EventCheckInternetCopyWithImpl<$Res, EventCheckInternet>;
  @useResult
  $Res call({ConnectionStatus? connection});
}

/// @nodoc
class _$EventCheckInternetCopyWithImpl<$Res, $Val extends EventCheckInternet>
    implements $EventCheckInternetCopyWith<$Res> {
  _$EventCheckInternetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connection = freezed,
  }) {
    return _then(_value.copyWith(
      connection: freezed == connection
          ? _value.connection
          : connection // ignore: cast_nullable_to_non_nullable
              as ConnectionStatus?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListenErrorCopyWith<$Res>
    implements $EventCheckInternetCopyWith<$Res> {
  factory _$$_ListenErrorCopyWith(
          _$_ListenError value, $Res Function(_$_ListenError) then) =
      __$$_ListenErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ConnectionStatus? connection});
}

/// @nodoc
class __$$_ListenErrorCopyWithImpl<$Res>
    extends _$EventCheckInternetCopyWithImpl<$Res, _$_ListenError>
    implements _$$_ListenErrorCopyWith<$Res> {
  __$$_ListenErrorCopyWithImpl(
      _$_ListenError _value, $Res Function(_$_ListenError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connection = freezed,
  }) {
    return _then(_$_ListenError(
      connection: freezed == connection
          ? _value.connection
          : connection // ignore: cast_nullable_to_non_nullable
              as ConnectionStatus?,
    ));
  }
}

/// @nodoc

class _$_ListenError extends _ListenError {
  const _$_ListenError({this.connection}) : super._();

  @override
  final ConnectionStatus? connection;

  @override
  String toString() {
    return 'EventCheckInternet.listenError(connection: $connection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListenError &&
            (identical(other.connection, connection) ||
                other.connection == connection));
  }

  @override
  int get hashCode => Object.hash(runtimeType, connection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListenErrorCopyWith<_$_ListenError> get copyWith =>
      __$$_ListenErrorCopyWithImpl<_$_ListenError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ConnectionStatus? connection) listenError,
  }) {
    return listenError(connection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConnectionStatus? connection)? listenError,
  }) {
    return listenError?.call(connection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConnectionStatus? connection)? listenError,
    required TResult orElse(),
  }) {
    if (listenError != null) {
      return listenError(connection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListenError value) listenError,
  }) {
    return listenError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ListenError value)? listenError,
  }) {
    return listenError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListenError value)? listenError,
    required TResult orElse(),
  }) {
    if (listenError != null) {
      return listenError(this);
    }
    return orElse();
  }
}

abstract class _ListenError extends EventCheckInternet {
  const factory _ListenError({final ConnectionStatus? connection}) =
      _$_ListenError;
  const _ListenError._() : super._();

  @override
  ConnectionStatus? get connection;
  @override
  @JsonKey(ignore: true)
  _$$_ListenErrorCopyWith<_$_ListenError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StateCheckInternet {
  ConnectionStatus? get connection => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ConnectionStatus? connection) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConnectionStatus? connection)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConnectionStatus? connection)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StateCheckInternetCopyWith<StateCheckInternet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateCheckInternetCopyWith<$Res> {
  factory $StateCheckInternetCopyWith(
          StateCheckInternet value, $Res Function(StateCheckInternet) then) =
      _$StateCheckInternetCopyWithImpl<$Res, StateCheckInternet>;
  @useResult
  $Res call({ConnectionStatus? connection});
}

/// @nodoc
class _$StateCheckInternetCopyWithImpl<$Res, $Val extends StateCheckInternet>
    implements $StateCheckInternetCopyWith<$Res> {
  _$StateCheckInternetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connection = freezed,
  }) {
    return _then(_value.copyWith(
      connection: freezed == connection
          ? _value.connection
          : connection // ignore: cast_nullable_to_non_nullable
              as ConnectionStatus?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res>
    implements $StateCheckInternetCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ConnectionStatus? connection});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$StateCheckInternetCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connection = freezed,
  }) {
    return _then(_$_Error(
      connection: freezed == connection
          ? _value.connection
          : connection // ignore: cast_nullable_to_non_nullable
              as ConnectionStatus?,
    ));
  }
}

/// @nodoc

class _$_Error extends _Error {
  const _$_Error({required this.connection}) : super._();

  @override
  final ConnectionStatus? connection;

  @override
  String toString() {
    return 'StateCheckInternet.error(connection: $connection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.connection, connection) ||
                other.connection == connection));
  }

  @override
  int get hashCode => Object.hash(runtimeType, connection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ConnectionStatus? connection) error,
  }) {
    return error(connection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConnectionStatus? connection)? error,
  }) {
    return error?.call(connection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConnectionStatus? connection)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(connection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends StateCheckInternet {
  const factory _Error({required final ConnectionStatus? connection}) =
      _$_Error;
  const _Error._() : super._();

  @override
  ConnectionStatus? get connection;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
