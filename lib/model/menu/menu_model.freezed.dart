// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'menu_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MenuModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, DateTime day, int schoolId,
            List<DishModel> dishes, String? event)
        lunchesDay,
    required TResult Function() holiday,
    required TResult Function() noData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id, DateTime day, int schoolId, List<DishModel> dishes,
            String? event)?
        lunchesDay,
    TResult Function()? holiday,
    TResult Function()? noData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, DateTime day, int schoolId, List<DishModel> dishes,
            String? event)?
        lunchesDay,
    TResult Function()? holiday,
    TResult Function()? noData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LunchesDayMenuModel value) lunchesDay,
    required TResult Function(HolidayMenuModel value) holiday,
    required TResult Function(NodataMenuModel value) noData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LunchesDayMenuModel value)? lunchesDay,
    TResult Function(HolidayMenuModel value)? holiday,
    TResult Function(NodataMenuModel value)? noData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LunchesDayMenuModel value)? lunchesDay,
    TResult Function(HolidayMenuModel value)? holiday,
    TResult Function(NodataMenuModel value)? noData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuModelCopyWith<$Res> {
  factory $MenuModelCopyWith(MenuModel value, $Res Function(MenuModel) then) =
      _$MenuModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$MenuModelCopyWithImpl<$Res> implements $MenuModelCopyWith<$Res> {
  _$MenuModelCopyWithImpl(this._value, this._then);

  final MenuModel _value;
  // ignore: unused_field
  final $Res Function(MenuModel) _then;
}

/// @nodoc
abstract class $LunchesDayMenuModelCopyWith<$Res> {
  factory $LunchesDayMenuModelCopyWith(
          LunchesDayMenuModel value, $Res Function(LunchesDayMenuModel) then) =
      _$LunchesDayMenuModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      DateTime day,
      int schoolId,
      List<DishModel> dishes,
      String? event});
}

/// @nodoc
class _$LunchesDayMenuModelCopyWithImpl<$Res>
    extends _$MenuModelCopyWithImpl<$Res>
    implements $LunchesDayMenuModelCopyWith<$Res> {
  _$LunchesDayMenuModelCopyWithImpl(
      LunchesDayMenuModel _value, $Res Function(LunchesDayMenuModel) _then)
      : super(_value, (v) => _then(v as LunchesDayMenuModel));

  @override
  LunchesDayMenuModel get _value => super._value as LunchesDayMenuModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? day = freezed,
    Object? schoolId = freezed,
    Object? dishes = freezed,
    Object? event = freezed,
  }) {
    return _then(LunchesDayMenuModel(
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

class _$LunchesDayMenuModel extends LunchesDayMenuModel {
  const _$LunchesDayMenuModel(
      {required this.id,
      required this.day,
      required this.schoolId,
      required final List<DishModel> dishes,
      this.event})
      : _dishes = dishes,
        super._();

  @override
  final int id;
  @override
  final DateTime day;
  @override
  final int schoolId;
  final List<DishModel> _dishes;
  @override
  List<DishModel> get dishes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dishes);
  }

  @override
  final String? event;

  @override
  String toString() {
    return 'MenuModel.lunchesDay(id: $id, day: $day, schoolId: $schoolId, dishes: $dishes, event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LunchesDayMenuModel &&
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
  $LunchesDayMenuModelCopyWith<LunchesDayMenuModel> get copyWith =>
      _$LunchesDayMenuModelCopyWithImpl<LunchesDayMenuModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, DateTime day, int schoolId,
            List<DishModel> dishes, String? event)
        lunchesDay,
    required TResult Function() holiday,
    required TResult Function() noData,
  }) {
    return lunchesDay(id, day, schoolId, dishes, event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id, DateTime day, int schoolId, List<DishModel> dishes,
            String? event)?
        lunchesDay,
    TResult Function()? holiday,
    TResult Function()? noData,
  }) {
    return lunchesDay?.call(id, day, schoolId, dishes, event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, DateTime day, int schoolId, List<DishModel> dishes,
            String? event)?
        lunchesDay,
    TResult Function()? holiday,
    TResult Function()? noData,
    required TResult orElse(),
  }) {
    if (lunchesDay != null) {
      return lunchesDay(id, day, schoolId, dishes, event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LunchesDayMenuModel value) lunchesDay,
    required TResult Function(HolidayMenuModel value) holiday,
    required TResult Function(NodataMenuModel value) noData,
  }) {
    return lunchesDay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LunchesDayMenuModel value)? lunchesDay,
    TResult Function(HolidayMenuModel value)? holiday,
    TResult Function(NodataMenuModel value)? noData,
  }) {
    return lunchesDay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LunchesDayMenuModel value)? lunchesDay,
    TResult Function(HolidayMenuModel value)? holiday,
    TResult Function(NodataMenuModel value)? noData,
    required TResult orElse(),
  }) {
    if (lunchesDay != null) {
      return lunchesDay(this);
    }
    return orElse();
  }
}

abstract class LunchesDayMenuModel extends MenuModel {
  const factory LunchesDayMenuModel(
      {required final int id,
      required final DateTime day,
      required final int schoolId,
      required final List<DishModel> dishes,
      final String? event}) = _$LunchesDayMenuModel;
  const LunchesDayMenuModel._() : super._();

