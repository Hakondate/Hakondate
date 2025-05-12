// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authorization_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthorizationState {
  SchoolModel get school => throw _privateConstructorUsedError;
  String get authorizationKey => throw _privateConstructorUsedError;
  String get statusMessage => throw _privateConstructorUsedError;

  /// Create a copy of AuthorizationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthorizationStateCopyWith<AuthorizationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationStateCopyWith<$Res> {
  factory $AuthorizationStateCopyWith(
          AuthorizationState value, $Res Function(AuthorizationState) then) =
      _$AuthorizationStateCopyWithImpl<$Res, AuthorizationState>;
  @useResult
  $Res call(
      {SchoolModel school, String authorizationKey, String statusMessage});

  $SchoolModelCopyWith<$Res> get school;
}

/// @nodoc
class _$AuthorizationStateCopyWithImpl<$Res, $Val extends AuthorizationState>
    implements $AuthorizationStateCopyWith<$Res> {
  _$AuthorizationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthorizationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? school = null,
    Object? authorizationKey = null,
    Object? statusMessage = null,
  }) {
    return _then(_value.copyWith(
      school: null == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as SchoolModel,
      authorizationKey: null == authorizationKey
          ? _value.authorizationKey
          : authorizationKey // ignore: cast_nullable_to_non_nullable
              as String,
      statusMessage: null == statusMessage
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of AuthorizationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SchoolModelCopyWith<$Res> get school {
    return $SchoolModelCopyWith<$Res>(_value.school, (value) {
      return _then(_value.copyWith(school: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthorizationStateImplCopyWith<$Res>
    implements $AuthorizationStateCopyWith<$Res> {
  factory _$$AuthorizationStateImplCopyWith(_$AuthorizationStateImpl value,
          $Res Function(_$AuthorizationStateImpl) then) =
      __$$AuthorizationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SchoolModel school, String authorizationKey, String statusMessage});

  @override
  $SchoolModelCopyWith<$Res> get school;
}

/// @nodoc
class __$$AuthorizationStateImplCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res, _$AuthorizationStateImpl>
    implements _$$AuthorizationStateImplCopyWith<$Res> {
  __$$AuthorizationStateImplCopyWithImpl(_$AuthorizationStateImpl _value,
      $Res Function(_$AuthorizationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthorizationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? school = null,
    Object? authorizationKey = null,
    Object? statusMessage = null,
  }) {
    return _then(_$AuthorizationStateImpl(
      school: null == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as SchoolModel,
      authorizationKey: null == authorizationKey
          ? _value.authorizationKey
          : authorizationKey // ignore: cast_nullable_to_non_nullable
              as String,
      statusMessage: null == statusMessage
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthorizationStateImpl implements _AuthorizationState {
  const _$AuthorizationStateImpl(
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

  @override
  String toString() {
    return 'AuthorizationState(school: $school, authorizationKey: $authorizationKey, statusMessage: $statusMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorizationStateImpl &&
            (identical(other.school, school) || other.school == school) &&
            (identical(other.authorizationKey, authorizationKey) ||
                other.authorizationKey == authorizationKey) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, school, authorizationKey, statusMessage);

  /// Create a copy of AuthorizationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorizationStateImplCopyWith<_$AuthorizationStateImpl> get copyWith =>
      __$$AuthorizationStateImplCopyWithImpl<_$AuthorizationStateImpl>(
          this, _$identity);
}

abstract class _AuthorizationState implements AuthorizationState {
  const factory _AuthorizationState(
      {required final SchoolModel school,
      final String authorizationKey,
      final String statusMessage}) = _$AuthorizationStateImpl;

  @override
  SchoolModel get school;
  @override
  String get authorizationKey;
  @override
  String get statusMessage;

  /// Create a copy of AuthorizationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthorizationStateImplCopyWith<_$AuthorizationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
