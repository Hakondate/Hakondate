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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserSettingsState {
  List<UserModel>? get users => throw _privateConstructorUsedError;
  UserModel? get editingUser => throw _privateConstructorUsedError;

  /// Create a copy of UserSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserSettingsStateCopyWith<UserSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSettingsStateCopyWith<$Res> {
  factory $UserSettingsStateCopyWith(
          UserSettingsState value, $Res Function(UserSettingsState) then) =
      _$UserSettingsStateCopyWithImpl<$Res, UserSettingsState>;
  @useResult
  $Res call({List<UserModel>? users, UserModel? editingUser});

  $UserModelCopyWith<$Res>? get editingUser;
}

/// @nodoc
class _$UserSettingsStateCopyWithImpl<$Res, $Val extends UserSettingsState>
    implements $UserSettingsStateCopyWith<$Res> {
  _$UserSettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = freezed,
    Object? editingUser = freezed,
  }) {
    return _then(_value.copyWith(
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
      editingUser: freezed == editingUser
          ? _value.editingUser
          : editingUser // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ) as $Val);
  }

  /// Create a copy of UserSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get editingUser {
    if (_value.editingUser == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.editingUser!, (value) {
      return _then(_value.copyWith(editingUser: value) as $Val);
    });
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
  $Res call({List<UserModel>? users, UserModel? editingUser});

  @override
  $UserModelCopyWith<$Res>? get editingUser;
}

/// @nodoc
class __$$UserSettingsStateImplCopyWithImpl<$Res>
    extends _$UserSettingsStateCopyWithImpl<$Res, _$UserSettingsStateImpl>
    implements _$$UserSettingsStateImplCopyWith<$Res> {
  __$$UserSettingsStateImplCopyWithImpl(_$UserSettingsStateImpl _value,
      $Res Function(_$UserSettingsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = freezed,
    Object? editingUser = freezed,
  }) {
    return _then(_$UserSettingsStateImpl(
      users: freezed == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
      editingUser: freezed == editingUser
          ? _value.editingUser
          : editingUser // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc

class _$UserSettingsStateImpl implements _UserSettingsState {
  const _$UserSettingsStateImpl(
      {final List<UserModel>? users, this.editingUser})
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
  final UserModel? editingUser;

  @override
  String toString() {
    return 'UserSettingsState(users: $users, editingUser: $editingUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSettingsStateImpl &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.editingUser, editingUser) ||
                other.editingUser == editingUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_users), editingUser);

  /// Create a copy of UserSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSettingsStateImplCopyWith<_$UserSettingsStateImpl> get copyWith =>
      __$$UserSettingsStateImplCopyWithImpl<_$UserSettingsStateImpl>(
          this, _$identity);
}

abstract class _UserSettingsState implements UserSettingsState {
  const factory _UserSettingsState(
      {final List<UserModel>? users,
      final UserModel? editingUser}) = _$UserSettingsStateImpl;

  @override
  List<UserModel>? get users;
  @override
  UserModel? get editingUser;

  /// Create a copy of UserSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserSettingsStateImplCopyWith<_$UserSettingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
