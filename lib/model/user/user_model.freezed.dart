// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
class _$UserModelTearOff {
  const _$UserModelTearOff();

  _UserModel call(
      {String? name, UsersSchoolModel? school, NutrientsModel? slns}) {
    return _UserModel(
      name: name,
      school: school,
      slns: slns,
    );
  }

  UserModel fromJson(Map<String, Object> json) {
    return UserModel.fromJson(json);
  }
}

/// @nodoc
const $UserModel = _$UserModelTearOff();

/// @nodoc
mixin _$UserModel {
  String? get name => throw _privateConstructorUsedError; // ニックネーム
  UsersSchoolModel? get school => throw _privateConstructorUsedError; // 学校
  NutrientsModel? get slns => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res>;
  $Res call({String? name, UsersSchoolModel? school, NutrientsModel? slns});

  $UsersSchoolModelCopyWith<$Res>? get school;
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
    Object? name = freezed,
    Object? school = freezed,
    Object? slns = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      school: school == freezed
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as UsersSchoolModel?,
      slns: slns == freezed
          ? _value.slns
          : slns // ignore: cast_nullable_to_non_nullable
              as NutrientsModel?,
    ));
  }

  @override
  $UsersSchoolModelCopyWith<$Res>? get school {
    if (_value.school == null) {
      return null;
    }

    return $UsersSchoolModelCopyWith<$Res>(_value.school!, (value) {
      return _then(_value.copyWith(school: value));
    });
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
abstract class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(
          _UserModel value, $Res Function(_UserModel) then) =
      __$UserModelCopyWithImpl<$Res>;
  @override
  $Res call({String? name, UsersSchoolModel? school, NutrientsModel? slns});

  @override
  $UsersSchoolModelCopyWith<$Res>? get school;
  @override
  $NutrientsModelCopyWith<$Res>? get slns;
}

/// @nodoc
class __$UserModelCopyWithImpl<$Res> extends _$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(_UserModel _value, $Res Function(_UserModel) _then)
      : super(_value, (v) => _then(v as _UserModel));

  @override
  _UserModel get _value => super._value as _UserModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? school = freezed,
    Object? slns = freezed,
  }) {
    return _then(_UserModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      school: school == freezed
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as UsersSchoolModel?,
      slns: slns == freezed
          ? _value.slns
          : slns // ignore: cast_nullable_to_non_nullable
              as NutrientsModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModel extends _UserModel {
  const _$_UserModel({this.name, this.school, this.slns}) : super._();

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$_$_UserModelFromJson(json);

  @override
  final String? name;
  @override // ニックネーム
  final UsersSchoolModel? school;
  @override // 学校
  final NutrientsModel? slns;

  @override
  String toString() {
    return 'UserModel(name: $name, school: $school, slns: $slns)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.school, school) ||
                const DeepCollectionEquality().equals(other.school, school)) &&
            (identical(other.slns, slns) ||
                const DeepCollectionEquality().equals(other.slns, slns)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(school) ^
      const DeepCollectionEquality().hash(slns);

  @JsonKey(ignore: true)
  @override
  _$UserModelCopyWith<_UserModel> get copyWith =>
      __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserModelToJson(this);
  }
}

abstract class _UserModel extends UserModel {
  const factory _UserModel(
      {String? name,
      UsersSchoolModel? school,
      NutrientsModel? slns}) = _$_UserModel;
  const _UserModel._() : super._();

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override // ニックネーム
  UsersSchoolModel? get school => throw _privateConstructorUsedError;
  @override // 学校
  NutrientsModel? get slns => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserModelCopyWith<_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
