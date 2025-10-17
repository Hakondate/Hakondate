// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserSettingsState {

 List<UserModel>? get users; UserModel? get editingUser;
/// Create a copy of UserSettingsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserSettingsStateCopyWith<UserSettingsState> get copyWith => _$UserSettingsStateCopyWithImpl<UserSettingsState>(this as UserSettingsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserSettingsState&&const DeepCollectionEquality().equals(other.users, users)&&(identical(other.editingUser, editingUser) || other.editingUser == editingUser));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(users),editingUser);

@override
String toString() {
  return 'UserSettingsState(users: $users, editingUser: $editingUser)';
}


}

/// @nodoc
abstract mixin class $UserSettingsStateCopyWith<$Res>  {
  factory $UserSettingsStateCopyWith(UserSettingsState value, $Res Function(UserSettingsState) _then) = _$UserSettingsStateCopyWithImpl;
@useResult
$Res call({
 List<UserModel>? users, UserModel? editingUser
});


$UserModelCopyWith<$Res>? get editingUser;

}
/// @nodoc
class _$UserSettingsStateCopyWithImpl<$Res>
    implements $UserSettingsStateCopyWith<$Res> {
  _$UserSettingsStateCopyWithImpl(this._self, this._then);

  final UserSettingsState _self;
  final $Res Function(UserSettingsState) _then;

/// Create a copy of UserSettingsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? users = freezed,Object? editingUser = freezed,}) {
  return _then(_self.copyWith(
users: freezed == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as List<UserModel>?,editingUser: freezed == editingUser ? _self.editingUser : editingUser // ignore: cast_nullable_to_non_nullable
as UserModel?,
  ));
}
/// Create a copy of UserSettingsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res>? get editingUser {
    if (_self.editingUser == null) {
    return null;
  }

  return $UserModelCopyWith<$Res>(_self.editingUser!, (value) {
    return _then(_self.copyWith(editingUser: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserSettingsState].
extension UserSettingsStatePatterns on UserSettingsState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserSettingsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserSettingsState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserSettingsState value)  $default,){
final _that = this;
switch (_that) {
case _UserSettingsState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserSettingsState value)?  $default,){
final _that = this;
switch (_that) {
case _UserSettingsState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<UserModel>? users,  UserModel? editingUser)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserSettingsState() when $default != null:
return $default(_that.users,_that.editingUser);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<UserModel>? users,  UserModel? editingUser)  $default,) {final _that = this;
switch (_that) {
case _UserSettingsState():
return $default(_that.users,_that.editingUser);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<UserModel>? users,  UserModel? editingUser)?  $default,) {final _that = this;
switch (_that) {
case _UserSettingsState() when $default != null:
return $default(_that.users,_that.editingUser);case _:
  return null;

}
}

}

/// @nodoc


class _UserSettingsState implements UserSettingsState {
  const _UserSettingsState({final  List<UserModel>? users, this.editingUser}): _users = users;
  

 final  List<UserModel>? _users;
@override List<UserModel>? get users {
  final value = _users;
  if (value == null) return null;
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  UserModel? editingUser;

/// Create a copy of UserSettingsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserSettingsStateCopyWith<_UserSettingsState> get copyWith => __$UserSettingsStateCopyWithImpl<_UserSettingsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserSettingsState&&const DeepCollectionEquality().equals(other._users, _users)&&(identical(other.editingUser, editingUser) || other.editingUser == editingUser));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_users),editingUser);

@override
String toString() {
  return 'UserSettingsState(users: $users, editingUser: $editingUser)';
}


}

/// @nodoc
abstract mixin class _$UserSettingsStateCopyWith<$Res> implements $UserSettingsStateCopyWith<$Res> {
  factory _$UserSettingsStateCopyWith(_UserSettingsState value, $Res Function(_UserSettingsState) _then) = __$UserSettingsStateCopyWithImpl;
@override @useResult
$Res call({
 List<UserModel>? users, UserModel? editingUser
});


@override $UserModelCopyWith<$Res>? get editingUser;

}
/// @nodoc
class __$UserSettingsStateCopyWithImpl<$Res>
    implements _$UserSettingsStateCopyWith<$Res> {
  __$UserSettingsStateCopyWithImpl(this._self, this._then);

  final _UserSettingsState _self;
  final $Res Function(_UserSettingsState) _then;

/// Create a copy of UserSettingsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? users = freezed,Object? editingUser = freezed,}) {
  return _then(_UserSettingsState(
users: freezed == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as List<UserModel>?,editingUser: freezed == editingUser ? _self.editingUser : editingUser // ignore: cast_nullable_to_non_nullable
as UserModel?,
  ));
}

/// Create a copy of UserSettingsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res>? get editingUser {
    if (_self.editingUser == null) {
    return null;
  }

  return $UserModelCopyWith<$Res>(_self.editingUser!, (value) {
    return _then(_self.copyWith(editingUser: value));
  });
}
}

// dart format on
