// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserSettingsState {
  List<UserModel>? get users => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserSettingsStateCopyWith<UserSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSettingsStateCopyWith<$Res> {
  factory $UserSettingsStateCopyWith(
          UserSettingsState value, $Res Function(UserSettingsState) then) =
      _$UserSettingsStateCopyWithImpl<$Res, UserSettingsState>;
  @useResult
  $Res call({List<UserModel>? users});
}

/// @nodoc
class _$UserSettingsStateCopyWithImpl<$Res, $Val extends UserSettingsState>
    implements $UserSettingsStateCopyWith<$Res> {
  _$UserSettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(_value.copyWith(
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserSettingsStateImplCopyWith<$Res>
    implements $UserSettingsStateCopyWith<$Res> {
  factory _$$UserSettingsStateImplCopyWith(_$UserSettingsStateImpl value,
          $Res Function(_$UserSettingsStateImpl) then) =
      __$$UserSettingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserModel>? users});
}

/// @nodoc
class __$$UserSettingsStateImplCopyWithImpl<$Res>
    extends _$UserSettingsStateCopyWithImpl<$Res, _$UserSettingsStateImpl>
    implements _$$UserSettingsStateImplCopyWith<$Res> {
  __$$UserSettingsStateImplCopyWithImpl(_$UserSettingsStateImpl _value,
      $Res Function(_$UserSettingsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(_$UserSettingsStateImpl(
      users: freezed == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
    ));
  }
}

/// @nodoc

class _$UserSettingsStateImpl implements _UserSettingsState {
  const _$UserSettingsStateImpl({final List<UserModel>? users})
      : _users = users;

  final List<UserModel>? _users;
  @override
  List<UserModel>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserSettingsState(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSettingsStateImpl &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSettingsStateImplCopyWith<_$UserSettingsStateImpl> get copyWith =>
      __$$UserSettingsStateImplCopyWithImpl<_$UserSettingsStateImpl>(
          this, _$identity);
}

abstract class _UserSettingsState implements UserSettingsState {
  const factory _UserSettingsState({final List<UserModel>? users}) =
      _$UserSettingsStateImpl;

  @override
  List<UserModel>? get users;
  @override
  @JsonKey(ignore: true)
  _$$UserSettingsStateImplCopyWith<_$UserSettingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
