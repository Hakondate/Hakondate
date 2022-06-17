// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
  RecipeType get type => throw _privateConstructorUsedError; // タイプ
  String? get thumbnail => throw _privateConstructorUsedError; // サムネイル
  String get pdf => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OpenDataRecipeModelCopyWith<OpenDataRecipeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenDataRecipeModelCopyWith<$Res> {
  factory $OpenDataRecipeModelCopyWith(
          OpenDataRecipeModel value, $Res Function(OpenDataRecipeModel) then) =
      _$OpenDataRecipeModelCopyWithImpl<$Res>;
  $Res call(
      {int id, String name, RecipeType type, String? thumbnail, String pdf});
}

/// @nodoc
class _$OpenDataRecipeModelCopyWithImpl<$Res>
    implements $OpenDataRecipeModelCopyWith<$Res> {
  _$OpenDataRecipeModelCopyWithImpl(this._value, this._then);

  final OpenDataRecipeModel _value;
  // ignore: unused_field
  final $Res Function(OpenDataRecipeModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? thumbnail = freezed,
    Object? pdf = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RecipeType,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      pdf: pdf == freezed
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$OpenDataRecipeModelCopyWith<$Res>
    implements $OpenDataRecipeModelCopyWith<$Res> {
  factory _$OpenDataRecipeModelCopyWith(_OpenDataRecipeModel value,
          $Res Function(_OpenDataRecipeModel) then) =
      __$OpenDataRecipeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id, String name, RecipeType type, String? thumbnail, String pdf});
}

/// @nodoc
class __$OpenDataRecipeModelCopyWithImpl<$Res>
    extends _$OpenDataRecipeModelCopyWithImpl<$Res>
    implements _$OpenDataRecipeModelCopyWith<$Res> {
  __$OpenDataRecipeModelCopyWithImpl(
      _OpenDataRecipeModel _value, $Res Function(_OpenDataRecipeModel) _then)
      : super(_value, (v) => _then(v as _OpenDataRecipeModel));

  @override
  _OpenDataRecipeModel get _value => super._value as _OpenDataRecipeModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? thumbnail = freezed,
    Object? pdf = freezed,
  }) {
    return _then(_OpenDataRecipeModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RecipeType,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      pdf: pdf == freezed
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OpenDataRecipeModel extends _OpenDataRecipeModel {
  _$_OpenDataRecipeModel(
      {required this.id,
      required this.name,
      this.type = RecipeType.other,
      this.thumbnail,
      required this.pdf})
      : super._();

  @override
  final int id;
// ID
  @override
  final String name;
// 名前
  @override
  @JsonKey()
  final RecipeType type;
// タイプ
  @override
  final String? thumbnail;
// サムネイル
  @override
  final String pdf;

  @override
  String toString() {
    return 'OpenDataRecipeModel(id: $id, name: $name, type: $type, thumbnail: $thumbnail, pdf: $pdf)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OpenDataRecipeModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
            const DeepCollectionEquality().equals(other.pdf, pdf));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(thumbnail),
      const DeepCollectionEquality().hash(pdf));

  @JsonKey(ignore: true)
  @override
  _$OpenDataRecipeModelCopyWith<_OpenDataRecipeModel> get copyWith =>
      __$OpenDataRecipeModelCopyWithImpl<_OpenDataRecipeModel>(
          this, _$identity);
}

abstract class _OpenDataRecipeModel extends OpenDataRecipeModel {
  factory _OpenDataRecipeModel(
      {required final int id,
      required final String name,
      final RecipeType type,
      final String? thumbnail,
      required final String pdf}) = _$_OpenDataRecipeModel;
  _OpenDataRecipeModel._() : super._();

  @override
  int get id => throw _privateConstructorUsedError;
  @override // ID
  String get name => throw _privateConstructorUsedError;
  @override // 名前
  RecipeType get type => throw _privateConstructorUsedError;
  @override // タイプ
  String? get thumbnail => throw _privateConstructorUsedError;
  @override // サムネイル
  String get pdf => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OpenDataRecipeModelCopyWith<_OpenDataRecipeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
