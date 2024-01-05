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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title, String path, int parentId, DateTime updateAt)
        data,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String title, String path, int parentId, DateTime updateAt)?
        data,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String title, String path, int parentId, DateTime updateAt)?
        data,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LetterMetadataModelData value) data,
    required TResult Function(LetterMetadataModelLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LetterMetadataModelData value)? data,
    TResult? Function(LetterMetadataModelLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LetterMetadataModelData value)? data,
    TResult Function(LetterMetadataModelLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LetterMetadataModelCopyWith<$Res> {
  factory $LetterMetadataModelCopyWith(
          LetterMetadataModel value, $Res Function(LetterMetadataModel) then) =
      _$LetterMetadataModelCopyWithImpl<$Res, LetterMetadataModel>;
}

/// @nodoc
class _$LetterMetadataModelCopyWithImpl<$Res, $Val extends LetterMetadataModel>
    implements $LetterMetadataModelCopyWith<$Res> {
  _$LetterMetadataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LetterMetadataModelDataImplCopyWith<$Res> {
  factory _$$LetterMetadataModelDataImplCopyWith(
          _$LetterMetadataModelDataImpl value,
          $Res Function(_$LetterMetadataModelDataImpl) then) =
      __$$LetterMetadataModelDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String path, int parentId, DateTime updateAt});
}

/// @nodoc
class __$$LetterMetadataModelDataImplCopyWithImpl<$Res>
    extends _$LetterMetadataModelCopyWithImpl<$Res,
        _$LetterMetadataModelDataImpl>
    implements _$$LetterMetadataModelDataImplCopyWith<$Res> {
  __$$LetterMetadataModelDataImplCopyWithImpl(
      _$LetterMetadataModelDataImpl _value,
      $Res Function(_$LetterMetadataModelDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? path = null,
    Object? parentId = null,
    Object? updateAt = null,
  }) {
    return _then(_$LetterMetadataModelDataImpl(
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

class _$LetterMetadataModelDataImpl implements LetterMetadataModelData {
  const _$LetterMetadataModelDataImpl(
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
    return 'LetterMetadataModel.data(title: $title, path: $path, parentId: $parentId, updateAt: $updateAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LetterMetadataModelDataImpl &&
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
  _$$LetterMetadataModelDataImplCopyWith<_$LetterMetadataModelDataImpl>
      get copyWith => __$$LetterMetadataModelDataImplCopyWithImpl<
          _$LetterMetadataModelDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title, String path, int parentId, DateTime updateAt)
        data,
    required TResult Function() loading,
  }) {
    return data(title, path, parentId, updateAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String title, String path, int parentId, DateTime updateAt)?
        data,
    TResult? Function()? loading,
  }) {
    return data?.call(title, path, parentId, updateAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String title, String path, int parentId, DateTime updateAt)?
        data,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(title, path, parentId, updateAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LetterMetadataModelData value) data,
    required TResult Function(LetterMetadataModelLoading value) loading,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LetterMetadataModelData value)? data,
    TResult? Function(LetterMetadataModelLoading value)? loading,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LetterMetadataModelData value)? data,
    TResult Function(LetterMetadataModelLoading value)? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class LetterMetadataModelData implements LetterMetadataModel {
  const factory LetterMetadataModelData(
      {required final String title,
      required final String path,
      required final int parentId,
      required final DateTime updateAt}) = _$LetterMetadataModelDataImpl;

  String get title;
  String get path;
  int get parentId;
  DateTime get updateAt;
  @JsonKey(ignore: true)
  _$$LetterMetadataModelDataImplCopyWith<_$LetterMetadataModelDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LetterMetadataModelLoadingImplCopyWith<$Res> {
  factory _$$LetterMetadataModelLoadingImplCopyWith(
          _$LetterMetadataModelLoadingImpl value,
          $Res Function(_$LetterMetadataModelLoadingImpl) then) =
      __$$LetterMetadataModelLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LetterMetadataModelLoadingImplCopyWithImpl<$Res>
    extends _$LetterMetadataModelCopyWithImpl<$Res,
        _$LetterMetadataModelLoadingImpl>
    implements _$$LetterMetadataModelLoadingImplCopyWith<$Res> {
  __$$LetterMetadataModelLoadingImplCopyWithImpl(
      _$LetterMetadataModelLoadingImpl _value,
      $Res Function(_$LetterMetadataModelLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LetterMetadataModelLoadingImpl implements LetterMetadataModelLoading {
  const _$LetterMetadataModelLoadingImpl();

  @override
  String toString() {
    return 'LetterMetadataModel.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LetterMetadataModelLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title, String path, int parentId, DateTime updateAt)
        data,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String title, String path, int parentId, DateTime updateAt)?
        data,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String title, String path, int parentId, DateTime updateAt)?
        data,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LetterMetadataModelData value) data,
    required TResult Function(LetterMetadataModelLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LetterMetadataModelData value)? data,
    TResult? Function(LetterMetadataModelLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LetterMetadataModelData value)? data,
    TResult Function(LetterMetadataModelLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LetterMetadataModelLoading implements LetterMetadataModel {
  const factory LetterMetadataModelLoading() = _$LetterMetadataModelLoadingImpl;
}
