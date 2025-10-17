// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DailyState implements DiagnosticableTreeMixin {

 DateTime get selectedDay; DateTime get focusedDay; DateTime get calendarTabFirstDay; DateTime get calendarTabLastDay; Map<FiveMajorNutrient, List<DictionaryItemModel>> get recommendFoodStuffs; MenuModel get menu; DishModel? get selectedDish;
/// Create a copy of DailyState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyStateCopyWith<DailyState> get copyWith => _$DailyStateCopyWithImpl<DailyState>(this as DailyState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DailyState'))
    ..add(DiagnosticsProperty('selectedDay', selectedDay))..add(DiagnosticsProperty('focusedDay', focusedDay))..add(DiagnosticsProperty('calendarTabFirstDay', calendarTabFirstDay))..add(DiagnosticsProperty('calendarTabLastDay', calendarTabLastDay))..add(DiagnosticsProperty('recommendFoodStuffs', recommendFoodStuffs))..add(DiagnosticsProperty('menu', menu))..add(DiagnosticsProperty('selectedDish', selectedDish));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyState&&(identical(other.selectedDay, selectedDay) || other.selectedDay == selectedDay)&&(identical(other.focusedDay, focusedDay) || other.focusedDay == focusedDay)&&(identical(other.calendarTabFirstDay, calendarTabFirstDay) || other.calendarTabFirstDay == calendarTabFirstDay)&&(identical(other.calendarTabLastDay, calendarTabLastDay) || other.calendarTabLastDay == calendarTabLastDay)&&const DeepCollectionEquality().equals(other.recommendFoodStuffs, recommendFoodStuffs)&&(identical(other.menu, menu) || other.menu == menu)&&(identical(other.selectedDish, selectedDish) || other.selectedDish == selectedDish));
}


@override
int get hashCode => Object.hash(runtimeType,selectedDay,focusedDay,calendarTabFirstDay,calendarTabLastDay,const DeepCollectionEquality().hash(recommendFoodStuffs),menu,selectedDish);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DailyState(selectedDay: $selectedDay, focusedDay: $focusedDay, calendarTabFirstDay: $calendarTabFirstDay, calendarTabLastDay: $calendarTabLastDay, recommendFoodStuffs: $recommendFoodStuffs, menu: $menu, selectedDish: $selectedDish)';
}


}

/// @nodoc
abstract mixin class $DailyStateCopyWith<$Res>  {
  factory $DailyStateCopyWith(DailyState value, $Res Function(DailyState) _then) = _$DailyStateCopyWithImpl;
@useResult
$Res call({
 DateTime selectedDay, DateTime focusedDay, DateTime calendarTabFirstDay, DateTime calendarTabLastDay, Map<FiveMajorNutrient, List<DictionaryItemModel>> recommendFoodStuffs, MenuModel menu, DishModel? selectedDish
});


$MenuModelCopyWith<$Res> get menu;$DishModelCopyWith<$Res>? get selectedDish;

}
/// @nodoc
class _$DailyStateCopyWithImpl<$Res>
    implements $DailyStateCopyWith<$Res> {
  _$DailyStateCopyWithImpl(this._self, this._then);

  final DailyState _self;
  final $Res Function(DailyState) _then;

/// Create a copy of DailyState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedDay = null,Object? focusedDay = null,Object? calendarTabFirstDay = null,Object? calendarTabLastDay = null,Object? recommendFoodStuffs = null,Object? menu = null,Object? selectedDish = freezed,}) {
  return _then(_self.copyWith(
selectedDay: null == selectedDay ? _self.selectedDay : selectedDay // ignore: cast_nullable_to_non_nullable
as DateTime,focusedDay: null == focusedDay ? _self.focusedDay : focusedDay // ignore: cast_nullable_to_non_nullable
as DateTime,calendarTabFirstDay: null == calendarTabFirstDay ? _self.calendarTabFirstDay : calendarTabFirstDay // ignore: cast_nullable_to_non_nullable
as DateTime,calendarTabLastDay: null == calendarTabLastDay ? _self.calendarTabLastDay : calendarTabLastDay // ignore: cast_nullable_to_non_nullable
as DateTime,recommendFoodStuffs: null == recommendFoodStuffs ? _self.recommendFoodStuffs : recommendFoodStuffs // ignore: cast_nullable_to_non_nullable
as Map<FiveMajorNutrient, List<DictionaryItemModel>>,menu: null == menu ? _self.menu : menu // ignore: cast_nullable_to_non_nullable
as MenuModel,selectedDish: freezed == selectedDish ? _self.selectedDish : selectedDish // ignore: cast_nullable_to_non_nullable
as DishModel?,
  ));
}
/// Create a copy of DailyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MenuModelCopyWith<$Res> get menu {
  
  return $MenuModelCopyWith<$Res>(_self.menu, (value) {
    return _then(_self.copyWith(menu: value));
  });
}/// Create a copy of DailyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DishModelCopyWith<$Res>? get selectedDish {
    if (_self.selectedDish == null) {
    return null;
  }

  return $DishModelCopyWith<$Res>(_self.selectedDish!, (value) {
    return _then(_self.copyWith(selectedDish: value));
  });
}
}


