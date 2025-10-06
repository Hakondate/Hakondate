// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authorization_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthorizationState {
  SchoolModel get school;
  String get authorizationKey;
  String get statusMessage;

  /// Create a copy of AuthorizationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthorizationStateCopyWith<AuthorizationState> get copyWith =>
      _$AuthorizationStateCopyWithImpl<AuthorizationState>(
          this as AuthorizationState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthorizationState &&
            (identical(other.school, school) || other.school == school) &&
            (identical(other.authorizationKey, authorizationKey) ||
                other.authorizationKey == authorizationKey) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, school, authorizationKey, statusMessage);

  @override
  String toString() {
    return 'AuthorizationState(school: $school, authorizationKey: $authorizationKey, statusMessage: $statusMessage)';
  }
}

/// @nodoc
abstract mixin class $AuthorizationStateCopyWith<$Res> {
  factory $AuthorizationStateCopyWith(
          AuthorizationState value, $Res Function(AuthorizationState) _then) =
      _$AuthorizationStateCopyWithImpl;
  @useResult
  $Res call(
      {SchoolModel school, String authorizationKey, String statusMessage});

  $SchoolModelCopyWith<$Res> get school;
}

/// @nodoc
class _$AuthorizationStateCopyWithImpl<$Res>
    implements $AuthorizationStateCopyWith<$Res> {
  _$AuthorizationStateCopyWithImpl(this._self, this._then);

  final AuthorizationState _self;
  final $Res Function(AuthorizationState) _then;

  /// Create a copy of AuthorizationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? school = null,
    Object? authorizationKey = null,
    Object? statusMessage = null,
  }) {
    return _then(_self.copyWith(
      school: null == school
          ? _self.school
          : school // ignore: cast_nullable_to_non_nullable
              as SchoolModel,
      authorizationKey: null == authorizationKey
          ? _self.authorizationKey
          : authorizationKey // ignore: cast_nullable_to_non_nullable
              as String,
      statusMessage: null == statusMessage
          ? _self.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of AuthorizationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SchoolModelCopyWith<$Res> get school {
    return $SchoolModelCopyWith<$Res>(_self.school, (value) {
      return _then(_self.copyWith(school: value));
    });
  }
}

/// @nodoc

class _AuthorizationState implements AuthorizationState {
  const _AuthorizationState(
      {required this.school,
      this.authorizationKey = '',
      this.statusMessage = ''});

  @override
  final SchoolModel school;
  @override
  @JsonKey()
  final String authorizationKey;
  @override
  @JsonKey()
  final String statusMessage;

  /// Create a copy of AuthorizationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AuthorizationStateCopyWith<_AuthorizationState> get copyWith =>
      __$AuthorizationStateCopyWithImpl<_AuthorizationState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthorizationState &&
            (identical(other.school, school) || other.school == school) &&
            (identical(other.authorizationKey, authorizationKey) ||
                other.authorizationKey == authorizationKey) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, school, authorizationKey, statusMessage);

  @override
  String toString() {
    return 'AuthorizationState(school: $school, authorizationKey: $authorizationKey, statusMessage: $statusMessage)';
  }
}

/// @nodoc
abstract mixin class _$AuthorizationStateCopyWith<$Res>
    implements $AuthorizationStateCopyWith<$Res> {
  factory _$AuthorizationStateCopyWith(
          _AuthorizationState value, $Res Function(_AuthorizationState) _then) =
      __$AuthorizationStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {SchoolModel school, String authorizationKey, String statusMessage});

  @override
  $SchoolModelCopyWith<$Res> get school;
}

/// @nodoc
class __$AuthorizationStateCopyWithImpl<$Res>
    implements _$AuthorizationStateCopyWith<$Res> {
  __$AuthorizationStateCopyWithImpl(this._self, this._then);

  final _AuthorizationState _self;
  final $Res Function(_AuthorizationState) _then;

  /// Create a copy of AuthorizationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? school = null,
    Object? authorizationKey = null,
    Object? statusMessage = null,
  }) {
    return _then(_AuthorizationState(
      school: null == school
          ? _self.school
          : school // ignore: cast_nullable_to_non_nullable
              as SchoolModel,
      authorizationKey: null == authorizationKey
          ? _self.authorizationKey
          : authorizationKey // ignore: cast_nullable_to_non_nullable
              as String,
      statusMessage: null == statusMessage
          ? _self.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of AuthorizationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SchoolModelCopyWith<$Res> get school {
    return $SchoolModelCopyWith<$Res>(_self.school, (value) {
      return _then(_self.copyWith(school: value));
    });
  }
}

// dart format on
