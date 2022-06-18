// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'school_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SchoolModel {
  int get id => throw _privateConstructorUsedError; // ID
  int get parentId => throw _privateConstructorUsedError; // 親学校(給食センター)のID
  String get name => throw _privateConstructorUsedError; // 学校名
  int? get lunchBlock => throw _privateConstructorUsedError; // 給食区分: 1 ~ 10
  SchoolClassification get classification => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SchoolModelCopyWith<SchoolModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchoolModelCopyWith<$Res> {
  factory $SchoolModelCopyWith(
          SchoolModel value, $Res Function(SchoolModel) then) =
      _$SchoolModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      int parentId,
      String name,
      int? lunchBlock,
      SchoolClassification classification});
}

/// @nodoc
class _$SchoolModelCopyWithImpl<$Res> implements $SchoolModelCopyWith<$Res> {
  _$SchoolModelCopyWithImpl(this._value, this._then);

  final SchoolModel _value;
  // ignore: unused_field
  final $Res Function(SchoolModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? parentId = freezed,
    Object? name = freezed,
    Object? lunchBlock = freezed,
    Object? classification = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lunchBlock: lunchBlock == freezed
          ? _value.lunchBlock
          : lunchBlock // ignore: cast_nullable_to_non_nullable
              as int?,
      classification: classification == freezed
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as SchoolClassification,
    ));
  }
}

/// @nodoc
abstract class _$$_SchoolModelCopyWith<$Res>
    implements $SchoolModelCopyWith<$Res> {
  factory _$$_SchoolModelCopyWith(
          _$_SchoolModel value, $Res Function(_$_SchoolModel) then) =
      __$$_SchoolModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      int parentId,
      String name,
      int? lunchBlock,
      SchoolClassification classification});
}

/// @nodoc
class __$$_SchoolModelCopyWithImpl<$Res> extends _$SchoolModelCopyWithImpl<$Res>
    implements _$$_SchoolModelCopyWith<$Res> {
  __$$_SchoolModelCopyWithImpl(
      _$_SchoolModel _value, $Res Function(_$_SchoolModel) _then)
      : super(_value, (v) => _then(v as _$_SchoolModel));

  @override
  _$_SchoolModel get _value => super._value as _$_SchoolModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? parentId = freezed,
    Object? name = freezed,
    Object? lunchBlock = freezed,
    Object? classification = freezed,
  }) {
    return _then(_$_SchoolModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lunchBlock: lunchBlock == freezed
          ? _value.lunchBlock
          : lunchBlock // ignore: cast_nullable_to_non_nullable
              as int?,
      classification: classification == freezed
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as SchoolClassification,
    ));
  }
}

/// @nodoc

class _$_SchoolModel implements _SchoolModel {
  const _$_SchoolModel(
      {required this.id,
      required this.parentId,
      required this.name,
      this.lunchBlock,
      required this.classification});

  @override
  final int id;
// ID
  @override
  final int parentId;
// 親学校(給食センター)のID
  @override
  final String name;
// 学校名
  @override
  final int? lunchBlock;
// 給食区分: 1 ~ 10
  @override
  final SchoolClassification classification;

  @override
  String toString() {
    return 'SchoolModel(id: $id, parentId: $parentId, name: $name, lunchBlock: $lunchBlock, classification: $classification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SchoolModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.parentId, parentId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.lunchBlock, lunchBlock) &&
            const DeepCollectionEquality()
                .equals(other.classification, classification));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(parentId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(lunchBlock),
      const DeepCollectionEquality().hash(classification));

  @JsonKey(ignore: true)
  @override
  _$$_SchoolModelCopyWith<_$_SchoolModel> get copyWith =>
      __$$_SchoolModelCopyWithImpl<_$_SchoolModel>(this, _$identity);
}

abstract class _SchoolModel implements SchoolModel {
  const factory _SchoolModel(
      {required final int id,
      required final int parentId,
      required final String name,
      final int? lunchBlock,
      required final SchoolClassification classification}) = _$_SchoolModel;

  @override
  int get id => throw _privateConstructorUsedError;
  @override // ID
  int get parentId => throw _privateConstructorUsedError;
  @override // 親学校(給食センター)のID
  String get name => throw _privateConstructorUsedError;
  @override // 学校名
  int? get lunchBlock => throw _privateConstructorUsedError;
  @override // 給食区分: 1 ~ 10
  SchoolClassification get classification => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SchoolModelCopyWith<_$_SchoolModel> get copyWith =>
      throw _privateConstructorUsedError;
}
