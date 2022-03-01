// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dish_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DishModelTearOff {
  const _$DishModelTearOff();

  _DishModel call(
      {required String name,
      required List<FoodstuffModel> foodstuffs,
      DishCategory? category}) {
    return _DishModel(
      name: name,
      foodstuffs: foodstuffs,
      category: category,
    );
  }
}

/// @nodoc
const $DishModel = _$DishModelTearOff();

/// @nodoc
mixin _$DishModel {
  String get name => throw _privateConstructorUsedError; // 料理名
  List<FoodstuffModel> get foodstuffs =>
      throw _privateConstructorUsedError; // 食材
  DishCategory? get category => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DishModelCopyWith<DishModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DishModelCopyWith<$Res> {
  factory $DishModelCopyWith(DishModel value, $Res Function(DishModel) then) =
      _$DishModelCopyWithImpl<$Res>;
  $Res call(
      {String name, List<FoodstuffModel> foodstuffs, DishCategory? category});
}

/// @nodoc
class _$DishModelCopyWithImpl<$Res> implements $DishModelCopyWith<$Res> {
  _$DishModelCopyWithImpl(this._value, this._then);

  final DishModel _value;
  // ignore: unused_field
  final $Res Function(DishModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? foodstuffs = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      foodstuffs: foodstuffs == freezed
          ? _value.foodstuffs
          : foodstuffs // ignore: cast_nullable_to_non_nullable
              as List<FoodstuffModel>,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as DishCategory?,
    ));
  }
}

/// @nodoc
abstract class _$DishModelCopyWith<$Res> implements $DishModelCopyWith<$Res> {
  factory _$DishModelCopyWith(
          _DishModel value, $Res Function(_DishModel) then) =
      __$DishModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name, List<FoodstuffModel> foodstuffs, DishCategory? category});
}

/// @nodoc
class __$DishModelCopyWithImpl<$Res> extends _$DishModelCopyWithImpl<$Res>
    implements _$DishModelCopyWith<$Res> {
  __$DishModelCopyWithImpl(_DishModel _value, $Res Function(_DishModel) _then)
      : super(_value, (v) => _then(v as _DishModel));

  @override
  _DishModel get _value => super._value as _DishModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? foodstuffs = freezed,
    Object? category = freezed,
  }) {
    return _then(_DishModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      foodstuffs: foodstuffs == freezed
          ? _value.foodstuffs
          : foodstuffs // ignore: cast_nullable_to_non_nullable
              as List<FoodstuffModel>,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as DishCategory?,
    ));
  }
}

/// @nodoc

class _$_DishModel extends _DishModel {
  const _$_DishModel(
      {required this.name, required this.foodstuffs, this.category})
      : super._();

  @override
  final String name;
  @override // 料理名
  final List<FoodstuffModel> foodstuffs;
  @override // 食材
  final DishCategory? category;

  @override
  String toString() {
    return 'DishModel(name: $name, foodstuffs: $foodstuffs, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DishModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.foodstuffs, foodstuffs) &&
            const DeepCollectionEquality().equals(other.category, category));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(foodstuffs),
      const DeepCollectionEquality().hash(category));

  @JsonKey(ignore: true)
  @override
  _$DishModelCopyWith<_DishModel> get copyWith =>
      __$DishModelCopyWithImpl<_DishModel>(this, _$identity);
}

abstract class _DishModel extends DishModel {
  const factory _DishModel(
      {required String name,
      required List<FoodstuffModel> foodstuffs,
      DishCategory? category}) = _$_DishModel;
  const _DishModel._() : super._();

  @override
  String get name;
  @override // 料理名
  List<FoodstuffModel> get foodstuffs;
  @override // 食材
  DishCategory? get category;
  @override
  @JsonKey(ignore: true)
  _$DishModelCopyWith<_DishModel> get copyWith =>
      throw _privateConstructorUsedError;
}