  int get id => throw _privateConstructorUsedError;
  DateTime get day => throw _privateConstructorUsedError;
  int get schoolId => throw _privateConstructorUsedError;
  List<DishModel> get dishes => throw _privateConstructorUsedError;
  String? get event => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LunchesDayMenuModelCopyWith<LunchesDayMenuModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HolidayMenuModelCopyWith<$Res> {
  factory $HolidayMenuModelCopyWith(
          HolidayMenuModel value, $Res Function(HolidayMenuModel) then) =
      _$HolidayMenuModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$HolidayMenuModelCopyWithImpl<$Res> extends _$MenuModelCopyWithImpl<$Res>
    implements $HolidayMenuModelCopyWith<$Res> {
  _$HolidayMenuModelCopyWithImpl(
      HolidayMenuModel _value, $Res Function(HolidayMenuModel) _then)
      : super(_value, (v) => _then(v as HolidayMenuModel));

  @override
  HolidayMenuModel get _value => super._value as HolidayMenuModel;
}

/// @nodoc

class _$HolidayMenuModel extends HolidayMenuModel {
  const _$HolidayMenuModel() : super._();

  @override
  String toString() {
    return 'MenuModel.holiday()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HolidayMenuModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, DateTime day, int schoolId,
            List<DishModel> dishes, String? event)
        lunchesDay,
    required TResult Function() holiday,
    required TResult Function() noData,
  }) {
    return holiday();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id, DateTime day, int schoolId, List<DishModel> dishes,
            String? event)?
        lunchesDay,
    TResult Function()? holiday,
    TResult Function()? noData,
  }) {
    return holiday?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, DateTime day, int schoolId, List<DishModel> dishes,
            String? event)?
        lunchesDay,
    TResult Function()? holiday,
    TResult Function()? noData,
    required TResult orElse(),
  }) {
    if (holiday != null) {
      return holiday();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LunchesDayMenuModel value) lunchesDay,
    required TResult Function(HolidayMenuModel value) holiday,
    required TResult Function(NodataMenuModel value) noData,
  }) {
    return holiday(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LunchesDayMenuModel value)? lunchesDay,
    TResult Function(HolidayMenuModel value)? holiday,
    TResult Function(NodataMenuModel value)? noData,
  }) {
    return holiday?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LunchesDayMenuModel value)? lunchesDay,
    TResult Function(HolidayMenuModel value)? holiday,
    TResult Function(NodataMenuModel value)? noData,
    required TResult orElse(),
  }) {
    if (holiday != null) {
      return holiday(this);
    }
    return orElse();
  }
}

abstract class HolidayMenuModel extends MenuModel {
  const factory HolidayMenuModel() = _$HolidayMenuModel;
  const HolidayMenuModel._() : super._();
}

/// @nodoc
abstract class $NodataMenuModelCopyWith<$Res> {
  factory $NodataMenuModelCopyWith(
          NodataMenuModel value, $Res Function(NodataMenuModel) then) =
      _$NodataMenuModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$NodataMenuModelCopyWithImpl<$Res> extends _$MenuModelCopyWithImpl<$Res>
    implements $NodataMenuModelCopyWith<$Res> {
  _$NodataMenuModelCopyWithImpl(
      NodataMenuModel _value, $Res Function(NodataMenuModel) _then)
      : super(_value, (v) => _then(v as NodataMenuModel));

  @override
  NodataMenuModel get _value => super._value as NodataMenuModel;
}

/// @nodoc

class _$NodataMenuModel extends NodataMenuModel {
  const _$NodataMenuModel() : super._();

  @override
  String toString() {
    return 'MenuModel.noData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NodataMenuModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, DateTime day, int schoolId,
            List<DishModel> dishes, String? event)
        lunchesDay,
    required TResult Function() holiday,
    required TResult Function() noData,
  }) {
    return noData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id, DateTime day, int schoolId, List<DishModel> dishes,
            String? event)?
        lunchesDay,
    TResult Function()? holiday,
    TResult Function()? noData,
  }) {
    return noData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, DateTime day, int schoolId, List<DishModel> dishes,
            String? event)?
        lunchesDay,
    TResult Function()? holiday,
    TResult Function()? noData,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LunchesDayMenuModel value) lunchesDay,
    required TResult Function(HolidayMenuModel value) holiday,
    required TResult Function(NodataMenuModel value) noData,
  }) {
    return noData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LunchesDayMenuModel value)? lunchesDay,
    TResult Function(HolidayMenuModel value)? holiday,
    TResult Function(NodataMenuModel value)? noData,
  }) {
    return noData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LunchesDayMenuModel value)? lunchesDay,
    TResult Function(HolidayMenuModel value)? holiday,
    TResult Function(NodataMenuModel value)? noData,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(this);
    }
    return orElse();
  }
}

abstract class NodataMenuModel extends MenuModel {
  const factory NodataMenuModel() = _$NodataMenuModel;
  const NodataMenuModel._() : super._();
}