/// Adds pattern-matching-related methods to [DailyState].
extension DailyStatePatterns on DailyState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailyState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailyState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailyState value)  $default,){
final _that = this;
switch (_that) {
case _DailyState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailyState value)?  $default,){
final _that = this;
switch (_that) {
case _DailyState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime selectedDay,  DateTime focusedDay,  DateTime calendarTabFirstDay,  DateTime calendarTabLastDay,  Map<FiveMajorNutrient, List<DictionaryItemModel>> recommendFoodStuffs,  MenuModel menu,  DishModel? selectedDish)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailyState() when $default != null:
return $default(_that.selectedDay,_that.focusedDay,_that.calendarTabFirstDay,_that.calendarTabLastDay,_that.recommendFoodStuffs,_that.menu,_that.selectedDish);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime selectedDay,  DateTime focusedDay,  DateTime calendarTabFirstDay,  DateTime calendarTabLastDay,  Map<FiveMajorNutrient, List<DictionaryItemModel>> recommendFoodStuffs,  MenuModel menu,  DishModel? selectedDish)  $default,) {final _that = this;
switch (_that) {
case _DailyState():
return $default(_that.selectedDay,_that.focusedDay,_that.calendarTabFirstDay,_that.calendarTabLastDay,_that.recommendFoodStuffs,_that.menu,_that.selectedDish);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime selectedDay,  DateTime focusedDay,  DateTime calendarTabFirstDay,  DateTime calendarTabLastDay,  Map<FiveMajorNutrient, List<DictionaryItemModel>> recommendFoodStuffs,  MenuModel menu,  DishModel? selectedDish)?  $default,) {final _that = this;
switch (_that) {
case _DailyState() when $default != null:
return $default(_that.selectedDay,_that.focusedDay,_that.calendarTabFirstDay,_that.calendarTabLastDay,_that.recommendFoodStuffs,_that.menu,_that.selectedDish);case _:
  return null;

}
}

}

/// @nodoc


class _DailyState with DiagnosticableTreeMixin implements DailyState {
  const _DailyState({required this.selectedDay, required this.focusedDay, required this.calendarTabFirstDay, required this.calendarTabLastDay, final  Map<FiveMajorNutrient, List<DictionaryItemModel>> recommendFoodStuffs = const <FiveMajorNutrient, List<DictionaryItemModel>>{}, this.menu = const MenuModel.noData(), this.selectedDish}): _recommendFoodStuffs = recommendFoodStuffs;
  

@override final  DateTime selectedDay;
@override final  DateTime focusedDay;
@override final  DateTime calendarTabFirstDay;
@override final  DateTime calendarTabLastDay;
 final  Map<FiveMajorNutrient, List<DictionaryItemModel>> _recommendFoodStuffs;
@override@JsonKey() Map<FiveMajorNutrient, List<DictionaryItemModel>> get recommendFoodStuffs {
  if (_recommendFoodStuffs is EqualUnmodifiableMapView) return _recommendFoodStuffs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_recommendFoodStuffs);
}

@override@JsonKey() final  MenuModel menu;
@override final  DishModel? selectedDish;

