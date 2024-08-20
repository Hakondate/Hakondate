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
  TextEditingController get authorizationCodeController =>
      throw _privateConstructorUsedError;
  String get authorizationCode => throw _privateConstructorUsedError;
  String get statusMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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
      {TextEditingController authorizationCodeController,
      String authorizationCode,
      String statusMessage});
}

/// @nodoc
class _$AuthorizationStateCopyWithImpl<$Res, $Val extends AuthorizationState>
    implements $AuthorizationStateCopyWith<$Res> {
  _$AuthorizationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorizationCodeController = null,
    Object? authorizationCode = null,
    Object? statusMessage = null,
  }) {
    return _then(_value.copyWith(
      authorizationCodeController: null == authorizationCodeController
          ? _value.authorizationCodeController
          : authorizationCodeController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      authorizationCode: null == authorizationCode
          ? _value.authorizationCode
          : authorizationCode // ignore: cast_nullable_to_non_nullable
              as String,
      statusMessage: null == statusMessage
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
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
      {TextEditingController authorizationCodeController,
      String authorizationCode,
      String statusMessage});
}

/// @nodoc
class __$$AuthorizationStateImplCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res, _$AuthorizationStateImpl>
    implements _$$AuthorizationStateImplCopyWith<$Res> {
  __$$AuthorizationStateImplCopyWithImpl(_$AuthorizationStateImpl _value,
      $Res Function(_$AuthorizationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorizationCodeController = null,
    Object? authorizationCode = null,
    Object? statusMessage = null,
  }) {
    return _then(_$AuthorizationStateImpl(
      authorizationCodeController: null == authorizationCodeController
          ? _value.authorizationCodeController
          : authorizationCodeController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      authorizationCode: null == authorizationCode
          ? _value.authorizationCode
          : authorizationCode // ignore: cast_nullable_to_non_nullable
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
      {required this.authorizationCodeController,
      this.authorizationCode = '',
      this.statusMessage = ''});

  @override
  final TextEditingController authorizationCodeController;
  @override
  @JsonKey()
  final String authorizationCode;
  @override
  @JsonKey()
  final String statusMessage;

  @override
  String toString() {
    return 'AuthorizationState(authorizationCodeController: $authorizationCodeController, authorizationCode: $authorizationCode, statusMessage: $statusMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorizationStateImpl &&
            (identical(other.authorizationCodeController,
                    authorizationCodeController) ||
                other.authorizationCodeController ==
                    authorizationCodeController) &&
            (identical(other.authorizationCode, authorizationCode) ||
                other.authorizationCode == authorizationCode) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authorizationCodeController,
      authorizationCode, statusMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorizationStateImplCopyWith<_$AuthorizationStateImpl> get copyWith =>
      __$$AuthorizationStateImplCopyWithImpl<_$AuthorizationStateImpl>(
          this, _$identity);
}

abstract class _AuthorizationState implements AuthorizationState {
  const factory _AuthorizationState(
      {required final TextEditingController authorizationCodeController,
      final String authorizationCode,
      final String statusMessage}) = _$AuthorizationStateImpl;

  @override
  TextEditingController get authorizationCodeController;
  @override
  String get authorizationCode;
  @override
  String get statusMessage;
  @override
  @JsonKey(ignore: true)
  _$$AuthorizationStateImplCopyWith<_$AuthorizationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
