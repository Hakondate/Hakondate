// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SplashState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SplashState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SplashState()';
  }
}

/// @nodoc
class $SplashStateCopyWith<$Res> {
  $SplashStateCopyWith(SplashState _, $Res Function(SplashState) __);
}

/// @nodoc

class SplashStateLoad implements SplashState {
  const SplashStateLoad({required this.status});

  final LoadingStatus status;

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SplashStateLoadCopyWith<SplashStateLoad> get copyWith =>
      _$SplashStateLoadCopyWithImpl<SplashStateLoad>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SplashStateLoad &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @override
  String toString() {
    return 'SplashState.load(status: $status)';
  }
}

/// @nodoc
abstract mixin class $SplashStateLoadCopyWith<$Res>
    implements $SplashStateCopyWith<$Res> {
  factory $SplashStateLoadCopyWith(
          SplashStateLoad value, $Res Function(SplashStateLoad) _then) =
      _$SplashStateLoadCopyWithImpl;
  @useResult
  $Res call({LoadingStatus status});
}

/// @nodoc
class _$SplashStateLoadCopyWithImpl<$Res>
    implements $SplashStateLoadCopyWith<$Res> {
  _$SplashStateLoadCopyWithImpl(this._self, this._then);

  final SplashStateLoad _self;
  final $Res Function(SplashStateLoad) _then;

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
  }) {
    return _then(SplashStateLoad(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
    ));
  }
}

/// @nodoc

class SplashStateError implements SplashState {
  const SplashStateError({required this.error});

  final Exception error;

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SplashStateErrorCopyWith<SplashStateError> get copyWith =>
      _$SplashStateErrorCopyWithImpl<SplashStateError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SplashStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'SplashState.error(error: $error)';
  }
}

/// @nodoc
abstract mixin class $SplashStateErrorCopyWith<$Res>
    implements $SplashStateCopyWith<$Res> {
  factory $SplashStateErrorCopyWith(
          SplashStateError value, $Res Function(SplashStateError) _then) =
      _$SplashStateErrorCopyWithImpl;
  @useResult
  $Res call({Exception error});
}

/// @nodoc
class _$SplashStateErrorCopyWithImpl<$Res>
    implements $SplashStateErrorCopyWith<$Res> {
  _$SplashStateErrorCopyWithImpl(this._self, this._then);

  final SplashStateError _self;
  final $Res Function(SplashStateError) _then;

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(SplashStateError(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

// dart format on
