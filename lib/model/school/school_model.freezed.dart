// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'school_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SchoolModel {
  /// ID
  int get id;

  /// 親学校(給食センター)のID
  int get parentId;

  /// 学校名
  String get name;

  /// 学校区分
  SchoolClassification get classification;

  /// 給食区分: 1 ~ 10
  int get lunchBlock;

  /// 認可が必要かどうか: trueの場合、認可が必要
  bool get authorizationRequired;

  /// 認可のkeyの更新日時
  DateTime? get authorizationKeyUpdatedAt;

  /// Create a copy of SchoolModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SchoolModelCopyWith<SchoolModel> get copyWith =>
      _$SchoolModelCopyWithImpl<SchoolModel>(this as SchoolModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SchoolModel &&
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

  @override
  String toString() {
    return 'SchoolModel(id: $id, parentId: $parentId, name: $name, classification: $classification, lunchBlock: $lunchBlock, authorizationRequired: $authorizationRequired, authorizationKeyUpdatedAt: $authorizationKeyUpdatedAt)';
  }
}

/// @nodoc
abstract mixin class $SchoolModelCopyWith<$Res> {
  factory $SchoolModelCopyWith(
          SchoolModel value, $Res Function(SchoolModel) _then) =
      _$SchoolModelCopyWithImpl;
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
class _$SchoolModelCopyWithImpl<$Res> implements $SchoolModelCopyWith<$Res> {
  _$SchoolModelCopyWithImpl(this._self, this._then);

  final SchoolModel _self;
  final $Res Function(SchoolModel) _then;

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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      parentId: null == parentId
          ? _self.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      classification: null == classification
          ? _self.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as SchoolClassification,
      lunchBlock: null == lunchBlock
          ? _self.lunchBlock
          : lunchBlock // ignore: cast_nullable_to_non_nullable
              as int,
      authorizationRequired: null == authorizationRequired
          ? _self.authorizationRequired
          : authorizationRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      authorizationKeyUpdatedAt: freezed == authorizationKeyUpdatedAt
          ? _self.authorizationKeyUpdatedAt
          : authorizationKeyUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _SchoolModel extends SchoolModel {
  const _SchoolModel(
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

  /// Create a copy of SchoolModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SchoolModelCopyWith<_SchoolModel> get copyWith =>
      __$SchoolModelCopyWithImpl<_SchoolModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SchoolModel &&
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

  @override
  String toString() {
    return 'SchoolModel(id: $id, parentId: $parentId, name: $name, classification: $classification, lunchBlock: $lunchBlock, authorizationRequired: $authorizationRequired, authorizationKeyUpdatedAt: $authorizationKeyUpdatedAt)';
  }
}

/// @nodoc
abstract mixin class _$SchoolModelCopyWith<$Res>
    implements $SchoolModelCopyWith<$Res> {
  factory _$SchoolModelCopyWith(
          _SchoolModel value, $Res Function(_SchoolModel) _then) =
      __$SchoolModelCopyWithImpl;
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
class __$SchoolModelCopyWithImpl<$Res> implements _$SchoolModelCopyWith<$Res> {
  __$SchoolModelCopyWithImpl(this._self, this._then);

  final _SchoolModel _self;
  final $Res Function(_SchoolModel) _then;

  /// Create a copy of SchoolModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? name = null,
    Object? classification = null,
    Object? lunchBlock = null,
    Object? authorizationRequired = null,
    Object? authorizationKeyUpdatedAt = freezed,
  }) {
    return _then(_SchoolModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      parentId: null == parentId
          ? _self.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      classification: null == classification
          ? _self.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as SchoolClassification,
      lunchBlock: null == lunchBlock
          ? _self.lunchBlock
          : lunchBlock // ignore: cast_nullable_to_non_nullable
              as int,
      authorizationRequired: null == authorizationRequired
          ? _self.authorizationRequired
          : authorizationRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      authorizationKeyUpdatedAt: freezed == authorizationKeyUpdatedAt
          ? _self.authorizationKeyUpdatedAt
          : authorizationKeyUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
