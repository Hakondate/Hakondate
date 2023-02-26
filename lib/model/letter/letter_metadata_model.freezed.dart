// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'letter_metadata_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LetterMetadataModel {
  String get title => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  int get parentId => throw _privateConstructorUsedError;
  DateTime get updateAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LetterMetadataModelCopyWith<LetterMetadataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LetterMetadataModelCopyWith<$Res> {
  factory $LetterMetadataModelCopyWith(
          LetterMetadataModel value, $Res Function(LetterMetadataModel) then) =
      _$LetterMetadataModelCopyWithImpl<$Res, LetterMetadataModel>;
  @useResult
  $Res call({String title, String path, int parentId, DateTime updateAt});
}

/// @nodoc
class _$LetterMetadataModelCopyWithImpl<$Res, $Val extends LetterMetadataModel>
    implements $LetterMetadataModelCopyWith<$Res> {
  _$LetterMetadataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? path = null,
    Object? parentId = null,
    Object? updateAt = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int,
      updateAt: null == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LetterMetadataModelCopyWith<$Res>
    implements $LetterMetadataModelCopyWith<$Res> {
  factory _$$_LetterMetadataModelCopyWith(_$_LetterMetadataModel value,
          $Res Function(_$_LetterMetadataModel) then) =
      __$$_LetterMetadataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String path, int parentId, DateTime updateAt});
}

/// @nodoc
class __$$_LetterMetadataModelCopyWithImpl<$Res>
    extends _$LetterMetadataModelCopyWithImpl<$Res, _$_LetterMetadataModel>
    implements _$$_LetterMetadataModelCopyWith<$Res> {
  __$$_LetterMetadataModelCopyWithImpl(_$_LetterMetadataModel _value,
      $Res Function(_$_LetterMetadataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? path = null,
    Object? parentId = null,
    Object? updateAt = null,
  }) {
    return _then(_$_LetterMetadataModel(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int,
      updateAt: null == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_LetterMetadataModel implements _LetterMetadataModel {
  const _$_LetterMetadataModel(
      {required this.title,
      required this.path,
      required this.parentId,
      required this.updateAt});

  @override
  final String title;
  @override
  final String path;
  @override
  final int parentId;
  @override
  final DateTime updateAt;

  @override
  String toString() {
    return 'LetterMetadataModel(title: $title, path: $path, parentId: $parentId, updateAt: $updateAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LetterMetadataModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.updateAt, updateAt) ||
                other.updateAt == updateAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, path, parentId, updateAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LetterMetadataModelCopyWith<_$_LetterMetadataModel> get copyWith =>
      __$$_LetterMetadataModelCopyWithImpl<_$_LetterMetadataModel>(
          this, _$identity);
}

abstract class _LetterMetadataModel implements LetterMetadataModel {
  const factory _LetterMetadataModel(
      {required final String title,
      required final String path,
      required final int parentId,
      required final DateTime updateAt}) = _$_LetterMetadataModel;

  @override
  String get title;
  @override
  String get path;
  @override
  int get parentId;
  @override
  DateTime get updateAt;
  @override
  @JsonKey(ignore: true)
  _$$_LetterMetadataModelCopyWith<_$_LetterMetadataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
