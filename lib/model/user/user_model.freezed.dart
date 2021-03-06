// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError; // ニックネーム
  int get schoolId => throw _privateConstructorUsedError; // 学校ID
  int get schoolYear => throw _privateConstructorUsedError; // 学年
  NutrientsModel? get slns => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      int schoolId,
      int schoolYear,
      NutrientsModel? slns});

  $NutrientsModelCopyWith<$Res>? get slns;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res> implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  final UserModel _value;
  // ignore: unused_field
  final $Res Function(UserModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? schoolId = freezed,
    Object? schoolYear = freezed,
    Object? slns = freezed,
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
      schoolId: schoolId == freezed
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int,
      schoolYear: schoolYear == freezed
          ? _value.schoolYear
          : schoolYear // ignore: cast_nullable_to_non_nullable
              as int,
      slns: slns == freezed
          ? _value.slns
          : slns // ignore: cast_nullable_to_non_nullable
              as NutrientsModel?,
    ));
  }

  @override
  $NutrientsModelCopyWith<$Res>? get slns {
    if (_value.slns == null) {
      return null;
    }

    return $NutrientsModelCopyWith<$Res>(_value.slns!, (value) {
      return _then(_value.copyWith(slns: value));
    });
  }
}

/// @nodoc
abstract class _$$_UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$$_UserModelCopyWith(
          _$_UserModel value, $Res Function(_$_UserModel) then) =
      __$$_UserModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      int schoolId,
      int schoolYear,
      NutrientsModel? slns});

  @override
  $NutrientsModelCopyWith<$Res>? get slns;
}

/// @nodoc
class __$$_UserModelCopyWithImpl<$Res> extends _$UserModelCopyWithImpl<$Res>
    implements _$$_UserModelCopyWith<$Res> {
  __$$_UserModelCopyWithImpl(
      _$_UserModel _value, $Res Function(_$_UserModel) _then)
      : super(_value, (v) => _then(v as _$_UserModel));

  @override
  _$_UserModel get _value => super._value as _$_UserModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? schoolId = freezed,
    Object? schoolYear = freezed,
    Object? slns = freezed,
  }) {
    return _then(_$_UserModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      schoolId: schoolId == freezed
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int,
      schoolYear: schoolYear == freezed
          ? _value.schoolYear
          : schoolYear // ignore: cast_nullable_to_non_nullable
              as int,
      slns: slns == freezed
          ? _value.slns
          : slns // ignore: cast_nullable_to_non_nullable
              as NutrientsModel?,
    ));
  }
}

/// @nodoc

class _$_UserModel extends _UserModel {
  const _$_UserModel(
      {required this.id,
      required this.name,
      required this.schoolId,
      required this.schoolYear,
      this.slns})
      : super._();

  @override
  final int id;
  @override
  final String name;
// ニックネーム
  @override
  final int schoolId;
// 学校ID
  @override
  final int schoolYear;
// 学年
  @override
  final NutrientsModel? slns;

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, schoolId: $schoolId, schoolYear: $schoolYear, slns: $slns)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.schoolId, schoolId) &&
            const DeepCollectionEquality()
                .equals(other.schoolYear, schoolYear) &&
            const DeepCollectionEquality().equals(other.slns, slns));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(schoolId),
      const DeepCollectionEquality().hash(schoolYear),
      const DeepCollectionEquality().hash(slns));

  @JsonKey(ignore: true)
  @override
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      __$$_UserModelCopyWithImpl<_$_UserModel>(this, _$identity);
}

abstract class _UserModel extends UserModel {
  const factory _UserModel(
      {required final int id,
      required final String name,
      required final int schoolId,
      required final int schoolYear,
      final NutrientsModel? slns}) = _$_UserModel;
  const _UserModel._() : super._();

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override // ニックネーム
  int get schoolId => throw _privateConstructorUsedError;
  @override // 学校ID
  int get schoolYear => throw _privateConstructorUsedError;
  @override // 学年
  NutrientsModel? get slns => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
