// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
  int get lunchBlock => throw _privateConstructorUsedError;
  DateTime get updateAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LetterMetadataModelCopyWith<LetterMetadataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LetterMetadataModelCopyWith<$Res> {
  factory $LetterMetadataModelCopyWith(
          LetterMetadataModel value, $Res Function(LetterMetadataModel) then) =
      _$LetterMetadataModelCopyWithImpl<$Res>;
  $Res call({String title, String path, int lunchBlock, DateTime updateAt});
}

/// @nodoc
class _$LetterMetadataModelCopyWithImpl<$Res>
    implements $LetterMetadataModelCopyWith<$Res> {
  _$LetterMetadataModelCopyWithImpl(this._value, this._then);

  final LetterMetadataModel _value;
  // ignore: unused_field
  final $Res Function(LetterMetadataModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? path = freezed,
    Object? lunchBlock = freezed,
    Object? updateAt = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      lunchBlock: lunchBlock == freezed
          ? _value.lunchBlock
          : lunchBlock // ignore: cast_nullable_to_non_nullable
              as int,
      updateAt: updateAt == freezed
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_LetterMetadataModelCopyWith<$Res>
    implements $LetterMetadataModelCopyWith<$Res> {
  factory _$$_LetterMetadataModelCopyWith(_$_LetterMetadataModel value,
          $Res Function(_$_LetterMetadataModel) then) =
      __$$_LetterMetadataModelCopyWithImpl<$Res>;
  @override
  $Res call({String title, String path, int lunchBlock, DateTime updateAt});
}

/// @nodoc
class __$$_LetterMetadataModelCopyWithImpl<$Res>
    extends _$LetterMetadataModelCopyWithImpl<$Res>
    implements _$$_LetterMetadataModelCopyWith<$Res> {
  __$$_LetterMetadataModelCopyWithImpl(_$_LetterMetadataModel _value,
      $Res Function(_$_LetterMetadataModel) _then)
      : super(_value, (v) => _then(v as _$_LetterMetadataModel));

  @override
  _$_LetterMetadataModel get _value => super._value as _$_LetterMetadataModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? path = freezed,
    Object? lunchBlock = freezed,
    Object? updateAt = freezed,
  }) {
    return _then(_$_LetterMetadataModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      lunchBlock: lunchBlock == freezed
          ? _value.lunchBlock
          : lunchBlock // ignore: cast_nullable_to_non_nullable
              as int,
      updateAt: updateAt == freezed
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
      required this.lunchBlock,
      required this.updateAt});

  @override
  final String title;
  @override
  final String path;
  @override
  final int lunchBlock;
  @override
  final DateTime updateAt;

  @override
  String toString() {
    return 'LetterMetadataModel(title: $title, path: $path, lunchBlock: $lunchBlock, updateAt: $updateAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LetterMetadataModel &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.path, path) &&
            const DeepCollectionEquality()
                .equals(other.lunchBlock, lunchBlock) &&
            const DeepCollectionEquality().equals(other.updateAt, updateAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(path),
      const DeepCollectionEquality().hash(lunchBlock),
      const DeepCollectionEquality().hash(updateAt));

  @JsonKey(ignore: true)
  @override
  _$$_LetterMetadataModelCopyWith<_$_LetterMetadataModel> get copyWith =>
      __$$_LetterMetadataModelCopyWithImpl<_$_LetterMetadataModel>(
          this, _$identity);
}

abstract class _LetterMetadataModel implements LetterMetadataModel {
  const factory _LetterMetadataModel(
      {required final String title,
      required final String path,
      required final int lunchBlock,
      required final DateTime updateAt}) = _$_LetterMetadataModel;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get path => throw _privateConstructorUsedError;
  @override
  int get lunchBlock => throw _privateConstructorUsedError;
  @override
  DateTime get updateAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LetterMetadataModelCopyWith<_$_LetterMetadataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
