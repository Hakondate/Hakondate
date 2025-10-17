// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'foodstuff_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FoodstuffModel {

/// 食材名
 String get name;/// 分量
 QuantityModel get quantity;/// 栄養素
 NutrientsModel get nutrients;/// アレルギー食品
 bool get isAllergy;/// 熱加工食品
 bool get isHeat;/// 原産地
 String? get origin;
/// Create a copy of FoodstuffModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodstuffModelCopyWith<FoodstuffModel> get copyWith => _$FoodstuffModelCopyWithImpl<FoodstuffModel>(this as FoodstuffModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodstuffModel&&(identical(other.name, name) || other.name == name)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.nutrients, nutrients) || other.nutrients == nutrients)&&(identical(other.isAllergy, isAllergy) || other.isAllergy == isAllergy)&&(identical(other.isHeat, isHeat) || other.isHeat == isHeat)&&(identical(other.origin, origin) || other.origin == origin));
}


@override
int get hashCode => Object.hash(runtimeType,name,quantity,nutrients,isAllergy,isHeat,origin);

@override
String toString() {
  return 'FoodstuffModel(name: $name, quantity: $quantity, nutrients: $nutrients, isAllergy: $isAllergy, isHeat: $isHeat, origin: $origin)';
}


}

/// @nodoc
abstract mixin class $FoodstuffModelCopyWith<$Res>  {
  factory $FoodstuffModelCopyWith(FoodstuffModel value, $Res Function(FoodstuffModel) _then) = _$FoodstuffModelCopyWithImpl;
@useResult
$Res call({
 String name, QuantityModel quantity, NutrientsModel nutrients, bool isAllergy, bool isHeat, String? origin
});


$QuantityModelCopyWith<$Res> get quantity;$NutrientsModelCopyWith<$Res> get nutrients;

}
/// @nodoc
class _$FoodstuffModelCopyWithImpl<$Res>
    implements $FoodstuffModelCopyWith<$Res> {
  _$FoodstuffModelCopyWithImpl(this._self, this._then);

  final FoodstuffModel _self;
  final $Res Function(FoodstuffModel) _then;

/// Create a copy of FoodstuffModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? quantity = null,Object? nutrients = null,Object? isAllergy = null,Object? isHeat = null,Object? origin = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as QuantityModel,nutrients: null == nutrients ? _self.nutrients : nutrients // ignore: cast_nullable_to_non_nullable
as NutrientsModel,isAllergy: null == isAllergy ? _self.isAllergy : isAllergy // ignore: cast_nullable_to_non_nullable
as bool,isHeat: null == isHeat ? _self.isHeat : isHeat // ignore: cast_nullable_to_non_nullable
as bool,origin: freezed == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of FoodstuffModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QuantityModelCopyWith<$Res> get quantity {
  
  return $QuantityModelCopyWith<$Res>(_self.quantity, (value) {
    return _then(_self.copyWith(quantity: value));
  });
}/// Create a copy of FoodstuffModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrientsModelCopyWith<$Res> get nutrients {
  
  return $NutrientsModelCopyWith<$Res>(_self.nutrients, (value) {
    return _then(_self.copyWith(nutrients: value));
  });
}
}


/// @nodoc


class _FoodstuffModel extends FoodstuffModel {
  const _FoodstuffModel({required this.name, required this.quantity, required this.nutrients, this.isAllergy = false, this.isHeat = false, this.origin}): super._();
  

/// 食材名
@override final  String name;
/// 分量
@override final  QuantityModel quantity;
/// 栄養素
@override final  NutrientsModel nutrients;
/// アレルギー食品
@override@JsonKey() final  bool isAllergy;
/// 熱加工食品
@override@JsonKey() final  bool isHeat;
/// 原産地
@override final  String? origin;

/// Create a copy of FoodstuffModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodstuffModelCopyWith<_FoodstuffModel> get copyWith => __$FoodstuffModelCopyWithImpl<_FoodstuffModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodstuffModel&&(identical(other.name, name) || other.name == name)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.nutrients, nutrients) || other.nutrients == nutrients)&&(identical(other.isAllergy, isAllergy) || other.isAllergy == isAllergy)&&(identical(other.isHeat, isHeat) || other.isHeat == isHeat)&&(identical(other.origin, origin) || other.origin == origin));
}


@override
int get hashCode => Object.hash(runtimeType,name,quantity,nutrients,isAllergy,isHeat,origin);

@override
String toString() {
  return 'FoodstuffModel(name: $name, quantity: $quantity, nutrients: $nutrients, isAllergy: $isAllergy, isHeat: $isHeat, origin: $origin)';
}


}

/// @nodoc
abstract mixin class _$FoodstuffModelCopyWith<$Res> implements $FoodstuffModelCopyWith<$Res> {
  factory _$FoodstuffModelCopyWith(_FoodstuffModel value, $Res Function(_FoodstuffModel) _then) = __$FoodstuffModelCopyWithImpl;
@override @useResult
$Res call({
 String name, QuantityModel quantity, NutrientsModel nutrients, bool isAllergy, bool isHeat, String? origin
});


@override $QuantityModelCopyWith<$Res> get quantity;@override $NutrientsModelCopyWith<$Res> get nutrients;

}
/// @nodoc
class __$FoodstuffModelCopyWithImpl<$Res>
    implements _$FoodstuffModelCopyWith<$Res> {
  __$FoodstuffModelCopyWithImpl(this._self, this._then);

  final _FoodstuffModel _self;
  final $Res Function(_FoodstuffModel) _then;

/// Create a copy of FoodstuffModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? quantity = null,Object? nutrients = null,Object? isAllergy = null,Object? isHeat = null,Object? origin = freezed,}) {
  return _then(_FoodstuffModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as QuantityModel,nutrients: null == nutrients ? _self.nutrients : nutrients // ignore: cast_nullable_to_non_nullable
as NutrientsModel,isAllergy: null == isAllergy ? _self.isAllergy : isAllergy // ignore: cast_nullable_to_non_nullable
as bool,isHeat: null == isHeat ? _self.isHeat : isHeat // ignore: cast_nullable_to_non_nullable
as bool,origin: freezed == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of FoodstuffModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QuantityModelCopyWith<$Res> get quantity {
  
  return $QuantityModelCopyWith<$Res>(_self.quantity, (value) {
    return _then(_self.copyWith(quantity: value));
  });
}/// Create a copy of FoodstuffModel
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
