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
  UserModel? get editingUser => throw _privateConstructorUsedError;

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
abstract class _$$_UserSettingsStateCopyWith<$Res>
    implements $UserSettingsStateCopyWith<$Res> {
  factory _$$_UserSettingsStateCopyWith(_$_UserSettingsState value,
          $Res Function(_$_UserSettingsState) then) =
      __$$_UserSettingsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserModel>? users, UserModel? editingUser});

  @override
  $UserModelCopyWith<$Res>? get editingUser;
}

/// @nodoc
class __$$_UserSettingsStateCopyWithImpl<$Res>
    extends _$UserSettingsStateCopyWithImpl<$Res, _$_UserSettingsState>
    implements _$$_UserSettingsStateCopyWith<$Res> {
  __$$_UserSettingsStateCopyWithImpl(
      _$_UserSettingsState _value, $Res Function(_$_UserSettingsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = freezed,
    Object? editingUser = freezed,
  }) {
    return _then(_$_UserSettingsState(
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

class _$_UserSettingsState implements _UserSettingsState {
  const _$_UserSettingsState({final List<UserModel>? users, this.editingUser})
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserSettingsState &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.editingUser, editingUser) ||
                other.editingUser == editingUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_users), editingUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserSettingsStateCopyWith<_$_UserSettingsState> get copyWith =>
      __$$_UserSettingsStateCopyWithImpl<_$_UserSettingsState>(
          this, _$identity);
}

abstract class _UserSettingsState implements UserSettingsState {
  const factory _UserSettingsState(
      {final List<UserModel>? users,
      final UserModel? editingUser}) = _$_UserSettingsState;

  @override
  List<UserModel>? get users;
  @override
  UserModel? get editingUser;
  @override
  @JsonKey(ignore: true)
  _$$_UserSettingsStateCopyWith<_$_UserSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}
