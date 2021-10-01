// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'school_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SchoolModelTearOff {
  const _$SchoolModelTearOff();

  _SchoolModel call(
      {required int id,
      required int parentId,
      required String name,
      int? lunchBlock,
      required int classification}) {
    return _SchoolModel(
      id: id,
      parentId: parentId,
      name: name,
      lunchBlock: lunchBlock,
      classification: classification,
    );
  }
}

/// @nodoc
const $SchoolModel = _$SchoolModelTearOff();

/// @nodoc
mixin _$SchoolModel {
  int get id => throw _privateConstructorUsedError; // ID
  int get parentId => throw _privateConstructorUsedError; // 親学校(給食センター)のID
  String get name => throw _privateConstructorUsedError; // 学校名
  int? get lunchBlock => throw _privateConstructorUsedError; // 給食区分: 1 ~ 10
  int get classification => throw _privateConstructorUsedError;

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
      {int id, int parentId, String name, int? lunchBlock, int classification});
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
              as int,
    ));
  }
}

/// @nodoc
abstract class _$SchoolModelCopyWith<$Res>
    implements $SchoolModelCopyWith<$Res> {
  factory _$SchoolModelCopyWith(
          _SchoolModel value, $Res Function(_SchoolModel) then) =
      __$SchoolModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id, int parentId, String name, int? lunchBlock, int classification});
}

/// @nodoc
class __$SchoolModelCopyWithImpl<$Res> extends _$SchoolModelCopyWithImpl<$Res>
    implements _$SchoolModelCopyWith<$Res> {
  __$SchoolModelCopyWithImpl(
      _SchoolModel _value, $Res Function(_SchoolModel) _then)
      : super(_value, (v) => _then(v as _SchoolModel));

  @override
  _SchoolModel get _value => super._value as _SchoolModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? parentId = freezed,
    Object? name = freezed,
    Object? lunchBlock = freezed,
    Object? classification = freezed,
  }) {
    return _then(_SchoolModel(
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
      this.lunchBlock,
      required this.classification});

  @override
  final int id;
  @override // ID
  final int parentId;
  @override // 親学校(給食センター)のID
  final String name;
  @override // 学校名
  final int? lunchBlock;
  @override // 給食区分: 1 ~ 10
  final int classification;

  @override
  String toString() {
    return 'SchoolModel(id: $id, parentId: $parentId, name: $name, lunchBlock: $lunchBlock, classification: $classification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SchoolModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.lunchBlock, lunchBlock) ||
                const DeepCollectionEquality()
                    .equals(other.lunchBlock, lunchBlock)) &&
            (identical(other.classification, classification) ||
                const DeepCollectionEquality()
                    .equals(other.classification, classification)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(lunchBlock) ^
      const DeepCollectionEquality().hash(classification);

  @JsonKey(ignore: true)
  @override
  _$SchoolModelCopyWith<_SchoolModel> get copyWith =>
      __$SchoolModelCopyWithImpl<_SchoolModel>(this, _$identity);
}

abstract class _SchoolModel implements SchoolModel {
  const factory _SchoolModel(
      {required int id,
      required int parentId,
      required String name,
      int? lunchBlock,
      required int classification}) = _$_SchoolModel;

  @override
  int get id => throw _privateConstructorUsedError;
  @override // ID
  int get parentId => throw _privateConstructorUsedError;
  @override // 親学校(給食センター)のID
  String get name => throw _privateConstructorUsedError;
  @override // 学校名
  int? get lunchBlock => throw _privateConstructorUsedError;
  @override // 給食区分: 1 ~ 10
  int get classification => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SchoolModelCopyWith<_SchoolModel> get copyWith =>
      throw _privateConstructorUsedError;
}
