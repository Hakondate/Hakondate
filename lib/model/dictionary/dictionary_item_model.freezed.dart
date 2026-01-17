// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dictionary_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DictionaryItemModel {

/// ID
 int get id;/// 食品分類（1 ~ 18群）
 DictionaryGroup get group;/// 食材名
 String get name;/// 栄養素
 NutrientsModel get nutrients;/// 備考
 String? get note;
/// Create a copy of DictionaryItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DictionaryItemModelCopyWith<DictionaryItemModel> get copyWith => _$DictionaryItemModelCopyWithImpl<DictionaryItemModel>(this as DictionaryItemModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DictionaryItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.group, group) || other.group == group)&&(identical(other.name, name) || other.name == name)&&(identical(other.nutrients, nutrients) || other.nutrients == nutrients)&&(identical(other.note, note) || other.note == note));
}


@override
int get hashCode => Object.hash(runtimeType,id,group,name,nutrients,note);

@override
String toString() {
  return 'DictionaryItemModel(id: $id, group: $group, name: $name, nutrients: $nutrients, note: $note)';
}


}

/// @nodoc
abstract mixin class $DictionaryItemModelCopyWith<$Res>  {
  factory $DictionaryItemModelCopyWith(DictionaryItemModel value, $Res Function(DictionaryItemModel) _then) = _$DictionaryItemModelCopyWithImpl;
@useResult
$Res call({
 int id, DictionaryGroup group, String name, NutrientsModel nutrients, String? note
});


$NutrientsModelCopyWith<$Res> get nutrients;

}
/// @nodoc
class _$DictionaryItemModelCopyWithImpl<$Res>
    implements $DictionaryItemModelCopyWith<$Res> {
  _$DictionaryItemModelCopyWithImpl(this._self, this._then);

  final DictionaryItemModel _self;
  final $Res Function(DictionaryItemModel) _then;

/// Create a copy of DictionaryItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? group = null,Object? name = null,Object? nutrients = null,Object? note = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,group: null == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as DictionaryGroup,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nutrients: null == nutrients ? _self.nutrients : nutrients // ignore: cast_nullable_to_non_nullable
as NutrientsModel,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of DictionaryItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientsModelCopyWith<$Res> get nutrients {
  
  return $NutrientsModelCopyWith<$Res>(_self.nutrients, (value) {
    return _then(_self.copyWith(nutrients: value));
  });
}
}


/// Adds pattern-matching-related methods to [DictionaryItemModel].
extension DictionaryItemModelPatterns on DictionaryItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DictionaryItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DictionaryItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DictionaryItemModel value)  $default,){
final _that = this;
switch (_that) {
case _DictionaryItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DictionaryItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _DictionaryItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  DictionaryGroup group,  String name,  NutrientsModel nutrients,  String? note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DictionaryItemModel() when $default != null:
return $default(_that.id,_that.group,_that.name,_that.nutrients,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  DictionaryGroup group,  String name,  NutrientsModel nutrients,  String? note)  $default,) {final _that = this;
switch (_that) {
case _DictionaryItemModel():
return $default(_that.id,_that.group,_that.name,_that.nutrients,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  DictionaryGroup group,  String name,  NutrientsModel nutrients,  String? note)?  $default,) {final _that = this;
switch (_that) {
case _DictionaryItemModel() when $default != null:
return $default(_that.id,_that.group,_that.name,_that.nutrients,_that.note);case _:
  return null;

}
}

}

/// @nodoc


class _DictionaryItemModel extends DictionaryItemModel {
  const _DictionaryItemModel({required this.id, required this.group, required this.name, required this.nutrients, this.note}): super._();
  

/// ID
@override final  int id;
/// 食品分類（1 ~ 18群）
@override final  DictionaryGroup group;
/// 食材名
@override final  String name;
/// 栄養素
@override final  NutrientsModel nutrients;
/// 備考
@override final  String? note;

/// Create a copy of DictionaryItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DictionaryItemModelCopyWith<_DictionaryItemModel> get copyWith => __$DictionaryItemModelCopyWithImpl<_DictionaryItemModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DictionaryItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.group, group) || other.group == group)&&(identical(other.name, name) || other.name == name)&&(identical(other.nutrients, nutrients) || other.nutrients == nutrients)&&(identical(other.note, note) || other.note == note));
}


@override
int get hashCode => Object.hash(runtimeType,id,group,name,nutrients,note);

@override
String toString() {
  return 'DictionaryItemModel(id: $id, group: $group, name: $name, nutrients: $nutrients, note: $note)';
}


}

/// @nodoc
abstract mixin class _$DictionaryItemModelCopyWith<$Res> implements $DictionaryItemModelCopyWith<$Res> {
  factory _$DictionaryItemModelCopyWith(_DictionaryItemModel value, $Res Function(_DictionaryItemModel) _then) = __$DictionaryItemModelCopyWithImpl;
@override @useResult
$Res call({
 int id, DictionaryGroup group, String name, NutrientsModel nutrients, String? note
});


@override $NutrientsModelCopyWith<$Res> get nutrients;

}
/// @nodoc
class __$DictionaryItemModelCopyWithImpl<$Res>
    implements _$DictionaryItemModelCopyWith<$Res> {
  __$DictionaryItemModelCopyWithImpl(this._self, this._then);

  final _DictionaryItemModel _self;
  final $Res Function(_DictionaryItemModel) _then;

/// Create a copy of DictionaryItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? group = null,Object? name = null,Object? nutrients = null,Object? note = freezed,}) {
  return _then(_DictionaryItemModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,group: null == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as DictionaryGroup,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nutrients: null == nutrients ? _self.nutrients : nutrients // ignore: cast_nullable_to_non_nullable
as NutrientsModel,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of DictionaryItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientsModelCopyWith<$Res> get nutrients {
  
  return $NutrientsModelCopyWith<$Res>(_self.nutrients, (value) {
    return _then(_self.copyWith(nutrients: value));
  });
}
}

// dart format on
