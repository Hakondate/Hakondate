// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dictionary_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DictionaryItemModel {
  /// ID
  int get id => throw _privateConstructorUsedError;

  /// 食品分類（1 ~ 18群）
  DictionaryGroup get group => throw _privateConstructorUsedError;

  /// 食材名
  String get name => throw _privateConstructorUsedError;

  /// 栄養素
  NutrientsModel get nutrients => throw _privateConstructorUsedError;

  /// 備考
  String? get note => throw _privateConstructorUsedError;

  /// Create a copy of DictionaryItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DictionaryItemModelCopyWith<DictionaryItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryItemModelCopyWith<$Res> {
  factory $DictionaryItemModelCopyWith(
          DictionaryItemModel value, $Res Function(DictionaryItemModel) then) =
      _$DictionaryItemModelCopyWithImpl<$Res, DictionaryItemModel>;
  @useResult
  $Res call(
      {int id,
      DictionaryGroup group,
      String name,
      NutrientsModel nutrients,
      String? note});

  $NutrientsModelCopyWith<$Res> get nutrients;
}

/// @nodoc
class _$DictionaryItemModelCopyWithImpl<$Res, $Val extends DictionaryItemModel>
    implements $DictionaryItemModelCopyWith<$Res> {
  _$DictionaryItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DictionaryItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? group = null,
    Object? name = null,
    Object? nutrients = null,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as DictionaryGroup,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nutrients: null == nutrients
          ? _value.nutrients
          : nutrients // ignore: cast_nullable_to_non_nullable
              as NutrientsModel,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of DictionaryItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NutrientsModelCopyWith<$Res> get nutrients {
    return $NutrientsModelCopyWith<$Res>(_value.nutrients, (value) {
      return _then(_value.copyWith(nutrients: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DictionaryItemModelImplCopyWith<$Res>
    implements $DictionaryItemModelCopyWith<$Res> {
  factory _$$DictionaryItemModelImplCopyWith(_$DictionaryItemModelImpl value,
          $Res Function(_$DictionaryItemModelImpl) then) =
      __$$DictionaryItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DictionaryGroup group,
      String name,
      NutrientsModel nutrients,
      String? note});

  @override
  $NutrientsModelCopyWith<$Res> get nutrients;
}

/// @nodoc
class __$$DictionaryItemModelImplCopyWithImpl<$Res>
    extends _$DictionaryItemModelCopyWithImpl<$Res, _$DictionaryItemModelImpl>
    implements _$$DictionaryItemModelImplCopyWith<$Res> {
  __$$DictionaryItemModelImplCopyWithImpl(_$DictionaryItemModelImpl _value,
      $Res Function(_$DictionaryItemModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DictionaryItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? group = null,
    Object? name = null,
    Object? nutrients = null,
    Object? note = freezed,
  }) {
    return _then(_$DictionaryItemModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as DictionaryGroup,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nutrients: null == nutrients
          ? _value.nutrients
          : nutrients // ignore: cast_nullable_to_non_nullable
              as NutrientsModel,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DictionaryItemModelImpl extends _DictionaryItemModel {
  const _$DictionaryItemModelImpl(
      {required this.id,
      required this.group,
      required this.name,
      required this.nutrients,
      this.note})
      : super._();

  /// ID
  @override
  final int id;

  /// 食品分類（1 ~ 18群）
  @override
  final DictionaryGroup group;

  /// 食材名
  @override
  final String name;

  /// 栄養素
  @override
  final NutrientsModel nutrients;

  /// 備考
  @override
  final String? note;

  @override
  String toString() {
    return 'DictionaryItemModel(id: $id, group: $group, name: $name, nutrients: $nutrients, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DictionaryItemModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nutrients, nutrients) ||
                other.nutrients == nutrients) &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, group, name, nutrients, note);

  /// Create a copy of DictionaryItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DictionaryItemModelImplCopyWith<_$DictionaryItemModelImpl> get copyWith =>
      __$$DictionaryItemModelImplCopyWithImpl<_$DictionaryItemModelImpl>(
          this, _$identity);
}

abstract class _DictionaryItemModel extends DictionaryItemModel {
  const factory _DictionaryItemModel(
      {required final int id,
      required final DictionaryGroup group,
      required final String name,
      required final NutrientsModel nutrients,
      final String? note}) = _$DictionaryItemModelImpl;
  const _DictionaryItemModel._() : super._();

  /// ID
  @override
  int get id;

  /// 食品分類（1 ~ 18群）
  @override
  DictionaryGroup get group;

  /// 食材名
  @override
  String get name;

  /// 栄養素
  @override
  NutrientsModel get nutrients;

  /// 備考
  @override
  String? get note;

  /// Create a copy of DictionaryItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DictionaryItemModelImplCopyWith<_$DictionaryItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
