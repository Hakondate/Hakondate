// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserModel {

 int get id;/// 名前
 String get name;/// 学校ID
 int get schoolId;/// 学年
 int get schoolYear;/// 学校給食摂取基準
 NutrientsModel? get slns;/// 認可された日
 DateTime? get authorizedAt;
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserModelCopyWith<UserModel> get copyWith => _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.schoolYear, schoolYear) || other.schoolYear == schoolYear)&&(identical(other.slns, slns) || other.slns == slns)&&(identical(other.authorizedAt, authorizedAt) || other.authorizedAt == authorizedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,schoolId,schoolYear,slns,authorizedAt);

@override
String toString() {
  return 'UserModel(id: $id, name: $name, schoolId: $schoolId, schoolYear: $schoolYear, slns: $slns, authorizedAt: $authorizedAt)';
}


}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res>  {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) = _$UserModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, int schoolId, int schoolYear, NutrientsModel? slns, DateTime? authorizedAt
});


$NutrientsModelCopyWith<$Res>? get slns;

}
/// @nodoc
class _$UserModelCopyWithImpl<$Res>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._self, this._then);

  final UserModel _self;
  final $Res Function(UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? schoolId = null,Object? schoolYear = null,Object? slns = freezed,Object? authorizedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as int,schoolYear: null == schoolYear ? _self.schoolYear : schoolYear // ignore: cast_nullable_to_non_nullable
as int,slns: freezed == slns ? _self.slns : slns // ignore: cast_nullable_to_non_nullable
as NutrientsModel?,authorizedAt: freezed == authorizedAt ? _self.authorizedAt : authorizedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientsModelCopyWith<$Res>? get slns {
    if (_self.slns == null) {
    return null;
  }

  return $NutrientsModelCopyWith<$Res>(_self.slns!, (value) {
    return _then(_self.copyWith(slns: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserModel].
extension UserModelPatterns on UserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserModel value)  $default,){
final _that = this;
switch (_that) {
case _UserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  int schoolId,  int schoolYear,  NutrientsModel? slns,  DateTime? authorizedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.id,_that.name,_that.schoolId,_that.schoolYear,_that.slns,_that.authorizedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  int schoolId,  int schoolYear,  NutrientsModel? slns,  DateTime? authorizedAt)  $default,) {final _that = this;
switch (_that) {
case _UserModel():
return $default(_that.id,_that.name,_that.schoolId,_that.schoolYear,_that.slns,_that.authorizedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  int schoolId,  int schoolYear,  NutrientsModel? slns,  DateTime? authorizedAt)?  $default,) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.id,_that.name,_that.schoolId,_that.schoolYear,_that.slns,_that.authorizedAt);case _:
  return null;

}
}

}

/// @nodoc


class _UserModel extends UserModel {
  const _UserModel({required this.id, required this.name, required this.schoolId, required this.schoolYear, this.slns, this.authorizedAt}): super._();
  

@override final  int id;
/// 名前
@override final  String name;
/// 学校ID
@override final  int schoolId;
/// 学年
@override final  int schoolYear;
/// 学校給食摂取基準
@override final  NutrientsModel? slns;
/// 認可された日
@override final  DateTime? authorizedAt;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserModelCopyWith<_UserModel> get copyWith => __$UserModelCopyWithImpl<_UserModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.schoolYear, schoolYear) || other.schoolYear == schoolYear)&&(identical(other.slns, slns) || other.slns == slns)&&(identical(other.authorizedAt, authorizedAt) || other.authorizedAt == authorizedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,schoolId,schoolYear,slns,authorizedAt);

@override
String toString() {
  return 'UserModel(id: $id, name: $name, schoolId: $schoolId, schoolYear: $schoolYear, slns: $slns, authorizedAt: $authorizedAt)';
}


}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(_UserModel value, $Res Function(_UserModel) _then) = __$UserModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, int schoolId, int schoolYear, NutrientsModel? slns, DateTime? authorizedAt
});


@override $NutrientsModelCopyWith<$Res>? get slns;

}
/// @nodoc
class __$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(this._self, this._then);

  final _UserModel _self;
  final $Res Function(_UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? schoolId = null,Object? schoolYear = null,Object? slns = freezed,Object? authorizedAt = freezed,}) {
  return _then(_UserModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as int,schoolYear: null == schoolYear ? _self.schoolYear : schoolYear // ignore: cast_nullable_to_non_nullable
as int,slns: freezed == slns ? _self.slns : slns // ignore: cast_nullable_to_non_nullable
as NutrientsModel?,authorizedAt: freezed == authorizedAt ? _self.authorizedAt : authorizedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientsModelCopyWith<$Res>? get slns {
    if (_self.slns == null) {
    return null;
  }

  return $NutrientsModelCopyWith<$Res>(_self.slns!, (value) {
    return _then(_self.copyWith(slns: value));
  });
}
}

// dart format on
