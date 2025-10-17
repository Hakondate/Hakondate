// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'origin_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OriginModel {

 DateTime get date; List<OriginCategoryModel> get categories;
/// Create a copy of OriginModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OriginModelCopyWith<OriginModel> get copyWith => _$OriginModelCopyWithImpl<OriginModel>(this as OriginModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OriginModel&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other.categories, categories));
}


@override
int get hashCode => Object.hash(runtimeType,date,const DeepCollectionEquality().hash(categories));

@override
String toString() {
  return 'OriginModel(date: $date, categories: $categories)';
}


}

/// @nodoc
abstract mixin class $OriginModelCopyWith<$Res>  {
  factory $OriginModelCopyWith(OriginModel value, $Res Function(OriginModel) _then) = _$OriginModelCopyWithImpl;
@useResult
$Res call({
 DateTime date, List<OriginCategoryModel> categories
});




}
/// @nodoc
class _$OriginModelCopyWithImpl<$Res>
    implements $OriginModelCopyWith<$Res> {
  _$OriginModelCopyWithImpl(this._self, this._then);

  final OriginModel _self;
  final $Res Function(OriginModel) _then;

/// Create a copy of OriginModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? categories = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<OriginCategoryModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [OriginModel].
extension OriginModelPatterns on OriginModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OriginModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OriginModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OriginModel value)  $default,){
final _that = this;
switch (_that) {
case _OriginModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OriginModel value)?  $default,){
final _that = this;
switch (_that) {
case _OriginModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime date,  List<OriginCategoryModel> categories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OriginModel() when $default != null:
return $default(_that.date,_that.categories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime date,  List<OriginCategoryModel> categories)  $default,) {final _that = this;
switch (_that) {
case _OriginModel():
return $default(_that.date,_that.categories);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime date,  List<OriginCategoryModel> categories)?  $default,) {final _that = this;
switch (_that) {
case _OriginModel() when $default != null:
return $default(_that.date,_that.categories);case _:
  return null;

}
}

}

/// @nodoc


class _OriginModel extends OriginModel {
  const _OriginModel({required this.date, required final  List<OriginCategoryModel> categories}): _categories = categories,super._();
  

@override final  DateTime date;
 final  List<OriginCategoryModel> _categories;
@override List<OriginCategoryModel> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}


/// Create a copy of OriginModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OriginModelCopyWith<_OriginModel> get copyWith => __$OriginModelCopyWithImpl<_OriginModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OriginModel&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other._categories, _categories));
}


@override
int get hashCode => Object.hash(runtimeType,date,const DeepCollectionEquality().hash(_categories));

@override
String toString() {
  return 'OriginModel(date: $date, categories: $categories)';
}


}

/// @nodoc
abstract mixin class _$OriginModelCopyWith<$Res> implements $OriginModelCopyWith<$Res> {
  factory _$OriginModelCopyWith(_OriginModel value, $Res Function(_OriginModel) _then) = __$OriginModelCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, List<OriginCategoryModel> categories
});




}
/// @nodoc
class __$OriginModelCopyWithImpl<$Res>
    implements _$OriginModelCopyWith<$Res> {
  __$OriginModelCopyWithImpl(this._self, this._then);

  final _OriginModel _self;
  final $Res Function(_OriginModel) _then;

/// Create a copy of OriginModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? categories = null,}) {
  return _then(_OriginModel(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<OriginCategoryModel>,
  ));
}


}

// dart format on
