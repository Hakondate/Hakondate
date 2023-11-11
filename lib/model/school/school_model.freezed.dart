// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  SchoolClassification get classification =>
      throw _privateConstructorUsedError; // 学校区分
  int get lunchBlock => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SchoolModelCopyWith<SchoolModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchoolModelCopyWith<$Res> {
  factory $SchoolModelCopyWith(
          SchoolModel value, $Res Function(SchoolModel) then) =
      _$SchoolModelCopyWithImpl<$Res, SchoolModel>;
  @useResult
  $Res call(
      {int id,
      int parentId,
      String name,
      SchoolClassification classification,
      int lunchBlock});
}

/// @nodoc
class _$SchoolModelCopyWithImpl<$Res, $Val extends SchoolModel>
    implements $SchoolModelCopyWith<$Res> {
  _$SchoolModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? name = null,
    Object? classification = null,
    Object? lunchBlock = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      classification: null == classification
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as SchoolClassification,
      lunchBlock: null == lunchBlock
          ? _value.lunchBlock
          : lunchBlock // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SchoolModelCopyWith<$Res>
    implements $SchoolModelCopyWith<$Res> {
  factory _$$_SchoolModelCopyWith(
          _$_SchoolModel value, $Res Function(_$_SchoolModel) then) =
      __$$_SchoolModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int parentId,
      String name,
      SchoolClassification classification,
      int lunchBlock});
}

/// @nodoc
class __$$_SchoolModelCopyWithImpl<$Res>
    extends _$SchoolModelCopyWithImpl<$Res, _$_SchoolModel>
    implements _$$_SchoolModelCopyWith<$Res> {
  __$$_SchoolModelCopyWithImpl(
      _$_SchoolModel _value, $Res Function(_$_SchoolModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? name = null,
    Object? classification = null,
    Object? lunchBlock = null,
  }) {
    return _then(_$_SchoolModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      classification: null == classification
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as SchoolClassification,
      lunchBlock: null == lunchBlock
          ? _value.lunchBlock
          : lunchBlock // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SchoolModel implements _SchoolModel {
  const _$_SchoolModel(
      {required this.id,
      required this.parentId,
      required this.name,
      required this.classification,
      required this.lunchBlock});

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
  final SchoolClassification classification;
// 学校区分
  @override
  final int lunchBlock;

  @override
  String toString() {
    return 'SchoolModel(id: $id, parentId: $parentId, name: $name, classification: $classification, lunchBlock: $lunchBlock)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SchoolModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.classification, classification) ||
                other.classification == classification) &&
            (identical(other.lunchBlock, lunchBlock) ||
                other.lunchBlock == lunchBlock));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, parentId, name, classification, lunchBlock);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SchoolModelCopyWith<_$_SchoolModel> get copyWith =>
      __$$_SchoolModelCopyWithImpl<_$_SchoolModel>(this, _$identity);
}

abstract class _SchoolModel implements SchoolModel {
  const factory _SchoolModel(
      {required final int id,
      required final int parentId,
      required final String name,
      required final SchoolClassification classification,
      required final int lunchBlock}) = _$_SchoolModel;

  @override
  int get id;
  @override // ID
  int get parentId;
  @override // 親学校(給食センター)のID
  String get name;
  @override // 学校名
  SchoolClassification get classification;
  @override // 学校区分
  int get lunchBlock;
  @override
  @JsonKey(ignore: true)
  _$$_SchoolModelCopyWith<_$_SchoolModel> get copyWith =>
      throw _privateConstructorUsedError;
}
