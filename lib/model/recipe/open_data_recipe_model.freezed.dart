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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OpenDataRecipeModel {
  int get id => throw _privateConstructorUsedError; // ID
  String get name => throw _privateConstructorUsedError; // 名前
  String get pdf => throw _privateConstructorUsedError; // PDF
  RecipeType get type => throw _privateConstructorUsedError; // タイプ
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
abstract class _$$_OpenDataRecipeModelCopyWith<$Res>
    implements $OpenDataRecipeModelCopyWith<$Res> {
  factory _$$_OpenDataRecipeModelCopyWith(_$_OpenDataRecipeModel value,
          $Res Function(_$_OpenDataRecipeModel) then) =
      __$$_OpenDataRecipeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String name, String pdf, RecipeType type, String? thumbnail});
}

/// @nodoc
class __$$_OpenDataRecipeModelCopyWithImpl<$Res>
    extends _$OpenDataRecipeModelCopyWithImpl<$Res, _$_OpenDataRecipeModel>
    implements _$$_OpenDataRecipeModelCopyWith<$Res> {
  __$$_OpenDataRecipeModelCopyWithImpl(_$_OpenDataRecipeModel _value,
      $Res Function(_$_OpenDataRecipeModel) _then)
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
    return _then(_$_OpenDataRecipeModel(
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

class _$_OpenDataRecipeModel extends _OpenDataRecipeModel {
  _$_OpenDataRecipeModel(
      {required this.id,
      required this.name,
      required this.pdf,
      this.type = RecipeType.other,
      this.thumbnail})
      : super._();

  @override
  final int id;
// ID
  @override
  final String name;
// 名前
  @override
  final String pdf;
// PDF
  @override
  @JsonKey()
  final RecipeType type;
// タイプ
  @override
  final String? thumbnail;

  @override
  String toString() {
    return 'OpenDataRecipeModel(id: $id, name: $name, pdf: $pdf, type: $type, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenDataRecipeModel &&
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
  _$$_OpenDataRecipeModelCopyWith<_$_OpenDataRecipeModel> get copyWith =>
      __$$_OpenDataRecipeModelCopyWithImpl<_$_OpenDataRecipeModel>(
          this, _$identity);
}

abstract class _OpenDataRecipeModel extends OpenDataRecipeModel {
  factory _OpenDataRecipeModel(
      {required final int id,
      required final String name,
      required final String pdf,
      final RecipeType type,
      final String? thumbnail}) = _$_OpenDataRecipeModel;
  _OpenDataRecipeModel._() : super._();

  @override
  int get id;
  @override // ID
  String get name;
  @override // 名前
  String get pdf;
  @override // PDF
  RecipeType get type;
  @override // タイプ
  String? get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$_OpenDataRecipeModelCopyWith<_$_OpenDataRecipeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
