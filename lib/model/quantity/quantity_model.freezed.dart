// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quantity_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$QuantityModel {

/// 個数
 PieceModel? get piece;/// 量(g)
 double get gram;
/// Create a copy of QuantityModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuantityModelCopyWith<QuantityModel> get copyWith => _$QuantityModelCopyWithImpl<QuantityModel>(this as QuantityModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuantityModel&&(identical(other.piece, piece) || other.piece == piece)&&(identical(other.gram, gram) || other.gram == gram));
}


@override
int get hashCode => Object.hash(runtimeType,piece,gram);

@override
String toString() {
  return 'QuantityModel(piece: $piece, gram: $gram)';
}


}

/// @nodoc
abstract mixin class $QuantityModelCopyWith<$Res>  {
  factory $QuantityModelCopyWith(QuantityModel value, $Res Function(QuantityModel) _then) = _$QuantityModelCopyWithImpl;
@useResult
$Res call({
 PieceModel? piece, double gram
});


$PieceModelCopyWith<$Res>? get piece;

}
/// @nodoc
class _$QuantityModelCopyWithImpl<$Res>
    implements $QuantityModelCopyWith<$Res> {
  _$QuantityModelCopyWithImpl(this._self, this._then);

  final QuantityModel _self;
  final $Res Function(QuantityModel) _then;

/// Create a copy of QuantityModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? piece = freezed,Object? gram = null,}) {
  return _then(_self.copyWith(
piece: freezed == piece ? _self.piece : piece // ignore: cast_nullable_to_non_nullable
as PieceModel?,gram: null == gram ? _self.gram : gram // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of QuantityModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PieceModelCopyWith<$Res>? get piece {
    if (_self.piece == null) {
    return null;
  }

  return $PieceModelCopyWith<$Res>(_self.piece!, (value) {
    return _then(_self.copyWith(piece: value));
  });
}
}


/// Adds pattern-matching-related methods to [QuantityModel].
extension QuantityModelPatterns on QuantityModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuantityModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuantityModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuantityModel value)  $default,){
final _that = this;
switch (_that) {
case _QuantityModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuantityModel value)?  $default,){
final _that = this;
switch (_that) {
case _QuantityModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PieceModel? piece,  double gram)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuantityModel() when $default != null:
return $default(_that.piece,_that.gram);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PieceModel? piece,  double gram)  $default,) {final _that = this;
switch (_that) {
case _QuantityModel():
return $default(_that.piece,_that.gram);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PieceModel? piece,  double gram)?  $default,) {final _that = this;
switch (_that) {
case _QuantityModel() when $default != null:
return $default(_that.piece,_that.gram);case _:
  return null;

}
}

}

/// @nodoc


class _QuantityModel implements QuantityModel {
  const _QuantityModel({this.piece, this.gram = 0.0});
  

/// 個数
@override final  PieceModel? piece;
/// 量(g)
@override@JsonKey() final  double gram;

/// Create a copy of QuantityModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuantityModelCopyWith<_QuantityModel> get copyWith => __$QuantityModelCopyWithImpl<_QuantityModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuantityModel&&(identical(other.piece, piece) || other.piece == piece)&&(identical(other.gram, gram) || other.gram == gram));
}


@override
int get hashCode => Object.hash(runtimeType,piece,gram);

@override
String toString() {
  return 'QuantityModel(piece: $piece, gram: $gram)';
}


}

/// @nodoc
abstract mixin class _$QuantityModelCopyWith<$Res> implements $QuantityModelCopyWith<$Res> {
  factory _$QuantityModelCopyWith(_QuantityModel value, $Res Function(_QuantityModel) _then) = __$QuantityModelCopyWithImpl;
@override @useResult
$Res call({
 PieceModel? piece, double gram
});


@override $PieceModelCopyWith<$Res>? get piece;

}
/// @nodoc
class __$QuantityModelCopyWithImpl<$Res>
    implements _$QuantityModelCopyWith<$Res> {
  __$QuantityModelCopyWithImpl(this._self, this._then);

  final _QuantityModel _self;
  final $Res Function(_QuantityModel) _then;

/// Create a copy of QuantityModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? piece = freezed,Object? gram = null,}) {
  return _then(_QuantityModel(
piece: freezed == piece ? _self.piece : piece // ignore: cast_nullable_to_non_nullable
as PieceModel?,gram: null == gram ? _self.gram : gram // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of QuantityModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PieceModelCopyWith<$Res>? get piece {
    if (_self.piece == null) {
    return null;
  }

  return $PieceModelCopyWith<$Res>(_self.piece!, (value) {
    return _then(_self.copyWith(piece: value));
  });
}
}

// dart format on
