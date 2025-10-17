// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'piece_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PieceModel {

 double get number; String get unit;
/// Create a copy of PieceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PieceModelCopyWith<PieceModel> get copyWith => _$PieceModelCopyWithImpl<PieceModel>(this as PieceModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PieceModel&&(identical(other.number, number) || other.number == number)&&(identical(other.unit, unit) || other.unit == unit));
}


@override
int get hashCode => Object.hash(runtimeType,number,unit);

@override
String toString() {
  return 'PieceModel(number: $number, unit: $unit)';
}


}

/// @nodoc
abstract mixin class $PieceModelCopyWith<$Res>  {
  factory $PieceModelCopyWith(PieceModel value, $Res Function(PieceModel) _then) = _$PieceModelCopyWithImpl;
@useResult
$Res call({
 double number, String unit
});




}
/// @nodoc
class _$PieceModelCopyWithImpl<$Res>
    implements $PieceModelCopyWith<$Res> {
  _$PieceModelCopyWithImpl(this._self, this._then);

  final PieceModel _self;
  final $Res Function(PieceModel) _then;

/// Create a copy of PieceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = null,Object? unit = null,}) {
  return _then(_self.copyWith(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as double,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PieceModel].
extension PieceModelPatterns on PieceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PieceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PieceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PieceModel value)  $default,){
final _that = this;
switch (_that) {
case _PieceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PieceModel value)?  $default,){
final _that = this;
switch (_that) {
case _PieceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double number,  String unit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PieceModel() when $default != null:
return $default(_that.number,_that.unit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double number,  String unit)  $default,) {final _that = this;
switch (_that) {
case _PieceModel():
return $default(_that.number,_that.unit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double number,  String unit)?  $default,) {final _that = this;
switch (_that) {
case _PieceModel() when $default != null:
return $default(_that.number,_that.unit);case _:
  return null;

}
}

}

/// @nodoc


class _PieceModel implements PieceModel {
  const _PieceModel({required this.number, this.unit = '個'});
  

@override final  double number;
@override@JsonKey() final  String unit;

/// Create a copy of PieceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PieceModelCopyWith<_PieceModel> get copyWith => __$PieceModelCopyWithImpl<_PieceModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PieceModel&&(identical(other.number, number) || other.number == number)&&(identical(other.unit, unit) || other.unit == unit));
}


@override
int get hashCode => Object.hash(runtimeType,number,unit);

@override
String toString() {
  return 'PieceModel(number: $number, unit: $unit)';
}


}

/// @nodoc
abstract mixin class _$PieceModelCopyWith<$Res> implements $PieceModelCopyWith<$Res> {
  factory _$PieceModelCopyWith(_PieceModel value, $Res Function(_PieceModel) _then) = __$PieceModelCopyWithImpl;
@override @useResult
$Res call({
 double number, String unit
});




}
/// @nodoc
class __$PieceModelCopyWithImpl<$Res>
    implements _$PieceModelCopyWith<$Res> {
  __$PieceModelCopyWithImpl(this._self, this._then);

  final _PieceModel _self;
  final $Res Function(_PieceModel) _then;

/// Create a copy of PieceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = null,Object? unit = null,}) {
  return _then(_PieceModel(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as double,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
