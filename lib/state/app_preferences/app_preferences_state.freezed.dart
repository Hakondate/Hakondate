// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_preferences_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppPreferencesState {

 bool get isReviewPopupDenied;
/// Create a copy of AppPreferencesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppPreferencesStateCopyWith<AppPreferencesState> get copyWith => _$AppPreferencesStateCopyWithImpl<AppPreferencesState>(this as AppPreferencesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppPreferencesState&&(identical(other.isReviewPopupDenied, isReviewPopupDenied) || other.isReviewPopupDenied == isReviewPopupDenied));
}


@override
int get hashCode => Object.hash(runtimeType,isReviewPopupDenied);

@override
String toString() {
  return 'AppPreferencesState(isReviewPopupDenied: $isReviewPopupDenied)';
}


}

/// @nodoc
abstract mixin class $AppPreferencesStateCopyWith<$Res>  {
  factory $AppPreferencesStateCopyWith(AppPreferencesState value, $Res Function(AppPreferencesState) _then) = _$AppPreferencesStateCopyWithImpl;
@useResult
$Res call({
 bool isReviewPopupDenied
});




}
/// @nodoc
class _$AppPreferencesStateCopyWithImpl<$Res>
    implements $AppPreferencesStateCopyWith<$Res> {
  _$AppPreferencesStateCopyWithImpl(this._self, this._then);

  final AppPreferencesState _self;
  final $Res Function(AppPreferencesState) _then;

/// Create a copy of AppPreferencesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isReviewPopupDenied = null,}) {
  return _then(_self.copyWith(
isReviewPopupDenied: null == isReviewPopupDenied ? _self.isReviewPopupDenied : isReviewPopupDenied // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AppPreferencesState].
extension AppPreferencesStatePatterns on AppPreferencesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppPreferencesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppPreferencesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppPreferencesState value)  $default,){
final _that = this;
switch (_that) {
case _AppPreferencesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppPreferencesState value)?  $default,){
final _that = this;
switch (_that) {
case _AppPreferencesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isReviewPopupDenied)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppPreferencesState() when $default != null:
return $default(_that.isReviewPopupDenied);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isReviewPopupDenied)  $default,) {final _that = this;
switch (_that) {
case _AppPreferencesState():
return $default(_that.isReviewPopupDenied);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isReviewPopupDenied)?  $default,) {final _that = this;
switch (_that) {
case _AppPreferencesState() when $default != null:
return $default(_that.isReviewPopupDenied);case _:
  return null;

}
}

}

/// @nodoc


class _AppPreferencesState implements AppPreferencesState {
  const _AppPreferencesState({this.isReviewPopupDenied = false});
  

@override@JsonKey() final  bool isReviewPopupDenied;

/// Create a copy of AppPreferencesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppPreferencesStateCopyWith<_AppPreferencesState> get copyWith => __$AppPreferencesStateCopyWithImpl<_AppPreferencesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppPreferencesState&&(identical(other.isReviewPopupDenied, isReviewPopupDenied) || other.isReviewPopupDenied == isReviewPopupDenied));
}


@override
int get hashCode => Object.hash(runtimeType,isReviewPopupDenied);

@override
String toString() {
  return 'AppPreferencesState(isReviewPopupDenied: $isReviewPopupDenied)';
}


}

/// @nodoc
abstract mixin class _$AppPreferencesStateCopyWith<$Res> implements $AppPreferencesStateCopyWith<$Res> {
  factory _$AppPreferencesStateCopyWith(_AppPreferencesState value, $Res Function(_AppPreferencesState) _then) = __$AppPreferencesStateCopyWithImpl;
@override @useResult
$Res call({
 bool isReviewPopupDenied
});




}
/// @nodoc
class __$AppPreferencesStateCopyWithImpl<$Res>
    implements _$AppPreferencesStateCopyWith<$Res> {
  __$AppPreferencesStateCopyWithImpl(this._self, this._then);

  final _AppPreferencesState _self;
  final $Res Function(_AppPreferencesState) _then;

/// Create a copy of AppPreferencesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isReviewPopupDenied = null,}) {
  return _then(_AppPreferencesState(
isReviewPopupDenied: null == isReviewPopupDenied ? _self.isReviewPopupDenied : isReviewPopupDenied // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
