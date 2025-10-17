// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'terms_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TermsState implements DiagnosticableTreeMixin {

 bool get isAgree;
/// Create a copy of TermsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TermsStateCopyWith<TermsState> get copyWith => _$TermsStateCopyWithImpl<TermsState>(this as TermsState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TermsState'))
    ..add(DiagnosticsProperty('isAgree', isAgree));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TermsState&&(identical(other.isAgree, isAgree) || other.isAgree == isAgree));
}


@override
int get hashCode => Object.hash(runtimeType,isAgree);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TermsState(isAgree: $isAgree)';
}


}

/// @nodoc
abstract mixin class $TermsStateCopyWith<$Res>  {
  factory $TermsStateCopyWith(TermsState value, $Res Function(TermsState) _then) = _$TermsStateCopyWithImpl;
@useResult
$Res call({
 bool isAgree
});




}
/// @nodoc
class _$TermsStateCopyWithImpl<$Res>
    implements $TermsStateCopyWith<$Res> {
  _$TermsStateCopyWithImpl(this._self, this._then);

  final TermsState _self;
  final $Res Function(TermsState) _then;

/// Create a copy of TermsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isAgree = null,}) {
  return _then(_self.copyWith(
isAgree: null == isAgree ? _self.isAgree : isAgree // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [TermsState].
extension TermsStatePatterns on TermsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TermsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TermsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TermsState value)  $default,){
final _that = this;
switch (_that) {
case _TermsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TermsState value)?  $default,){
final _that = this;
switch (_that) {
case _TermsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isAgree)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TermsState() when $default != null:
return $default(_that.isAgree);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isAgree)  $default,) {final _that = this;
switch (_that) {
case _TermsState():
return $default(_that.isAgree);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isAgree)?  $default,) {final _that = this;
switch (_that) {
case _TermsState() when $default != null:
return $default(_that.isAgree);case _:
  return null;

}
}

}

/// @nodoc


class _TermsState with DiagnosticableTreeMixin implements TermsState {
  const _TermsState({this.isAgree = false});
  

@override@JsonKey() final  bool isAgree;

/// Create a copy of TermsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TermsStateCopyWith<_TermsState> get copyWith => __$TermsStateCopyWithImpl<_TermsState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TermsState'))
    ..add(DiagnosticsProperty('isAgree', isAgree));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TermsState&&(identical(other.isAgree, isAgree) || other.isAgree == isAgree));
}


@override
int get hashCode => Object.hash(runtimeType,isAgree);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TermsState(isAgree: $isAgree)';
}


}

/// @nodoc
abstract mixin class _$TermsStateCopyWith<$Res> implements $TermsStateCopyWith<$Res> {
  factory _$TermsStateCopyWith(_TermsState value, $Res Function(_TermsState) _then) = __$TermsStateCopyWithImpl;
@override @useResult
$Res call({
 bool isAgree
});




}
/// @nodoc
class __$TermsStateCopyWithImpl<$Res>
    implements _$TermsStateCopyWith<$Res> {
  __$TermsStateCopyWithImpl(this._self, this._then);

  final _TermsState _self;
  final $Res Function(_TermsState) _then;

/// Create a copy of TermsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isAgree = null,}) {
  return _then(_TermsState(
isAgree: null == isAgree ? _self.isAgree : isAgree // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
