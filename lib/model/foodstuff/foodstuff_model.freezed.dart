// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$FoodstuffModelCopyWithImpl<$Res>;
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
class _$FoodstuffModelCopyWithImpl<$Res>
    implements $FoodstuffModelCopyWith<$Res> {
  _$FoodstuffModelCopyWithImpl(this._value, this._then);

  final FoodstuffModel _value;
  // ignore: unused_field
  final $Res Function(FoodstuffModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? quantity = freezed,
    Object? nutrients = freezed,
    Object? isAllergy = freezed,
    Object? isHeat = freezed,
    Object? origin = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as QuantityModel,
      nutrients: nutrients == freezed
          ? _value.nutrients
          : nutrients // ignore: cast_nullable_to_non_nullable
              as NutrientsModel,
      isAllergy: isAllergy == freezed
          ? _value.isAllergy
          : isAllergy // ignore: cast_nullable_to_non_nullable
              as bool,
      isHeat: isHeat == freezed
          ? _value.isHeat
          : isHeat // ignore: cast_nullable_to_non_nullable
              as bool,
      origin: origin == freezed
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $QuantityModelCopyWith<$Res> get quantity {
    return $QuantityModelCopyWith<$Res>(_value.quantity, (value) {
      return _then(_value.copyWith(quantity: value));
    });
  }

  @override
  $NutrientsModelCopyWith<$Res> get nutrients {
    return $NutrientsModelCopyWith<$Res>(_value.nutrients, (value) {
      return _then(_value.copyWith(nutrients: value));
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
    extends _$FoodstuffModelCopyWithImpl<$Res>
    implements _$$_FoodstuffModelCopyWith<$Res> {
  __$$_FoodstuffModelCopyWithImpl(
      _$_FoodstuffModel _value, $Res Function(_$_FoodstuffModel) _then)
      : super(_value, (v) => _then(v as _$_FoodstuffModel));

  @override
  _$_FoodstuffModel get _value => super._value as _$_FoodstuffModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? quantity = freezed,
    Object? nutrients = freezed,
    Object? isAllergy = freezed,
    Object? isHeat = freezed,
    Object? origin = freezed,
  }) {
    return _then(_$_FoodstuffModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as QuantityModel,
      nutrients: nutrients == freezed
          ? _value.nutrients
          : nutrients // ignore: cast_nullable_to_non_nullable
              as NutrientsModel,
      isAllergy: isAllergy == freezed
          ? _value.isAllergy
          : isAllergy // ignore: cast_nullable_to_non_nullable
              as bool,
      isHeat: isHeat == freezed
          ? _value.isHeat
          : isHeat // ignore: cast_nullable_to_non_nullable
              as bool,
      origin: origin == freezed
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
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.nutrients, nutrients) &&
            const DeepCollectionEquality().equals(other.isAllergy, isAllergy) &&
            const DeepCollectionEquality().equals(other.isHeat, isHeat) &&
            const DeepCollectionEquality().equals(other.origin, origin));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(nutrients),
      const DeepCollectionEquality().hash(isAllergy),
      const DeepCollectionEquality().hash(isHeat),
      const DeepCollectionEquality().hash(origin));

  @JsonKey(ignore: true)
  @override
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
  String get name => throw _privateConstructorUsedError;
  @override // 食材名
  QuantityModel get quantity => throw _privateConstructorUsedError;
  @override // 分量
  NutrientsModel get nutrients => throw _privateConstructorUsedError;
  @override // 栄養素
  bool get isAllergy => throw _privateConstructorUsedError;
  @override // アレルギー食品
  bool get isHeat => throw _privateConstructorUsedError;
  @override // 熱加工食品
  String? get origin => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FoodstuffModelCopyWith<_$_FoodstuffModel> get copyWith =>
      throw _privateConstructorUsedError;
}
