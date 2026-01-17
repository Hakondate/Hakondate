// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_statistics_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppStatisticsState implements DiagnosticableTreeMixin {

 int get usageTimeInSec; int get openCount; DateTime? get lastPopUp; int? get usageTimeInMinWhenLastPopUp;
/// Create a copy of AppStatisticsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppStatisticsStateCopyWith<AppStatisticsState> get copyWith => _$AppStatisticsStateCopyWithImpl<AppStatisticsState>(this as AppStatisticsState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AppStatisticsState'))
    ..add(DiagnosticsProperty('usageTimeInSec', usageTimeInSec))..add(DiagnosticsProperty('openCount', openCount))..add(DiagnosticsProperty('lastPopUp', lastPopUp))..add(DiagnosticsProperty('usageTimeInMinWhenLastPopUp', usageTimeInMinWhenLastPopUp));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppStatisticsState&&(identical(other.usageTimeInSec, usageTimeInSec) || other.usageTimeInSec == usageTimeInSec)&&(identical(other.openCount, openCount) || other.openCount == openCount)&&(identical(other.lastPopUp, lastPopUp) || other.lastPopUp == lastPopUp)&&(identical(other.usageTimeInMinWhenLastPopUp, usageTimeInMinWhenLastPopUp) || other.usageTimeInMinWhenLastPopUp == usageTimeInMinWhenLastPopUp));
}


@override
int get hashCode => Object.hash(runtimeType,usageTimeInSec,openCount,lastPopUp,usageTimeInMinWhenLastPopUp);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AppStatisticsState(usageTimeInSec: $usageTimeInSec, openCount: $openCount, lastPopUp: $lastPopUp, usageTimeInMinWhenLastPopUp: $usageTimeInMinWhenLastPopUp)';
}


}

