// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'letter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LetterModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  File get content => throw _privateConstructorUsedError;
  DateTime get updateAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LetterModelCopyWith<LetterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LetterModelCopyWith<$Res> {
  factory $LetterModelCopyWith(
          LetterModel value, $Res Function(LetterModel) then) =
      _$LetterModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      String? description,
      File content,
      DateTime updateAt});
}

/// @nodoc
class _$LetterModelCopyWithImpl<$Res> implements $LetterModelCopyWith<$Res> {
  _$LetterModelCopyWithImpl(this._value, this._then);

  final LetterModel _value;
  // ignore: unused_field
  final $Res Function(LetterModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? content = freezed,
    Object? updateAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as File,
      updateAt: updateAt == freezed
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_LetterModelCopyWith<$Res>
    implements $LetterModelCopyWith<$Res> {
  factory _$$_LetterModelCopyWith(
          _$_LetterModel value, $Res Function(_$_LetterModel) then) =
      __$$_LetterModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String? description,
      File content,
      DateTime updateAt});
}

/// @nodoc
class __$$_LetterModelCopyWithImpl<$Res> extends _$LetterModelCopyWithImpl<$Res>
    implements _$$_LetterModelCopyWith<$Res> {
  __$$_LetterModelCopyWithImpl(
      _$_LetterModel _value, $Res Function(_$_LetterModel) _then)
      : super(_value, (v) => _then(v as _$_LetterModel));

  @override
  _$_LetterModel get _value => super._value as _$_LetterModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? content = freezed,
    Object? updateAt = freezed,
  }) {
    return _then(_$_LetterModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as File,
      updateAt: updateAt == freezed
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_LetterModel implements _LetterModel {
  const _$_LetterModel(
      {required this.id,
      required this.title,
      this.description,
      required this.content,
      required this.updateAt});

  @override
  final int id;
  @override
  final String title;
  @override
  final String? description;
  @override
  final File content;
  @override
  final DateTime updateAt;

  @override
  String toString() {
    return 'LetterModel(id: $id, title: $title, description: $description, content: $content, updateAt: $updateAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LetterModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.updateAt, updateAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(updateAt));

  @JsonKey(ignore: true)
  @override
  _$$_LetterModelCopyWith<_$_LetterModel> get copyWith =>
      __$$_LetterModelCopyWithImpl<_$_LetterModel>(this, _$identity);
}

abstract class _LetterModel implements LetterModel {
  const factory _LetterModel(
      {required final int id,
      required final String title,
      final String? description,
      required final File content,
      required final DateTime updateAt}) = _$_LetterModel;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  File get content => throw _privateConstructorUsedError;
  @override
  DateTime get updateAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LetterModelCopyWith<_$_LetterModel> get copyWith =>
      throw _privateConstructorUsedError;
}