/// Create a copy of DailyState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyStateCopyWith<_DailyState> get copyWith => __$DailyStateCopyWithImpl<_DailyState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DailyState'))
    ..add(DiagnosticsProperty('selectedDay', selectedDay))..add(DiagnosticsProperty('focusedDay', focusedDay))..add(DiagnosticsProperty('calendarTabFirstDay', calendarTabFirstDay))..add(DiagnosticsProperty('calendarTabLastDay', calendarTabLastDay))..add(DiagnosticsProperty('recommendFoodStuffs', recommendFoodStuffs))..add(DiagnosticsProperty('menu', menu))..add(DiagnosticsProperty('selectedDish', selectedDish));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyState&&(identical(other.selectedDay, selectedDay) || other.selectedDay == selectedDay)&&(identical(other.focusedDay, focusedDay) || other.focusedDay == focusedDay)&&(identical(other.calendarTabFirstDay, calendarTabFirstDay) || other.calendarTabFirstDay == calendarTabFirstDay)&&(identical(other.calendarTabLastDay, calendarTabLastDay) || other.calendarTabLastDay == calendarTabLastDay)&&const DeepCollectionEquality().equals(other._recommendFoodStuffs, _recommendFoodStuffs)&&(identical(other.menu, menu) || other.menu == menu)&&(identical(other.selectedDish, selectedDish) || other.selectedDish == selectedDish));
}


@override
int get hashCode => Object.hash(runtimeType,selectedDay,focusedDay,calendarTabFirstDay,calendarTabLastDay,const DeepCollectionEquality().hash(_recommendFoodStuffs),menu,selectedDish);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DailyState(selectedDay: $selectedDay, focusedDay: $focusedDay, calendarTabFirstDay: $calendarTabFirstDay, calendarTabLastDay: $calendarTabLastDay, recommendFoodStuffs: $recommendFoodStuffs, menu: $menu, selectedDish: $selectedDish)';
}


}

/// @nodoc
abstract mixin class _$DailyStateCopyWith<$Res> implements $DailyStateCopyWith<$Res> {
  factory _$DailyStateCopyWith(_DailyState value, $Res Function(_DailyState) _then) = __$DailyStateCopyWithImpl;
@override @useResult
$Res call({
 DateTime selectedDay, DateTime focusedDay, DateTime calendarTabFirstDay, DateTime calendarTabLastDay, Map<FiveMajorNutrient, List<DictionaryItemModel>> recommendFoodStuffs, MenuModel menu, DishModel? selectedDish
});


@override $MenuModelCopyWith<$Res> get menu;@override $DishModelCopyWith<$Res>? get selectedDish;

}
/// @nodoc
class __$DailyStateCopyWithImpl<$Res>
    implements _$DailyStateCopyWith<$Res> {
  __$DailyStateCopyWithImpl(this._self, this._then);

  final _DailyState _self;
  final $Res Function(_DailyState) _then;

/// Create a copy of DailyState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedDay = null,Object? focusedDay = null,Object? calendarTabFirstDay = null,Object? calendarTabLastDay = null,Object? recommendFoodStuffs = null,Object? menu = null,Object? selectedDish = freezed,}) {
  return _then(_DailyState(
selectedDay: null == selectedDay ? _self.selectedDay : selectedDay // ignore: cast_nullable_to_non_nullable
as DateTime,focusedDay: null == focusedDay ? _self.focusedDay : focusedDay // ignore: cast_nullable_to_non_nullable
as DateTime,calendarTabFirstDay: null == calendarTabFirstDay ? _self.calendarTabFirstDay : calendarTabFirstDay // ignore: cast_nullable_to_non_nullable
as DateTime,calendarTabLastDay: null == calendarTabLastDay ? _self.calendarTabLastDay : calendarTabLastDay // ignore: cast_nullable_to_non_nullable
as DateTime,recommendFoodStuffs: null == recommendFoodStuffs ? _self._recommendFoodStuffs : recommendFoodStuffs // ignore: cast_nullable_to_non_nullable
as Map<FiveMajorNutrient, List<DictionaryItemModel>>,menu: null == menu ? _self.menu : menu // ignore: cast_nullable_to_non_nullable
as MenuModel,selectedDish: freezed == selectedDish ? _self.selectedDish : selectedDish // ignore: cast_nullable_to_non_nullable
as DishModel?,
  ));
}

/// Create a copy of DailyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MenuModelCopyWith<$Res> get menu {
  
  return $MenuModelCopyWith<$Res>(_self.menu, (value) {
    return _then(_self.copyWith(menu: value));
  });
}/// Create a copy of DailyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DishModelCopyWith<$Res>? get selectedDish {
    if (_self.selectedDish == null) {
    return null;
  }

  return $DishModelCopyWith<$Res>(_self.selectedDish!, (value) {
    return _then(_self.copyWith(selectedDish: value));
  });
}
}

// dart format on