/// @nodoc
abstract mixin class $AppStatisticsStateCopyWith<$Res>  {
  factory $AppStatisticsStateCopyWith(AppStatisticsState value, $Res Function(AppStatisticsState) _then) = _$AppStatisticsStateCopyWithImpl;
@useResult
$Res call({
 int usageTimeInSec, int openCount, DateTime? lastPopUp, int? usageTimeInMinWhenLastPopUp
});




}
/// @nodoc
class _$AppStatisticsStateCopyWithImpl<$Res>
    implements $AppStatisticsStateCopyWith<$Res> {
  _$AppStatisticsStateCopyWithImpl(this._self, this._then);

  final AppStatisticsState _self;
  final $Res Function(AppStatisticsState) _then;

/// Create a copy of AppStatisticsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? usageTimeInSec = null,Object? openCount = null,Object? lastPopUp = freezed,Object? usageTimeInMinWhenLastPopUp = freezed,}) {
  return _then(_self.copyWith(
usageTimeInSec: null == usageTimeInSec ? _self.usageTimeInSec : usageTimeInSec // ignore: cast_nullable_to_non_nullable
as int,openCount: null == openCount ? _self.openCount : openCount // ignore: cast_nullable_to_non_nullable
as int,lastPopUp: freezed == lastPopUp ? _self.lastPopUp : lastPopUp // ignore: cast_nullable_to_non_nullable
as DateTime?,usageTimeInMinWhenLastPopUp: freezed == usageTimeInMinWhenLastPopUp ? _self.usageTimeInMinWhenLastPopUp : usageTimeInMinWhenLastPopUp // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [AppStatisticsState].
extension AppStatisticsStatePatterns on AppStatisticsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppStatisticsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppStatisticsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppStatisticsState value)  $default,){
final _that = this;
switch (_that) {
case _AppStatisticsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppStatisticsState value)?  $default,){
final _that = this;
switch (_that) {
case _AppStatisticsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int usageTimeInSec,  int openCount,  DateTime? lastPopUp,  int? usageTimeInMinWhenLastPopUp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppStatisticsState() when $default != null:
return $default(_that.usageTimeInSec,_that.openCount,_that.lastPopUp,_that.usageTimeInMinWhenLastPopUp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int usageTimeInSec,  int openCount,  DateTime? lastPopUp,  int? usageTimeInMinWhenLastPopUp)  $default,) {final _that = this;
switch (_that) {
case _AppStatisticsState():
return $default(_that.usageTimeInSec,_that.openCount,_that.lastPopUp,_that.usageTimeInMinWhenLastPopUp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int usageTimeInSec,  int openCount,  DateTime? lastPopUp,  int? usageTimeInMinWhenLastPopUp)?  $default,) {final _that = this;
switch (_that) {
case _AppStatisticsState() when $default != null:
return $default(_that.usageTimeInSec,_that.openCount,_that.lastPopUp,_that.usageTimeInMinWhenLastPopUp);case _:
  return null;

}
}

}

/// @nodoc


class _AppStatisticsState extends AppStatisticsState with DiagnosticableTreeMixin {
  const _AppStatisticsState({required this.usageTimeInSec, required this.openCount, this.lastPopUp, this.usageTimeInMinWhenLastPopUp}): super._();
  

@override final  int usageTimeInSec;
@override final  int openCount;
@override final  DateTime? lastPopUp;
@override final  int? usageTimeInMinWhenLastPopUp;

/// Create a copy of AppStatisticsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppStatisticsStateCopyWith<_AppStatisticsState> get copyWith => __$AppStatisticsStateCopyWithImpl<_AppStatisticsState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AppStatisticsState'))
    ..add(DiagnosticsProperty('usageTimeInSec', usageTimeInSec))..add(DiagnosticsProperty('openCount', openCount))..add(DiagnosticsProperty('lastPopUp', lastPopUp))..add(DiagnosticsProperty('usageTimeInMinWhenLastPopUp', usageTimeInMinWhenLastPopUp));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppStatisticsState&&(identical(other.usageTimeInSec, usageTimeInSec) || other.usageTimeInSec == usageTimeInSec)&&(identical(other.openCount, openCount) || other.openCount == openCount)&&(identical(other.lastPopUp, lastPopUp) || other.lastPopUp == lastPopUp)&&(identical(other.usageTimeInMinWhenLastPopUp, usageTimeInMinWhenLastPopUp) || other.usageTimeInMinWhenLastPopUp == usageTimeInMinWhenLastPopUp));
}


@override
int get hashCode => Object.hash(runtimeType,usageTimeInSec,openCount,lastPopUp,usageTimeInMinWhenLastPopUp);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AppStatisticsState(usageTimeInSec: $usageTimeInSec, openCount: $openCount, lastPopUp: $lastPopUp, usageTimeInMinWhenLastPopUp: $usageTimeInMinWhenLastPopUp)';
}


}

/// @nodoc
abstract mixin class _$AppStatisticsStateCopyWith<$Res> implements $AppStatisticsStateCopyWith<$Res> {
  factory _$AppStatisticsStateCopyWith(_AppStatisticsState value, $Res Function(_AppStatisticsState) _then) = __$AppStatisticsStateCopyWithImpl;
@override @useResult
$Res call({
 int usageTimeInSec, int openCount, DateTime? lastPopUp, int? usageTimeInMinWhenLastPopUp
});




}
/// @nodoc
class __$AppStatisticsStateCopyWithImpl<$Res>
    implements _$AppStatisticsStateCopyWith<$Res> {
  __$AppStatisticsStateCopyWithImpl(this._self, this._then);

  final _AppStatisticsState _self;
  final $Res Function(_AppStatisticsState) _then;

/// Create a copy of AppStatisticsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? usageTimeInSec = null,Object? openCount = null,Object? lastPopUp = freezed,Object? usageTimeInMinWhenLastPopUp = freezed,}) {
  return _then(_AppStatisticsState(
usageTimeInSec: null == usageTimeInSec ? _self.usageTimeInSec : usageTimeInSec // ignore: cast_nullable_to_non_nullable
as int,openCount: null == openCount ? _self.openCount : openCount // ignore: cast_nullable_to_non_nullable
as int,lastPopUp: freezed == lastPopUp ? _self.lastPopUp : lastPopUp // ignore: cast_nullable_to_non_nullable
as DateTime?,usageTimeInMinWhenLastPopUp: freezed == usageTimeInMinWhenLastPopUp ? _self.usageTimeInMinWhenLastPopUp : usageTimeInMinWhenLastPopUp // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
