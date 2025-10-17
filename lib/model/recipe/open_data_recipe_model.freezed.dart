// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_data_recipe_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OpenDataRecipeModel {
  /// ID
  int get id;

  /// 名前
  String get name;

  /// PDF
  String get pdf;

  /// タイプ
  RecipeType get type;

  /// サムネイル
  String? get thumbnail;

  /// Create a copy of OpenDataRecipeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OpenDataRecipeModelCopyWith<OpenDataRecipeModel> get copyWith =>
      _$OpenDataRecipeModelCopyWithImpl<OpenDataRecipeModel>(
          this as OpenDataRecipeModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OpenDataRecipeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.pdf, pdf) || other.pdf == pdf) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, pdf, type, thumbnail);

  @override
  String toString() {
    return 'OpenDataRecipeModel(id: $id, name: $name, pdf: $pdf, type: $type, thumbnail: $thumbnail)';
  }
}

/// @nodoc
abstract mixin class $OpenDataRecipeModelCopyWith<$Res> {
  factory $OpenDataRecipeModelCopyWith(
          OpenDataRecipeModel value, $Res Function(OpenDataRecipeModel) _then) =
      _$OpenDataRecipeModelCopyWithImpl;
  @useResult
  $Res call(
      {int id, String name, String pdf, RecipeType type, String? thumbnail});
}

/// @nodoc
class _$OpenDataRecipeModelCopyWithImpl<$Res>
    implements $OpenDataRecipeModelCopyWith<$Res> {
  _$OpenDataRecipeModelCopyWithImpl(this._self, this._then);

  final OpenDataRecipeModel _self;
  final $Res Function(OpenDataRecipeModel) _then;

  /// Create a copy of OpenDataRecipeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? pdf = null,
    Object? type = null,
    Object? thumbnail = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pdf: null == pdf
          ? _self.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as RecipeType,
      thumbnail: freezed == thumbnail
          ? _self.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _OpenDataRecipeModel extends OpenDataRecipeModel {
  _OpenDataRecipeModel(
      {required this.id,
      required this.name,
      required this.pdf,
      this.type = RecipeType.other,
      this.thumbnail})
      : super._();

  /// ID
  @override
  final int id;

  /// 名前
  @override
  final String name;

  /// PDF
  @override
  final String pdf;

  /// タイプ
  @override
  @JsonKey()
  final RecipeType type;

  /// サムネイル
  @override
  final String? thumbnail;

  /// Create a copy of OpenDataRecipeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OpenDataRecipeModelCopyWith<_OpenDataRecipeModel> get copyWith =>
      __$OpenDataRecipeModelCopyWithImpl<_OpenDataRecipeModel>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OpenDataRecipeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.pdf, pdf) || other.pdf == pdf) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, pdf, type, thumbnail);

  @override
  String toString() {
    return 'OpenDataRecipeModel(id: $id, name: $name, pdf: $pdf, type: $type, thumbnail: $thumbnail)';
  }
}

/// @nodoc
abstract mixin class _$OpenDataRecipeModelCopyWith<$Res>
    implements $OpenDataRecipeModelCopyWith<$Res> {
  factory _$OpenDataRecipeModelCopyWith(_OpenDataRecipeModel value,
          $Res Function(_OpenDataRecipeModel) _then) =
      __$OpenDataRecipeModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id, String name, String pdf, RecipeType type, String? thumbnail});
}

/// @nodoc
class __$OpenDataRecipeModelCopyWithImpl<$Res>
    implements _$OpenDataRecipeModelCopyWith<$Res> {
  __$OpenDataRecipeModelCopyWithImpl(this._self, this._then);

  final _OpenDataRecipeModel _self;
  final $Res Function(_OpenDataRecipeModel) _then;

  /// Create a copy of OpenDataRecipeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? pdf = null,
    Object? type = null,
    Object? thumbnail = freezed,
  }) {
    return _then(_OpenDataRecipeModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pdf: null == pdf
          ? _self.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as RecipeType,
      thumbnail: freezed == thumbnail
          ? _self.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
