// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashState()';
}


}

/// @nodoc
class $SplashStateCopyWith<$Res>  {
$SplashStateCopyWith(SplashState _, $Res Function(SplashState) __);
}


/// Adds pattern-matching-related methods to [SplashState].
extension SplashStatePatterns on SplashState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SplashStateLoad value)?  load,TResult Function( SplashStateError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SplashStateLoad() when load != null:
return load(_that);case SplashStateError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SplashStateLoad value)  load,required TResult Function( SplashStateError value)  error,}){
final _that = this;
switch (_that) {
case SplashStateLoad():
return load(_that);case SplashStateError():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SplashStateLoad value)?  load,TResult? Function( SplashStateError value)?  error,}){
final _that = this;
switch (_that) {
case SplashStateLoad() when load != null:
return load(_that);case SplashStateError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( LoadingStatus status)?  load,TResult Function( Exception error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SplashStateLoad() when load != null:
return load(_that.status);case SplashStateError() when error != null:
return error(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( LoadingStatus status)  load,required TResult Function( Exception error)  error,}) {final _that = this;
switch (_that) {
case SplashStateLoad():
return load(_that.status);case SplashStateError():
return error(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( LoadingStatus status)?  load,TResult? Function( Exception error)?  error,}) {final _that = this;
switch (_that) {
case SplashStateLoad() when load != null:
return load(_that.status);case SplashStateError() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class SplashStateLoad implements SplashState {
  const SplashStateLoad({required this.status});
  

 final  LoadingStatus status;

/// Create a copy of SplashState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SplashStateLoadCopyWith<SplashStateLoad> get copyWith => _$SplashStateLoadCopyWithImpl<SplashStateLoad>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashStateLoad&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'SplashState.load(status: $status)';
}


}

/// @nodoc
abstract mixin class $SplashStateLoadCopyWith<$Res> implements $SplashStateCopyWith<$Res> {
  factory $SplashStateLoadCopyWith(SplashStateLoad value, $Res Function(SplashStateLoad) _then) = _$SplashStateLoadCopyWithImpl;
@useResult
$Res call({
 LoadingStatus status
});




}
/// @nodoc
class _$SplashStateLoadCopyWithImpl<$Res>
    implements $SplashStateLoadCopyWith<$Res> {
  _$SplashStateLoadCopyWithImpl(this._self, this._then);

  final SplashStateLoad _self;
  final $Res Function(SplashStateLoad) _then;

/// Create a copy of SplashState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(SplashStateLoad(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as LoadingStatus,
  ));
}


}

/// @nodoc


class SplashStateError implements SplashState {
  const SplashStateError({required this.error});
  

 final  Exception error;

/// Create a copy of SplashState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SplashStateErrorCopyWith<SplashStateError> get copyWith => _$SplashStateErrorCopyWithImpl<SplashStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashStateError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'SplashState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $SplashStateErrorCopyWith<$Res> implements $SplashStateCopyWith<$Res> {
  factory $SplashStateErrorCopyWith(SplashStateError value, $Res Function(SplashStateError) _then) = _$SplashStateErrorCopyWithImpl;
@useResult
$Res call({
 Exception error
});




}
/// @nodoc
class _$SplashStateErrorCopyWithImpl<$Res>
    implements $SplashStateErrorCopyWith<$Res> {
  _$SplashStateErrorCopyWithImpl(this._self, this._then);

  final SplashStateError _self;
  final $Res Function(SplashStateError) _then;

/// Create a copy of SplashState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(SplashStateError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

// dart format on
