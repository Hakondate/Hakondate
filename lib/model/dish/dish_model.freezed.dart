// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dish_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DishModel {
  /// 料理名
  String get name => throw _privateConstructorUsedError;

  /// 食材
  List<FoodstuffModel> get foodstuffs => throw _privateConstructorUsedError;

  /// 分類
  DishCategory? get category => throw _privateConstructorUsedError;

  /// Create a copy of DishModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DishModelCopyWith<DishModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DishModelCopyWith<$Res> {
  factory $DishModelCopyWith(DishModel value, $Res Function(DishModel) then) =
      _$DishModelCopyWithImpl<$Res, DishModel>;
  @useResult
  $Res call(
      {String name, List<FoodstuffModel> foodstuffs, DishCategory? category});
}

/// @nodoc
class _$DishModelCopyWithImpl<$Res, $Val extends DishModel>
    implements $DishModelCopyWith<$Res> {
  _$DishModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DishModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? foodstuffs = null,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      foodstuffs: null == foodstuffs
          ? _value.foodstuffs
          : foodstuffs // ignore: cast_nullable_to_non_nullable
              as List<FoodstuffModel>,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as DishCategory?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DishModelImplCopyWith<$Res>
    implements $DishModelCopyWith<$Res> {
  factory _$$DishModelImplCopyWith(
          _$DishModelImpl value, $Res Function(_$DishModelImpl) then) =
      __$$DishModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, List<FoodstuffModel> foodstuffs, DishCategory? category});
}

/// @nodoc
class __$$DishModelImplCopyWithImpl<$Res>
    extends _$DishModelCopyWithImpl<$Res, _$DishModelImpl>
    implements _$$DishModelImplCopyWith<$Res> {
  __$$DishModelImplCopyWithImpl(
      _$DishModelImpl _value, $Res Function(_$DishModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DishModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? foodstuffs = null,
    Object? category = freezed,
  }) {
    return _then(_$DishModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      foodstuffs: null == foodstuffs
          ? _value._foodstuffs
          : foodstuffs // ignore: cast_nullable_to_non_nullable
              as List<FoodstuffModel>,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as DishCategory?,
    ));
  }
}

/// @nodoc

class _$DishModelImpl extends _DishModel {
  const _$DishModelImpl(
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

  @override
  String toString() {
    return 'DishModel(name: $name, foodstuffs: $foodstuffs, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DishModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._foodstuffs, _foodstuffs) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name,
      const DeepCollectionEquality().hash(_foodstuffs), category);

  /// Create a copy of DishModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DishModelImplCopyWith<_$DishModelImpl> get copyWith =>
      __$$DishModelImplCopyWithImpl<_$DishModelImpl>(this, _$identity);
}

abstract class _DishModel extends DishModel {
  const factory _DishModel(
      {required final String name,
      required final List<FoodstuffModel> foodstuffs,
      final DishCategory? category}) = _$DishModelImpl;
  const _DishModel._() : super._();

  /// 料理名
  @override
  String get name;

  /// 食材
  @override
  List<FoodstuffModel> get foodstuffs;

  /// 分類
  @override
  DishCategory? get category;

  /// Create a copy of DishModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DishModelImplCopyWith<_$DishModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
