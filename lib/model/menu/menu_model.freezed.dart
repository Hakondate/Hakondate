// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'menu_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MenuModelTearOff {
  const _$MenuModelTearOff();

  _MenuModel call(
      {required int id,
      required DateTime day,
      required int schoolId,
      required List<DishModel> dishes,
      String? event}) {
    return _MenuModel(
      id: id,
      day: day,
      schoolId: schoolId,
      dishes: dishes,
      event: event,
    );
  }
}

/// @nodoc
const $MenuModel = _$MenuModelTearOff();

/// @nodoc
mixin _$MenuModel {
  int get id =>
      throw _privateConstructorUsedError; // Day: 2021/06/30 & ScID: 1 → 2021063001
  DateTime get day => throw _privateConstructorUsedError; // 日付
  int get schoolId => throw _privateConstructorUsedError; // 学校
  List<DishModel> get dishes => throw _privateConstructorUsedError; // 料理
  String? get event => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MenuModelCopyWith<MenuModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuModelCopyWith<$Res> {
  factory $MenuModelCopyWith(MenuModel value, $Res Function(MenuModel) then) =
      _$MenuModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      DateTime day,
      int schoolId,
      List<DishModel> dishes,
      String? event});
}

/// @nodoc
class _$MenuModelCopyWithImpl<$Res> implements $MenuModelCopyWith<$Res> {
  _$MenuModelCopyWithImpl(this._value, this._then);

  final MenuModel _value;
  // ignore: unused_field
  final $Res Function(MenuModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? day = freezed,
    Object? schoolId = freezed,
    Object? dishes = freezed,
    Object? event = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DateTime,
      schoolId: schoolId == freezed
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int,
      dishes: dishes == freezed
          ? _value.dishes
          : dishes // ignore: cast_nullable_to_non_nullable
              as List<DishModel>,
      event: event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MenuModelCopyWith<$Res> implements $MenuModelCopyWith<$Res> {
  factory _$MenuModelCopyWith(
          _MenuModel value, $Res Function(_MenuModel) then) =
      __$MenuModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      DateTime day,
      int schoolId,
      List<DishModel> dishes,
      String? event});
}

/// @nodoc
class __$MenuModelCopyWithImpl<$Res> extends _$MenuModelCopyWithImpl<$Res>
    implements _$MenuModelCopyWith<$Res> {
  __$MenuModelCopyWithImpl(_MenuModel _value, $Res Function(_MenuModel) _then)
      : super(_value, (v) => _then(v as _MenuModel));

  @override
  _MenuModel get _value => super._value as _MenuModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? day = freezed,
    Object? schoolId = freezed,
    Object? dishes = freezed,
    Object? event = freezed,
  }) {
    return _then(_MenuModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DateTime,
      schoolId: schoolId == freezed
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int,
      dishes: dishes == freezed
          ? _value.dishes
          : dishes // ignore: cast_nullable_to_non_nullable
              as List<DishModel>,
      event: event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_MenuModel extends _MenuModel {
  const _$_MenuModel(
      {required this.id,
      required this.day,
      required this.schoolId,
      required this.dishes,
      this.event})
      : super._();

  @override
  final int id;
  @override // Day: 2021/06/30 & ScID: 1 → 2021063001
  final DateTime day;
  @override // 日付
  final int schoolId;
  @override // 学校
  final List<DishModel> dishes;
  @override // 料理
  final String? event;

  @override
  String toString() {
    return 'MenuModel(id: $id, day: $day, schoolId: $schoolId, dishes: $dishes, event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MenuModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.day, day) &&
            const DeepCollectionEquality().equals(other.schoolId, schoolId) &&
            const DeepCollectionEquality().equals(other.dishes, dishes) &&
            const DeepCollectionEquality().equals(other.event, event));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(day),
      const DeepCollectionEquality().hash(schoolId),
      const DeepCollectionEquality().hash(dishes),
      const DeepCollectionEquality().hash(event));

  @JsonKey(ignore: true)
  @override
  _$MenuModelCopyWith<_MenuModel> get copyWith =>
      __$MenuModelCopyWithImpl<_MenuModel>(this, _$identity);
}

abstract class _MenuModel extends MenuModel {
  const factory _MenuModel(
      {required int id,
      required DateTime day,
      required int schoolId,
      required List<DishModel> dishes,
      String? event}) = _$_MenuModel;
  const _MenuModel._() : super._();

  @override
  int get id;
  @override // Day: 2021/06/30 & ScID: 1 → 2021063001
  DateTime get day;
  @override // 日付
  int get schoolId;
  @override // 学校
  List<DishModel> get dishes;
  @override // 料理
  String? get event;
  @override
  @JsonKey(ignore: true)
  _$MenuModelCopyWith<_MenuModel> get copyWith =>
      throw _privateConstructorUsedError;
}
