// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'foodstuff_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FoodstuffModel {
  String get name => throw _privateConstructorUsedError; // 食材名
  QuantityModel get quantity => throw _privateConstructorUsedError; // 分量
  NutrientsModel get nutrients => throw _privateConstructorUsedError; // 栄養素
  bool get isAllergy => throw _privateConstructorUsedError; // アレルギー食品
  bool get isHeat => throw _privateConstructorUsedError; // 熱加工食品
  String? get origin => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FoodstuffModelCopyWith<FoodstuffModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodstuffModelCopyWith<$Res> {
  factory $FoodstuffModelCopyWith(
          FoodstuffModel value, $Res Function(FoodstuffModel) then) =
      _$FoodstuffModelCopyWithImpl<$Res, FoodstuffModel>;
  @useResult
  $Res call(
      {String name,
      QuantityModel quantity,
      NutrientsModel nutrients,
      bool isAllergy,
      bool isHeat,
      String? origin});

  $QuantityModelCopyWith<$Res> get quantity;
  $NutrientsModelCopyWith<$Res> get nutrients;
}

/// @nodoc
class _$FoodstuffModelCopyWithImpl<$Res, $Val extends FoodstuffModel>
    implements $FoodstuffModelCopyWith<$Res> {
  _$FoodstuffModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? quantity = null,
    Object? nutrients = null,
    Object? isAllergy = null,
    Object? isHeat = null,
    Object? origin = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as QuantityModel,
      nutrients: null == nutrients
          ? _value.nutrients
          : nutrients // ignore: cast_nullable_to_non_nullable
              as NutrientsModel,
      isAllergy: null == isAllergy
          ? _value.isAllergy
          : isAllergy // ignore: cast_nullable_to_non_nullable
              as bool,
      isHeat: null == isHeat
          ? _value.isHeat
          : isHeat // ignore: cast_nullable_to_non_nullable
              as bool,
      origin: freezed == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuantityModelCopyWith<$Res> get quantity {
    return $QuantityModelCopyWith<$Res>(_value.quantity, (value) {
      return _then(_value.copyWith(quantity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NutrientsModelCopyWith<$Res> get nutrients {
    return $NutrientsModelCopyWith<$Res>(_value.nutrients, (value) {
      return _then(_value.copyWith(nutrients: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FoodstuffModelCopyWith<$Res>
    implements $FoodstuffModelCopyWith<$Res> {
  factory _$$_FoodstuffModelCopyWith(
          _$_FoodstuffModel value, $Res Function(_$_FoodstuffModel) then) =
      __$$_FoodstuffModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      QuantityModel quantity,
      NutrientsModel nutrients,
      bool isAllergy,
      bool isHeat,
      String? origin});

  @override
  $QuantityModelCopyWith<$Res> get quantity;
  @override
  $NutrientsModelCopyWith<$Res> get nutrients;
}

/// @nodoc
class __$$_FoodstuffModelCopyWithImpl<$Res>
    extends _$FoodstuffModelCopyWithImpl<$Res, _$_FoodstuffModel>
    implements _$$_FoodstuffModelCopyWith<$Res> {
  __$$_FoodstuffModelCopyWithImpl(
      _$_FoodstuffModel _value, $Res Function(_$_FoodstuffModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? quantity = null,
    Object? nutrients = null,
    Object? isAllergy = null,
    Object? isHeat = null,
    Object? origin = freezed,
  }) {
    return _then(_$_FoodstuffModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as QuantityModel,
      nutrients: null == nutrients
          ? _value.nutrients
          : nutrients // ignore: cast_nullable_to_non_nullable
              as NutrientsModel,
      isAllergy: null == isAllergy
          ? _value.isAllergy
          : isAllergy // ignore: cast_nullable_to_non_nullable
              as bool,
      isHeat: null == isHeat
          ? _value.isHeat
          : isHeat // ignore: cast_nullable_to_non_nullable
              as bool,
      origin: freezed == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_FoodstuffModel implements _FoodstuffModel {
  const _$_FoodstuffModel(
      {required this.name,
      required this.quantity,
      required this.nutrients,
      this.isAllergy = false,
      this.isHeat = false,
      this.origin});

  @override
  final String name;
// 食材名
  @override
  final QuantityModel quantity;
// 分量
  @override
  final NutrientsModel nutrients;
// 栄養素
  @override
  @JsonKey()
  final bool isAllergy;
// アレルギー食品
  @override
  @JsonKey()
  final bool isHeat;
// 熱加工食品
  @override
  final String? origin;

  @override
  String toString() {
    return 'FoodstuffModel(name: $name, quantity: $quantity, nutrients: $nutrients, isAllergy: $isAllergy, isHeat: $isHeat, origin: $origin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FoodstuffModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.nutrients, nutrients) ||
                other.nutrients == nutrients) &&
            (identical(other.isAllergy, isAllergy) ||
                other.isAllergy == isAllergy) &&
            (identical(other.isHeat, isHeat) || other.isHeat == isHeat) &&
            (identical(other.origin, origin) || other.origin == origin));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, quantity, nutrients, isAllergy, isHeat, origin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FoodstuffModelCopyWith<_$_FoodstuffModel> get copyWith =>
      __$$_FoodstuffModelCopyWithImpl<_$_FoodstuffModel>(this, _$identity);
}

abstract class _FoodstuffModel implements FoodstuffModel {
  const factory _FoodstuffModel(
      {required final String name,
      required final QuantityModel quantity,
      required final NutrientsModel nutrients,
      final bool isAllergy,
      final bool isHeat,
      final String? origin}) = _$_FoodstuffModel;

  @override
  String get name;
  @override // 食材名
  QuantityModel get quantity;
  @override // 分量
  NutrientsModel get nutrients;
  @override // 栄養素
  bool get isAllergy;
  @override // アレルギー食品
  bool get isHeat;
  @override // 熱加工食品
  String? get origin;
  @override
  @JsonKey(ignore: true)
  _$$_FoodstuffModelCopyWith<_$_FoodstuffModel> get copyWith =>
      throw _privateConstructorUsedError;
}
