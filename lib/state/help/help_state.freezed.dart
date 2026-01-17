// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'help_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HelpState implements DiagnosticableTreeMixin {

 SchoolGrade get schoolGrade;
/// Create a copy of HelpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HelpStateCopyWith<HelpState> get copyWith => _$HelpStateCopyWithImpl<HelpState>(this as HelpState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HelpState'))
    ..add(DiagnosticsProperty('schoolGrade', schoolGrade));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HelpState&&(identical(other.schoolGrade, schoolGrade) || other.schoolGrade == schoolGrade));
}


@override
int get hashCode => Object.hash(runtimeType,schoolGrade);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HelpState(schoolGrade: $schoolGrade)';
}


}

/// @nodoc
abstract mixin class $HelpStateCopyWith<$Res>  {
  factory $HelpStateCopyWith(HelpState value, $Res Function(HelpState) _then) = _$HelpStateCopyWithImpl;
@useResult
$Res call({
 SchoolGrade schoolGrade
});




}
/// @nodoc
class _$HelpStateCopyWithImpl<$Res>
    implements $HelpStateCopyWith<$Res> {
  _$HelpStateCopyWithImpl(this._self, this._then);

  final HelpState _self;
  final $Res Function(HelpState) _then;

/// Create a copy of HelpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? schoolGrade = null,}) {
  return _then(_self.copyWith(
schoolGrade: null == schoolGrade ? _self.schoolGrade : schoolGrade // ignore: cast_nullable_to_non_nullable
as SchoolGrade,
  ));
}

}


/// Adds pattern-matching-related methods to [HelpState].
extension HelpStatePatterns on HelpState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HelpState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HelpState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HelpState value)  $default,){
final _that = this;
switch (_that) {
case _HelpState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HelpState value)?  $default,){
final _that = this;
switch (_that) {
case _HelpState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SchoolGrade schoolGrade)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HelpState() when $default != null:
return $default(_that.schoolGrade);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SchoolGrade schoolGrade)  $default,) {final _that = this;
switch (_that) {
case _HelpState():
return $default(_that.schoolGrade);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SchoolGrade schoolGrade)?  $default,) {final _that = this;
switch (_that) {
case _HelpState() when $default != null:
return $default(_that.schoolGrade);case _:
  return null;

}
}

}

/// @nodoc


class _HelpState with DiagnosticableTreeMixin implements HelpState {
  const _HelpState({required this.schoolGrade});
  

@override final  SchoolGrade schoolGrade;

/// Create a copy of HelpState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HelpStateCopyWith<_HelpState> get copyWith => __$HelpStateCopyWithImpl<_HelpState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'HelpState'))
    ..add(DiagnosticsProperty('schoolGrade', schoolGrade));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HelpState&&(identical(other.schoolGrade, schoolGrade) || other.schoolGrade == schoolGrade));
}


@override
int get hashCode => Object.hash(runtimeType,schoolGrade);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'HelpState(schoolGrade: $schoolGrade)';
}


}

/// @nodoc
abstract mixin class _$HelpStateCopyWith<$Res> implements $HelpStateCopyWith<$Res> {
  factory _$HelpStateCopyWith(_HelpState value, $Res Function(_HelpState) _then) = __$HelpStateCopyWithImpl;
@override @useResult
$Res call({
 SchoolGrade schoolGrade
});




}
/// @nodoc
class __$HelpStateCopyWithImpl<$Res>
    implements _$HelpStateCopyWith<$Res> {
  __$HelpStateCopyWithImpl(this._self, this._then);

  final _HelpState _self;
  final $Res Function(_HelpState) _then;

/// Create a copy of HelpState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? schoolGrade = null,}) {
  return _then(_HelpState(
schoolGrade: null == schoolGrade ? _self.schoolGrade : schoolGrade // ignore: cast_nullable_to_non_nullable
as SchoolGrade,
  ));
}


}

// dart format on
