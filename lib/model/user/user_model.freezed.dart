// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserModel {
  int get id => throw _privateConstructorUsedError;

  /// ニックネーム
  String get name => throw _privateConstructorUsedError;

  /// 学校ID
  int get schoolId => throw _privateConstructorUsedError;

  /// 学年
  int get schoolYear => throw _privateConstructorUsedError;

  /// 学校給食摂取基準
  NutrientsModel? get slns => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      int schoolId,
      int schoolYear,
      NutrientsModel? slns});

  $NutrientsModelCopyWith<$Res>? get slns;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? schoolId = null,
    Object? schoolYear = null,
    Object? slns = freezed,
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
      schoolId: null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int,
      schoolYear: null == schoolYear
          ? _value.schoolYear
          : schoolYear // ignore: cast_nullable_to_non_nullable
              as int,
      slns: freezed == slns
          ? _value.slns
          : slns // ignore: cast_nullable_to_non_nullable
              as NutrientsModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NutrientsModelCopyWith<$Res>? get slns {
    if (_value.slns == null) {
      return null;
    }

    return $NutrientsModelCopyWith<$Res>(_value.slns!, (value) {
      return _then(_value.copyWith(slns: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? schoolId = null,
    Object? schoolYear = null,
    Object? slns = freezed,
  }) {
    return _then(_$UserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      schoolId: null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int,
      schoolYear: null == schoolYear
          ? _value.schoolYear
          : schoolYear // ignore: cast_nullable_to_non_nullable
              as int,
      slns: freezed == slns
          ? _value.slns
          : slns // ignore: cast_nullable_to_non_nullable
              as NutrientsModel?,
    ));
  }
}

/// @nodoc

class _$UserModelImpl extends _UserModel {
  const _$UserModelImpl(
      {required this.id,
      required this.name,
      required this.schoolId,
      required this.schoolYear,
      this.slns})
      : super._();

  @override
  final int id;

  /// ニックネーム
  @override
  final String name;

  /// 学校ID
  @override
  final int schoolId;

  /// 学年
  @override
  final int schoolYear;

  /// 学校給食摂取基準
  @override
  final NutrientsModel? slns;

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, schoolId: $schoolId, schoolYear: $schoolYear, slns: $slns)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.schoolYear, schoolYear) ||
                other.schoolYear == schoolYear) &&
            (identical(other.slns, slns) || other.slns == slns));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, schoolId, schoolYear, slns);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);
}

abstract class _UserModel extends UserModel {
  const factory _UserModel(
      {required final int id,
      required final String name,
      required final int schoolId,
      required final int schoolYear,
      final NutrientsModel? slns}) = _$UserModelImpl;
  const _UserModel._() : super._();

  @override
  int get id;
  @override

  /// ニックネーム
  String get name;
  @override

  /// 学校ID
  int get schoolId;
  @override

  /// 学年
  int get schoolYear;
  @override

  /// 学校給食摂取基準
  NutrientsModel? get slns;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
