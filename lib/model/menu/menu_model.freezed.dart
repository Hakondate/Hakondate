// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MenuModel {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MenuModel);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MenuModel()';
}


}

/// @nodoc
class $MenuModelCopyWith<$Res>  {
$MenuModelCopyWith(MenuModel _, $Res Function(MenuModel) __);
}


/// Adds pattern-matching-related methods to [MenuModel].
extension MenuModelPatterns on MenuModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LunchesDayMenuModel value)?  lunchesDay,TResult Function( HolidayMenuModel value)?  holiday,TResult Function( NoDataMenuModel value)?  noData,TResult Function( UnauthorizedMenuModel value)?  unauthorized,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LunchesDayMenuModel() when lunchesDay != null:
return lunchesDay(_that);case HolidayMenuModel() when holiday != null:
return holiday(_that);case NoDataMenuModel() when noData != null:
return noData(_that);case UnauthorizedMenuModel() when unauthorized != null:
return unauthorized(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LunchesDayMenuModel value)  lunchesDay,required TResult Function( HolidayMenuModel value)  holiday,required TResult Function( NoDataMenuModel value)  noData,required TResult Function( UnauthorizedMenuModel value)  unauthorized,}){
final _that = this;
switch (_that) {
case LunchesDayMenuModel():
return lunchesDay(_that);case HolidayMenuModel():
return holiday(_that);case NoDataMenuModel():
return noData(_that);case UnauthorizedMenuModel():
return unauthorized(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LunchesDayMenuModel value)?  lunchesDay,TResult? Function( HolidayMenuModel value)?  holiday,TResult? Function( NoDataMenuModel value)?  noData,TResult? Function( UnauthorizedMenuModel value)?  unauthorized,}){
final _that = this;
switch (_that) {
case LunchesDayMenuModel() when lunchesDay != null:
return lunchesDay(_that);case HolidayMenuModel() when holiday != null:
return holiday(_that);case NoDataMenuModel() when noData != null:
return noData(_that);case UnauthorizedMenuModel() when unauthorized != null:
return unauthorized(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int id,  DateTime day,  int schoolId,  List<DishModel> dishes,  String? event)?  lunchesDay,TResult Function()?  holiday,TResult Function()?  noData,TResult Function()?  unauthorized,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LunchesDayMenuModel() when lunchesDay != null:
return lunchesDay(_that.id,_that.day,_that.schoolId,_that.dishes,_that.event);case HolidayMenuModel() when holiday != null:
return holiday();case NoDataMenuModel() when noData != null:
return noData();case UnauthorizedMenuModel() when unauthorized != null:
return unauthorized();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int id,  DateTime day,  int schoolId,  List<DishModel> dishes,  String? event)  lunchesDay,required TResult Function()  holiday,required TResult Function()  noData,required TResult Function()  unauthorized,}) {final _that = this;
switch (_that) {
case LunchesDayMenuModel():
return lunchesDay(_that.id,_that.day,_that.schoolId,_that.dishes,_that.event);case HolidayMenuModel():
return holiday();case NoDataMenuModel():
return noData();case UnauthorizedMenuModel():
return unauthorized();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int id,  DateTime day,  int schoolId,  List<DishModel> dishes,  String? event)?  lunchesDay,TResult? Function()?  holiday,TResult? Function()?  noData,TResult? Function()?  unauthorized,}) {final _that = this;
switch (_that) {
case LunchesDayMenuModel() when lunchesDay != null:
return lunchesDay(_that.id,_that.day,_that.schoolId,_that.dishes,_that.event);case HolidayMenuModel() when holiday != null:
return holiday();case NoDataMenuModel() when noData != null:
return noData();case UnauthorizedMenuModel() when unauthorized != null:
return unauthorized();case _:
  return null;

}
}

}

/// @nodoc


class LunchesDayMenuModel extends MenuModel {
  const LunchesDayMenuModel({required this.id, required this.day, required this.schoolId, required final  List<DishModel> dishes, this.event}): _dishes = dishes,super._();
  

 final  int id;
 final  DateTime day;
 final  int schoolId;
 final  List<DishModel> _dishes;
 List<DishModel> get dishes {
  if (_dishes is EqualUnmodifiableListView) return _dishes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dishes);
}

 final  String? event;

/// Create a copy of MenuModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LunchesDayMenuModelCopyWith<LunchesDayMenuModel> get copyWith => _$LunchesDayMenuModelCopyWithImpl<LunchesDayMenuModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LunchesDayMenuModel&&(identical(other.id, id) || other.id == id)&&(identical(other.day, day) || other.day == day)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&const DeepCollectionEquality().equals(other._dishes, _dishes)&&(identical(other.event, event) || other.event == event));
}


@override
int get hashCode => Object.hash(runtimeType,id,day,schoolId,const DeepCollectionEquality().hash(_dishes),event);

@override
String toString() {
  return 'MenuModel.lunchesDay(id: $id, day: $day, schoolId: $schoolId, dishes: $dishes, event: $event)';
}


}

/// @nodoc
abstract mixin class $LunchesDayMenuModelCopyWith<$Res> implements $MenuModelCopyWith<$Res> {
  factory $LunchesDayMenuModelCopyWith(LunchesDayMenuModel value, $Res Function(LunchesDayMenuModel) _then) = _$LunchesDayMenuModelCopyWithImpl;
@useResult
$Res call({
 int id, DateTime day, int schoolId, List<DishModel> dishes, String? event
});




}
/// @nodoc
class _$LunchesDayMenuModelCopyWithImpl<$Res>
    implements $LunchesDayMenuModelCopyWith<$Res> {
  _$LunchesDayMenuModelCopyWithImpl(this._self, this._then);

  final LunchesDayMenuModel _self;
  final $Res Function(LunchesDayMenuModel) _then;

/// Create a copy of MenuModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? day = null,Object? schoolId = null,Object? dishes = null,Object? event = freezed,}) {
  return _then(LunchesDayMenuModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as DateTime,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as int,dishes: null == dishes ? _self._dishes : dishes // ignore: cast_nullable_to_non_nullable
as List<DishModel>,event: freezed == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class HolidayMenuModel extends MenuModel {
  const HolidayMenuModel(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HolidayMenuModel);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MenuModel.holiday()';
}


}




/// @nodoc


class NoDataMenuModel extends MenuModel {
  const NoDataMenuModel(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoDataMenuModel);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MenuModel.noData()';
}


}




/// @nodoc


class UnauthorizedMenuModel extends MenuModel {
  const UnauthorizedMenuModel(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnauthorizedMenuModel);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MenuModel.unauthorized()';
}


}




// dart format on
