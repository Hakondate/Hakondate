// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_data_recipe_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OpenDataRecipeModel {
  /// ID
  int get id => throw _privateConstructorUsedError;

  /// 名前
  String get name => throw _privateConstructorUsedError;

  /// PDF
  String get pdf => throw _privateConstructorUsedError;

  /// タイプ
  RecipeType get type => throw _privateConstructorUsedError;

  /// サムネイル
  String? get thumbnail => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OpenDataRecipeModelCopyWith<OpenDataRecipeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenDataRecipeModelCopyWith<$Res> {
  factory $OpenDataRecipeModelCopyWith(
          OpenDataRecipeModel value, $Res Function(OpenDataRecipeModel) then) =
      _$OpenDataRecipeModelCopyWithImpl<$Res, OpenDataRecipeModel>;
  @useResult
  $Res call(
      {int id, String name, String pdf, RecipeType type, String? thumbnail});
}

/// @nodoc
class _$OpenDataRecipeModelCopyWithImpl<$Res, $Val extends OpenDataRecipeModel>
    implements $OpenDataRecipeModelCopyWith<$Res> {
  _$OpenDataRecipeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? pdf = null,
    Object? type = null,
    Object? thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pdf: null == pdf
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RecipeType,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpenDataRecipeModelImplCopyWith<$Res>
    implements $OpenDataRecipeModelCopyWith<$Res> {
  factory _$$OpenDataRecipeModelImplCopyWith(_$OpenDataRecipeModelImpl value,
          $Res Function(_$OpenDataRecipeModelImpl) then) =
      __$$OpenDataRecipeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String name, String pdf, RecipeType type, String? thumbnail});
}

/// @nodoc
class __$$OpenDataRecipeModelImplCopyWithImpl<$Res>
    extends _$OpenDataRecipeModelCopyWithImpl<$Res, _$OpenDataRecipeModelImpl>
    implements _$$OpenDataRecipeModelImplCopyWith<$Res> {
  __$$OpenDataRecipeModelImplCopyWithImpl(_$OpenDataRecipeModelImpl _value,
      $Res Function(_$OpenDataRecipeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? pdf = null,
    Object? type = null,
    Object? thumbnail = freezed,
  }) {
    return _then(_$OpenDataRecipeModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pdf: null == pdf
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RecipeType,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$OpenDataRecipeModelImpl extends _OpenDataRecipeModel {
  _$OpenDataRecipeModelImpl(
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

  @override
  String toString() {
    return 'OpenDataRecipeModel(id: $id, name: $name, pdf: $pdf, type: $type, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenDataRecipeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.pdf, pdf) || other.pdf == pdf) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, pdf, type, thumbnail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenDataRecipeModelImplCopyWith<_$OpenDataRecipeModelImpl> get copyWith =>
      __$$OpenDataRecipeModelImplCopyWithImpl<_$OpenDataRecipeModelImpl>(
          this, _$identity);
}

abstract class _OpenDataRecipeModel extends OpenDataRecipeModel {
  factory _OpenDataRecipeModel(
      {required final int id,
      required final String name,
      required final String pdf,
      final RecipeType type,
      final String? thumbnail}) = _$OpenDataRecipeModelImpl;
  _OpenDataRecipeModel._() : super._();

  @override

  /// ID
  int get id;
  @override

  /// 名前
  String get name;
  @override

  /// PDF
  String get pdf;
  @override

  /// タイプ
  RecipeType get type;
  @override

  /// サムネイル
  String? get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$OpenDataRecipeModelImplCopyWith<_$OpenDataRecipeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
