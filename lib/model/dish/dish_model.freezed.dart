// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dish_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DishModel {
  /// 料理名
  String get name;

  /// 食材
  List<FoodstuffModel> get foodstuffs;

  /// 分類
  DishCategory? get category;

  /// Create a copy of DishModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DishModelCopyWith<DishModel> get copyWith =>
      _$DishModelCopyWithImpl<DishModel>(this as DishModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DishModel &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other.foodstuffs, foodstuffs) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name,
      const DeepCollectionEquality().hash(foodstuffs), category);

  @override
  String toString() {
    return 'DishModel(name: $name, foodstuffs: $foodstuffs, category: $category)';
  }
}

/// @nodoc
abstract mixin class $DishModelCopyWith<$Res> {
  factory $DishModelCopyWith(DishModel value, $Res Function(DishModel) _then) =
      _$DishModelCopyWithImpl;
  @useResult
  $Res call(
      {String name, List<FoodstuffModel> foodstuffs, DishCategory? category});
}

/// @nodoc
class _$DishModelCopyWithImpl<$Res> implements $DishModelCopyWith<$Res> {
  _$DishModelCopyWithImpl(this._self, this._then);

  final DishModel _self;
  final $Res Function(DishModel) _then;

  /// Create a copy of DishModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? foodstuffs = null,
    Object? category = freezed,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      foodstuffs: null == foodstuffs
          ? _self.foodstuffs
          : foodstuffs // ignore: cast_nullable_to_non_nullable
              as List<FoodstuffModel>,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as DishCategory?,
    ));
  }
}

/// @nodoc

class _DishModel extends DishModel {
  const _DishModel(
      {required this.name,
      required final List<FoodstuffModel> foodstuffs,
      this.category})
      : _foodstuffs = foodstuffs,
        super._();

  /// 料理名
  @override
  final String name;

  /// 食材
  final List<FoodstuffModel> _foodstuffs;

  /// 食材
  @override
  List<FoodstuffModel> get foodstuffs {
    if (_foodstuffs is EqualUnmodifiableListView) return _foodstuffs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_foodstuffs);
  }

  /// 分類
  @override
  final DishCategory? category;

  /// Create a copy of DishModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DishModelCopyWith<_DishModel> get copyWith =>
      __$DishModelCopyWithImpl<_DishModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DishModel &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._foodstuffs, _foodstuffs) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name,
      const DeepCollectionEquality().hash(_foodstuffs), category);

  @override
  String toString() {
    return 'DishModel(name: $name, foodstuffs: $foodstuffs, category: $category)';
  }
}

/// @nodoc
abstract mixin class _$DishModelCopyWith<$Res>
    implements $DishModelCopyWith<$Res> {
  factory _$DishModelCopyWith(
          _DishModel value, $Res Function(_DishModel) _then) =
      __$DishModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name, List<FoodstuffModel> foodstuffs, DishCategory? category});
}

/// @nodoc
class __$DishModelCopyWithImpl<$Res> implements _$DishModelCopyWith<$Res> {
  __$DishModelCopyWithImpl(this._self, this._then);

  final _DishModel _self;
  final $Res Function(_DishModel) _then;

  /// Create a copy of DishModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? foodstuffs = null,
    Object? category = freezed,
  }) {
    return _then(_DishModel(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      foodstuffs: null == foodstuffs
          ? _self._foodstuffs
          : foodstuffs // ignore: cast_nullable_to_non_nullable
              as List<FoodstuffModel>,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as DishCategory?,
    ));
  }
}

// dart format on
