// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'origin_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OriginItemModel {

 String get name; List<String> get prefectures;
/// Create a copy of OriginItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OriginItemModelCopyWith<OriginItemModel> get copyWith => _$OriginItemModelCopyWithImpl<OriginItemModel>(this as OriginItemModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OriginItemModel&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.prefectures, prefectures));
}


@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(prefectures));

@override
String toString() {
  return 'OriginItemModel(name: $name, prefectures: $prefectures)';
}


}

/// @nodoc
abstract mixin class $OriginItemModelCopyWith<$Res>  {
  factory $OriginItemModelCopyWith(OriginItemModel value, $Res Function(OriginItemModel) _then) = _$OriginItemModelCopyWithImpl;
@useResult
$Res call({
 String name, List<String> prefectures
});




}
/// @nodoc
class _$OriginItemModelCopyWithImpl<$Res>
    implements $OriginItemModelCopyWith<$Res> {
  _$OriginItemModelCopyWithImpl(this._self, this._then);

  final OriginItemModel _self;
  final $Res Function(OriginItemModel) _then;

/// Create a copy of OriginItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? prefectures = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,prefectures: null == prefectures ? _self.prefectures : prefectures // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [OriginItemModel].
extension OriginItemModelPatterns on OriginItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OriginItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OriginItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OriginItemModel value)  $default,){
final _that = this;
switch (_that) {
case _OriginItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OriginItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _OriginItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  List<String> prefectures)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OriginItemModel() when $default != null:
return $default(_that.name,_that.prefectures);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  List<String> prefectures)  $default,) {final _that = this;
switch (_that) {
case _OriginItemModel():
return $default(_that.name,_that.prefectures);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  List<String> prefectures)?  $default,) {final _that = this;
switch (_that) {
case _OriginItemModel() when $default != null:
return $default(_that.name,_that.prefectures);case _:
  return null;

}
}

}

/// @nodoc


class _OriginItemModel extends OriginItemModel {
  const _OriginItemModel({required this.name, required final  List<String> prefectures}): _prefectures = prefectures,super._();
  

@override final  String name;
 final  List<String> _prefectures;
@override List<String> get prefectures {
  if (_prefectures is EqualUnmodifiableListView) return _prefectures;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_prefectures);
}


/// Create a copy of OriginItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OriginItemModelCopyWith<_OriginItemModel> get copyWith => __$OriginItemModelCopyWithImpl<_OriginItemModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OriginItemModel&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._prefectures, _prefectures));
}


@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(_prefectures));

@override
String toString() {
  return 'OriginItemModel(name: $name, prefectures: $prefectures)';
}


}

/// @nodoc
abstract mixin class _$OriginItemModelCopyWith<$Res> implements $OriginItemModelCopyWith<$Res> {
  factory _$OriginItemModelCopyWith(_OriginItemModel value, $Res Function(_OriginItemModel) _then) = __$OriginItemModelCopyWithImpl;
@override @useResult
$Res call({
 String name, List<String> prefectures
});




}
/// @nodoc
class __$OriginItemModelCopyWithImpl<$Res>
    implements _$OriginItemModelCopyWith<$Res> {
  __$OriginItemModelCopyWithImpl(this._self, this._then);

  final _OriginItemModel _self;
  final $Res Function(_OriginItemModel) _then;

/// Create a copy of OriginItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? prefectures = null,}) {
  return _then(_OriginItemModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,prefectures: null == prefectures ? _self._prefectures : prefectures // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
