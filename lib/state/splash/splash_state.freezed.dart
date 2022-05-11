// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'splash_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SplashState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoadingStatus status) load,
    required TResult Function(Exception error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LoadingStatus status)? load,
    TResult Function(Exception error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoadingStatus status)? load,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashStateLoad value) load,
    required TResult Function(SplashStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SplashStateLoad value)? load,
    TResult Function(SplashStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashStateLoad value)? load,
    TResult Function(SplashStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res> implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  final SplashState _value;
  // ignore: unused_field
  final $Res Function(SplashState) _then;
}

/// @nodoc
abstract class $SplashStateLoadCopyWith<$Res> {
  factory $SplashStateLoadCopyWith(
          SplashStateLoad value, $Res Function(SplashStateLoad) then) =
      _$SplashStateLoadCopyWithImpl<$Res>;
  $Res call({LoadingStatus status});
}

/// @nodoc
class _$SplashStateLoadCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res>
    implements $SplashStateLoadCopyWith<$Res> {
  _$SplashStateLoadCopyWithImpl(
      SplashStateLoad _value, $Res Function(SplashStateLoad) _then)
      : super(_value, (v) => _then(v as SplashStateLoad));

  @override
  SplashStateLoad get _value => super._value as SplashStateLoad;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(SplashStateLoad(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
    ));
  }
}

/// @nodoc

class _$SplashStateLoad implements SplashStateLoad {
  const _$SplashStateLoad({required this.status});

  @override
  final LoadingStatus status;

  @override
  String toString() {
    return 'SplashState.load(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SplashStateLoad &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  $SplashStateLoadCopyWith<SplashStateLoad> get copyWith =>
      _$SplashStateLoadCopyWithImpl<SplashStateLoad>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoadingStatus status) load,
    required TResult Function(Exception error) error,
  }) {
    return load(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LoadingStatus status)? load,
    TResult Function(Exception error)? error,
  }) {
    return load?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoadingStatus status)? load,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashStateLoad value) load,
    required TResult Function(SplashStateError value) error,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SplashStateLoad value)? load,
    TResult Function(SplashStateError value)? error,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashStateLoad value)? load,
    TResult Function(SplashStateError value)? error,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class SplashStateLoad implements SplashState {
  const factory SplashStateLoad({required final LoadingStatus status}) =
      _$SplashStateLoad;

  LoadingStatus get status => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SplashStateLoadCopyWith<SplashStateLoad> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashStateErrorCopyWith<$Res> {
  factory $SplashStateErrorCopyWith(
          SplashStateError value, $Res Function(SplashStateError) then) =
      _$SplashStateErrorCopyWithImpl<$Res>;
  $Res call({Exception error});
}

/// @nodoc
class _$SplashStateErrorCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res>
    implements $SplashStateErrorCopyWith<$Res> {
  _$SplashStateErrorCopyWithImpl(
      SplashStateError _value, $Res Function(SplashStateError) _then)
      : super(_value, (v) => _then(v as SplashStateError));

  @override
  SplashStateError get _value => super._value as SplashStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(SplashStateError(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$SplashStateError implements SplashStateError {
  const _$SplashStateError({required this.error});

  @override
  final Exception error;

  @override
  String toString() {
    return 'SplashState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SplashStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $SplashStateErrorCopyWith<SplashStateError> get copyWith =>
      _$SplashStateErrorCopyWithImpl<SplashStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoadingStatus status) load,
    required TResult Function(Exception error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LoadingStatus status)? load,
    TResult Function(Exception error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoadingStatus status)? load,
    TResult Function(Exception error)? error,
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
    required TResult Function(SplashStateLoad value) load,
    required TResult Function(SplashStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SplashStateLoad value)? load,
    TResult Function(SplashStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashStateLoad value)? load,
    TResult Function(SplashStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SplashStateError implements SplashState {
  const factory SplashStateError({required final Exception error}) =
      _$SplashStateError;

  Exception get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SplashStateErrorCopyWith<SplashStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
