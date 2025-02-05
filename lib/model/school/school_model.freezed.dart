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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SchoolModel {
  /// ID
  int get id => throw _privateConstructorUsedError;

  /// 親学校(給食センター)のID
  int get parentId => throw _privateConstructorUsedError;

  /// 学校名
  String get name => throw _privateConstructorUsedError;

  /// 学校区分
  SchoolClassification get classification => throw _privateConstructorUsedError;

  /// 給食区分: 1 ~ 10
  int get lunchBlock => throw _privateConstructorUsedError;

  /// 認可が必要かどうか: trueの場合、認可が必要
  bool get authorizationRequired => throw _privateConstructorUsedError;

  /// 認可のkeyの更新日時
  DateTime? get authorizationKeyUpdatedAt => throw _privateConstructorUsedError;

  /// Create a copy of SchoolModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      int lunchBlock,
      bool authorizationRequired,
      DateTime? authorizationKeyUpdatedAt});
}

/// @nodoc
class _$SchoolModelCopyWithImpl<$Res, $Val extends SchoolModel>
    implements $SchoolModelCopyWith<$Res> {
  _$SchoolModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SchoolModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? name = null,
    Object? classification = null,
    Object? lunchBlock = null,
    Object? authorizationRequired = null,
    Object? authorizationKeyUpdatedAt = freezed,
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
      authorizationRequired: null == authorizationRequired
          ? _value.authorizationRequired
          : authorizationRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      authorizationKeyUpdatedAt: freezed == authorizationKeyUpdatedAt
          ? _value.authorizationKeyUpdatedAt
          : authorizationKeyUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SchoolModelImplCopyWith<$Res>
    implements $SchoolModelCopyWith<$Res> {
  factory _$$SchoolModelImplCopyWith(
          _$SchoolModelImpl value, $Res Function(_$SchoolModelImpl) then) =
      __$$SchoolModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int parentId,
      String name,
      SchoolClassification classification,
      int lunchBlock,
      bool authorizationRequired,
      DateTime? authorizationKeyUpdatedAt});
}

/// @nodoc
class __$$SchoolModelImplCopyWithImpl<$Res>
    extends _$SchoolModelCopyWithImpl<$Res, _$SchoolModelImpl>
    implements _$$SchoolModelImplCopyWith<$Res> {
  __$$SchoolModelImplCopyWithImpl(
      _$SchoolModelImpl _value, $Res Function(_$SchoolModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SchoolModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? name = null,
    Object? classification = null,
    Object? lunchBlock = null,
    Object? authorizationRequired = null,
    Object? authorizationKeyUpdatedAt = freezed,
  }) {
    return _then(_$SchoolModelImpl(
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
      authorizationRequired: null == authorizationRequired
          ? _value.authorizationRequired
          : authorizationRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      authorizationKeyUpdatedAt: freezed == authorizationKeyUpdatedAt
          ? _value.authorizationKeyUpdatedAt
          : authorizationKeyUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$SchoolModelImpl extends _SchoolModel {
  const _$SchoolModelImpl(
      {required this.id,
      required this.parentId,
      required this.name,
      required this.classification,
      required this.lunchBlock,
      required this.authorizationRequired,
      this.authorizationKeyUpdatedAt})
      : super._();

  /// ID
  @override
  final int id;

  /// 親学校(給食センター)のID
  @override
  final int parentId;

  /// 学校名
  @override
  final String name;

  /// 学校区分
  @override
  final SchoolClassification classification;

  /// 給食区分: 1 ~ 10
  @override
  final int lunchBlock;

  /// 認可が必要かどうか: trueの場合、認可が必要
  @override
  final bool authorizationRequired;

  /// 認可のkeyの更新日時
  @override
  final DateTime? authorizationKeyUpdatedAt;

  @override
  String toString() {
    return 'SchoolModel(id: $id, parentId: $parentId, name: $name, classification: $classification, lunchBlock: $lunchBlock, authorizationRequired: $authorizationRequired, authorizationKeyUpdatedAt: $authorizationKeyUpdatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchoolModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.classification, classification) ||
                other.classification == classification) &&
            (identical(other.lunchBlock, lunchBlock) ||
                other.lunchBlock == lunchBlock) &&
            (identical(other.authorizationRequired, authorizationRequired) ||
                other.authorizationRequired == authorizationRequired) &&
            (identical(other.authorizationKeyUpdatedAt,
                    authorizationKeyUpdatedAt) ||
                other.authorizationKeyUpdatedAt == authorizationKeyUpdatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      parentId,
      name,
      classification,
      lunchBlock,
      authorizationRequired,
      authorizationKeyUpdatedAt);

  /// Create a copy of SchoolModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SchoolModelImplCopyWith<_$SchoolModelImpl> get copyWith =>
      __$$SchoolModelImplCopyWithImpl<_$SchoolModelImpl>(this, _$identity);
}

abstract class _SchoolModel extends SchoolModel {
  const factory _SchoolModel(
      {required final int id,
      required final int parentId,
      required final String name,
      required final SchoolClassification classification,
      required final int lunchBlock,
      required final bool authorizationRequired,
      final DateTime? authorizationKeyUpdatedAt}) = _$SchoolModelImpl;
  const _SchoolModel._() : super._();

  /// ID
  @override
  int get id;

  /// 親学校(給食センター)のID
  @override
  int get parentId;

  /// 学校名
  @override
  String get name;

  /// 学校区分
  @override
  SchoolClassification get classification;

  /// 給食区分: 1 ~ 10
  @override
  int get lunchBlock;

  /// 認可が必要かどうか: trueの場合、認可が必要
  @override
  bool get authorizationRequired;

  /// 認可のkeyの更新日時
  @override
  DateTime? get authorizationKeyUpdatedAt;

  /// Create a copy of SchoolModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SchoolModelImplCopyWith<_$SchoolModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
