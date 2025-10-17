// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CalendarState implements DiagnosticableTreeMixin {

 DateTime get oldestDay; DateTime get latestDay; ScrollController get scrollController;
/// Create a copy of CalendarState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CalendarStateCopyWith<CalendarState> get copyWith => _$CalendarStateCopyWithImpl<CalendarState>(this as CalendarState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CalendarState'))
    ..add(DiagnosticsProperty('oldestDay', oldestDay))..add(DiagnosticsProperty('latestDay', latestDay))..add(DiagnosticsProperty('scrollController', scrollController));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalendarState&&(identical(other.oldestDay, oldestDay) || other.oldestDay == oldestDay)&&(identical(other.latestDay, latestDay) || other.latestDay == latestDay)&&(identical(other.scrollController, scrollController) || other.scrollController == scrollController));
}


@override
int get hashCode => Object.hash(runtimeType,oldestDay,latestDay,scrollController);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CalendarState(oldestDay: $oldestDay, latestDay: $latestDay, scrollController: $scrollController)';
}


}

/// @nodoc
abstract mixin class $CalendarStateCopyWith<$Res>  {
  factory $CalendarStateCopyWith(CalendarState value, $Res Function(CalendarState) _then) = _$CalendarStateCopyWithImpl;
@useResult
$Res call({
 DateTime oldestDay, DateTime latestDay, ScrollController scrollController
});




}
/// @nodoc
class _$CalendarStateCopyWithImpl<$Res>
    implements $CalendarStateCopyWith<$Res> {
  _$CalendarStateCopyWithImpl(this._self, this._then);

  final CalendarState _self;
  final $Res Function(CalendarState) _then;

/// Create a copy of CalendarState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? oldestDay = null,Object? latestDay = null,Object? scrollController = null,}) {
  return _then(_self.copyWith(
oldestDay: null == oldestDay ? _self.oldestDay : oldestDay // ignore: cast_nullable_to_non_nullable
as DateTime,latestDay: null == latestDay ? _self.latestDay : latestDay // ignore: cast_nullable_to_non_nullable
as DateTime,scrollController: null == scrollController ? _self.scrollController : scrollController // ignore: cast_nullable_to_non_nullable
as ScrollController,
  ));
}

}


/// Adds pattern-matching-related methods to [CalendarState].
extension CalendarStatePatterns on CalendarState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CalendarState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CalendarState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CalendarState value)  $default,){
final _that = this;
switch (_that) {
case _CalendarState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CalendarState value)?  $default,){
final _that = this;
switch (_that) {
case _CalendarState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime oldestDay,  DateTime latestDay,  ScrollController scrollController)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CalendarState() when $default != null:
return $default(_that.oldestDay,_that.latestDay,_that.scrollController);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime oldestDay,  DateTime latestDay,  ScrollController scrollController)  $default,) {final _that = this;
switch (_that) {
case _CalendarState():
return $default(_that.oldestDay,_that.latestDay,_that.scrollController);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime oldestDay,  DateTime latestDay,  ScrollController scrollController)?  $default,) {final _that = this;
switch (_that) {
case _CalendarState() when $default != null:
return $default(_that.oldestDay,_that.latestDay,_that.scrollController);case _:
  return null;

}
}

}

/// @nodoc


class _CalendarState with DiagnosticableTreeMixin implements CalendarState {
  const _CalendarState({required this.oldestDay, required this.latestDay, required this.scrollController});
  

@override final  DateTime oldestDay;
@override final  DateTime latestDay;
@override final  ScrollController scrollController;

/// Create a copy of CalendarState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CalendarStateCopyWith<_CalendarState> get copyWith => __$CalendarStateCopyWithImpl<_CalendarState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CalendarState'))
    ..add(DiagnosticsProperty('oldestDay', oldestDay))..add(DiagnosticsProperty('latestDay', latestDay))..add(DiagnosticsProperty('scrollController', scrollController));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CalendarState&&(identical(other.oldestDay, oldestDay) || other.oldestDay == oldestDay)&&(identical(other.latestDay, latestDay) || other.latestDay == latestDay)&&(identical(other.scrollController, scrollController) || other.scrollController == scrollController));
}


@override
int get hashCode => Object.hash(runtimeType,oldestDay,latestDay,scrollController);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CalendarState(oldestDay: $oldestDay, latestDay: $latestDay, scrollController: $scrollController)';
}


}

/// @nodoc
abstract mixin class _$CalendarStateCopyWith<$Res> implements $CalendarStateCopyWith<$Res> {
  factory _$CalendarStateCopyWith(_CalendarState value, $Res Function(_CalendarState) _then) = __$CalendarStateCopyWithImpl;
@override @useResult
$Res call({
 DateTime oldestDay, DateTime latestDay, ScrollController scrollController
});




}
/// @nodoc
class __$CalendarStateCopyWithImpl<$Res>
    implements _$CalendarStateCopyWith<$Res> {
  __$CalendarStateCopyWithImpl(this._self, this._then);

  final _CalendarState _self;
  final $Res Function(_CalendarState) _then;

/// Create a copy of CalendarState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? oldestDay = null,Object? latestDay = null,Object? scrollController = null,}) {
  return _then(_CalendarState(
oldestDay: null == oldestDay ? _self.oldestDay : oldestDay // ignore: cast_nullable_to_non_nullable
as DateTime,latestDay: null == latestDay ? _self.latestDay : latestDay // ignore: cast_nullable_to_non_nullable
as DateTime,scrollController: null == scrollController ? _self.scrollController : scrollController // ignore: cast_nullable_to_non_nullable
as ScrollController,
  ));
}


}

// dart format on
