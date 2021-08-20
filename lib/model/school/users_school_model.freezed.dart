// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'users_school_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UsersSchoolModel _$UsersSchoolModelFromJson(Map<String, dynamic> json) {
  return _UsersSchoolModel.fromJson(json);
}

/// @nodoc
class _$UsersSchoolModelTearOff {
  const _$UsersSchoolModelTearOff();

  _UsersSchoolModel call(
      {required int id,
      required int parentId,
      required String name,
      int? lunchBlock,
      int classification = 0,
      int? schoolYear}) {
    return _UsersSchoolModel(
      id: id,
      parentId: parentId,
      name: name,
      lunchBlock: lunchBlock,
      classification: classification,
      schoolYear: schoolYear,
    );
  }

  UsersSchoolModel fromJson(Map<String, Object> json) {
    return UsersSchoolModel.fromJson(json);
  }
}

/// @nodoc
const $UsersSchoolModel = _$UsersSchoolModelTearOff();

/// @nodoc
mixin _$UsersSchoolModel {
  int get id => throw _privateConstructorUsedError;
  int get parentId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int? get lunchBlock => throw _privateConstructorUsedError;
  int get classification => throw _privateConstructorUsedError;
  int? get schoolYear => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsersSchoolModelCopyWith<UsersSchoolModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersSchoolModelCopyWith<$Res> {
  factory $UsersSchoolModelCopyWith(
          UsersSchoolModel value, $Res Function(UsersSchoolModel) then) =
      _$UsersSchoolModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      int parentId,
      String name,
      int? lunchBlock,
      int classification,
      int? schoolYear});
}

/// @nodoc
class _$UsersSchoolModelCopyWithImpl<$Res>
    implements $UsersSchoolModelCopyWith<$Res> {
  _$UsersSchoolModelCopyWithImpl(this._value, this._then);

  final UsersSchoolModel _value;
  // ignore: unused_field
  final $Res Function(UsersSchoolModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? parentId = freezed,
    Object? name = freezed,
    Object? lunchBlock = freezed,
    Object? classification = freezed,
    Object? schoolYear = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lunchBlock: lunchBlock == freezed
          ? _value.lunchBlock
          : lunchBlock // ignore: cast_nullable_to_non_nullable
              as int?,
      classification: classification == freezed
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as int,
      schoolYear: schoolYear == freezed
          ? _value.schoolYear
          : schoolYear // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$UsersSchoolModelCopyWith<$Res>
    implements $UsersSchoolModelCopyWith<$Res> {
  factory _$UsersSchoolModelCopyWith(
          _UsersSchoolModel value, $Res Function(_UsersSchoolModel) then) =
      __$UsersSchoolModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      int parentId,
      String name,
      int? lunchBlock,
      int classification,
      int? schoolYear});
}

/// @nodoc
class __$UsersSchoolModelCopyWithImpl<$Res>
    extends _$UsersSchoolModelCopyWithImpl<$Res>
    implements _$UsersSchoolModelCopyWith<$Res> {
  __$UsersSchoolModelCopyWithImpl(
      _UsersSchoolModel _value, $Res Function(_UsersSchoolModel) _then)
      : super(_value, (v) => _then(v as _UsersSchoolModel));

  @override
  _UsersSchoolModel get _value => super._value as _UsersSchoolModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? parentId = freezed,
    Object? name = freezed,
    Object? lunchBlock = freezed,
    Object? classification = freezed,
    Object? schoolYear = freezed,
  }) {
    return _then(_UsersSchoolModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lunchBlock: lunchBlock == freezed
          ? _value.lunchBlock
          : lunchBlock // ignore: cast_nullable_to_non_nullable
              as int?,
      classification: classification == freezed
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as int,
      schoolYear: schoolYear == freezed
          ? _value.schoolYear
          : schoolYear // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UsersSchoolModel extends _UsersSchoolModel {
  const _$_UsersSchoolModel(
      {required this.id,
      required this.parentId,
      required this.name,
      this.lunchBlock,
      this.classification = 0,
      this.schoolYear})
      : super._();

  factory _$_UsersSchoolModel.fromJson(Map<String, dynamic> json) =>
      _$_$_UsersSchoolModelFromJson(json);

  @override
  final int id;
  @override
  final int parentId;
  @override
  final String name;
  @override
  final int? lunchBlock;
  @JsonKey(defaultValue: 0)
  @override
  final int classification;
  @override
  final int? schoolYear;

  @override
  String toString() {
    return 'UsersSchoolModel(id: $id, parentId: $parentId, name: $name, lunchBlock: $lunchBlock, classification: $classification, schoolYear: $schoolYear)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UsersSchoolModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.lunchBlock, lunchBlock) ||
                const DeepCollectionEquality()
                    .equals(other.lunchBlock, lunchBlock)) &&
            (identical(other.classification, classification) ||
                const DeepCollectionEquality()
                    .equals(other.classification, classification)) &&
            (identical(other.schoolYear, schoolYear) ||
                const DeepCollectionEquality()
                    .equals(other.schoolYear, schoolYear)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(lunchBlock) ^
      const DeepCollectionEquality().hash(classification) ^
      const DeepCollectionEquality().hash(schoolYear);

  @JsonKey(ignore: true)
  @override
  _$UsersSchoolModelCopyWith<_UsersSchoolModel> get copyWith =>
      __$UsersSchoolModelCopyWithImpl<_UsersSchoolModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UsersSchoolModelToJson(this);
  }
}

abstract class _UsersSchoolModel extends UsersSchoolModel {
  const factory _UsersSchoolModel(
      {required int id,
      required int parentId,
      required String name,
      int? lunchBlock,
      int classification,
      int? schoolYear}) = _$_UsersSchoolModel;
  const _UsersSchoolModel._() : super._();

  factory _UsersSchoolModel.fromJson(Map<String, dynamic> json) =
      _$_UsersSchoolModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  int get parentId => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int? get lunchBlock => throw _privateConstructorUsedError;
  @override
  int get classification => throw _privateConstructorUsedError;
  @override
  int? get schoolYear => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UsersSchoolModelCopyWith<_UsersSchoolModel> get copyWith =>
      throw _privateConstructorUsedError;
}
