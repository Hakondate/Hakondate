// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MenuModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, DateTime day, int schoolId,
            List<DishModel> dishes, String? event)
        lunchesDay,
    required TResult Function() holiday,
    required TResult Function() noData,
    required TResult Function() unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, DateTime day, int schoolId,
            List<DishModel> dishes, String? event)?
        lunchesDay,
    TResult? Function()? holiday,
    TResult? Function()? noData,
    TResult? Function()? unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, DateTime day, int schoolId, List<DishModel> dishes,
            String? event)?
        lunchesDay,
    TResult Function()? holiday,
    TResult Function()? noData,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LunchesDayMenuModel value) lunchesDay,
    required TResult Function(HolidayMenuModel value) holiday,
    required TResult Function(NoDataMenuModel value) noData,
    required TResult Function(UnauthorizedMenuModel value) unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LunchesDayMenuModel value)? lunchesDay,
    TResult? Function(HolidayMenuModel value)? holiday,
    TResult? Function(NoDataMenuModel value)? noData,
    TResult? Function(UnauthorizedMenuModel value)? unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LunchesDayMenuModel value)? lunchesDay,
    TResult Function(HolidayMenuModel value)? holiday,
    TResult Function(NoDataMenuModel value)? noData,
    TResult Function(UnauthorizedMenuModel value)? unauthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuModelCopyWith<$Res> {
  factory $MenuModelCopyWith(MenuModel value, $Res Function(MenuModel) then) =
      _$MenuModelCopyWithImpl<$Res, MenuModel>;
}

/// @nodoc
class _$MenuModelCopyWithImpl<$Res, $Val extends MenuModel>
    implements $MenuModelCopyWith<$Res> {
  _$MenuModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MenuModel
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LunchesDayMenuModelImplCopyWith<$Res> {
  factory _$$LunchesDayMenuModelImplCopyWith(_$LunchesDayMenuModelImpl value,
          $Res Function(_$LunchesDayMenuModelImpl) then) =
      __$$LunchesDayMenuModelImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int id,
      DateTime day,
      int schoolId,
      List<DishModel> dishes,
      String? event});
}

/// @nodoc
class __$$LunchesDayMenuModelImplCopyWithImpl<$Res>
    extends _$MenuModelCopyWithImpl<$Res, _$LunchesDayMenuModelImpl>
    implements _$$LunchesDayMenuModelImplCopyWith<$Res> {
  __$$LunchesDayMenuModelImplCopyWithImpl(_$LunchesDayMenuModelImpl _value,
      $Res Function(_$LunchesDayMenuModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MenuModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? day = null,
    Object? schoolId = null,
    Object? dishes = null,
    Object? event = freezed,
  }) {
    return _then(_$LunchesDayMenuModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DateTime,
      schoolId: null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int,
      dishes: null == dishes
          ? _value._dishes
          : dishes // ignore: cast_nullable_to_non_nullable
              as List<DishModel>,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LunchesDayMenuModelImpl extends LunchesDayMenuModel {
  const _$LunchesDayMenuModelImpl(
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
    if (_dishes is EqualUnmodifiableListView) return _dishes;
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LunchesDayMenuModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            const DeepCollectionEquality().equals(other._dishes, _dishes) &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, day, schoolId,
      const DeepCollectionEquality().hash(_dishes), event);

  /// Create a copy of MenuModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LunchesDayMenuModelImplCopyWith<_$LunchesDayMenuModelImpl> get copyWith =>
      __$$LunchesDayMenuModelImplCopyWithImpl<_$LunchesDayMenuModelImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, DateTime day, int schoolId,
            List<DishModel> dishes, String? event)
        lunchesDay,
    required TResult Function() holiday,
    required TResult Function() noData,
    required TResult Function() unauthorized,
  }) {
    return lunchesDay(id, day, schoolId, dishes, event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, DateTime day, int schoolId,
            List<DishModel> dishes, String? event)?
        lunchesDay,
    TResult? Function()? holiday,
    TResult? Function()? noData,
    TResult? Function()? unauthorized,
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
    TResult Function()? unauthorized,
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
    required TResult Function(NoDataMenuModel value) noData,
    required TResult Function(UnauthorizedMenuModel value) unauthorized,
  }) {
    return lunchesDay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LunchesDayMenuModel value)? lunchesDay,
    TResult? Function(HolidayMenuModel value)? holiday,
    TResult? Function(NoDataMenuModel value)? noData,
    TResult? Function(UnauthorizedMenuModel value)? unauthorized,
  }) {
    return lunchesDay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LunchesDayMenuModel value)? lunchesDay,
    TResult Function(HolidayMenuModel value)? holiday,
    TResult Function(NoDataMenuModel value)? noData,
    TResult Function(UnauthorizedMenuModel value)? unauthorized,
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
      final String? event}) = _$LunchesDayMenuModelImpl;
  const LunchesDayMenuModel._() : super._();

  int get id;
  DateTime get day;
  int get schoolId;
  List<DishModel> get dishes;
  String? get event;

  /// Create a copy of MenuModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LunchesDayMenuModelImplCopyWith<_$LunchesDayMenuModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HolidayMenuModelImplCopyWith<$Res> {
  factory _$$HolidayMenuModelImplCopyWith(_$HolidayMenuModelImpl value,
          $Res Function(_$HolidayMenuModelImpl) then) =
      __$$HolidayMenuModelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HolidayMenuModelImplCopyWithImpl<$Res>
    extends _$MenuModelCopyWithImpl<$Res, _$HolidayMenuModelImpl>
    implements _$$HolidayMenuModelImplCopyWith<$Res> {
  __$$HolidayMenuModelImplCopyWithImpl(_$HolidayMenuModelImpl _value,
      $Res Function(_$HolidayMenuModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MenuModel
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HolidayMenuModelImpl extends HolidayMenuModel {
  const _$HolidayMenuModelImpl() : super._();

  @override
  String toString() {
    return 'MenuModel.holiday()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HolidayMenuModelImpl);
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
    required TResult Function() unauthorized,
  }) {
    return holiday();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, DateTime day, int schoolId,
            List<DishModel> dishes, String? event)?
        lunchesDay,
    TResult? Function()? holiday,
    TResult? Function()? noData,
    TResult? Function()? unauthorized,
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
    TResult Function()? unauthorized,
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
    required TResult Function(NoDataMenuModel value) noData,
    required TResult Function(UnauthorizedMenuModel value) unauthorized,
  }) {
    return holiday(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LunchesDayMenuModel value)? lunchesDay,
    TResult? Function(HolidayMenuModel value)? holiday,
    TResult? Function(NoDataMenuModel value)? noData,
    TResult? Function(UnauthorizedMenuModel value)? unauthorized,
  }) {
    return holiday?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LunchesDayMenuModel value)? lunchesDay,
    TResult Function(HolidayMenuModel value)? holiday,
    TResult Function(NoDataMenuModel value)? noData,
    TResult Function(UnauthorizedMenuModel value)? unauthorized,
    required TResult orElse(),
  }) {
    if (holiday != null) {
      return holiday(this);
    }
    return orElse();
  }
}

abstract class HolidayMenuModel extends MenuModel {
  const factory HolidayMenuModel() = _$HolidayMenuModelImpl;
  const HolidayMenuModel._() : super._();
}

/// @nodoc
abstract class _$$NoDataMenuModelImplCopyWith<$Res> {
  factory _$$NoDataMenuModelImplCopyWith(_$NoDataMenuModelImpl value,
          $Res Function(_$NoDataMenuModelImpl) then) =
      __$$NoDataMenuModelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoDataMenuModelImplCopyWithImpl<$Res>
    extends _$MenuModelCopyWithImpl<$Res, _$NoDataMenuModelImpl>
    implements _$$NoDataMenuModelImplCopyWith<$Res> {
  __$$NoDataMenuModelImplCopyWithImpl(
      _$NoDataMenuModelImpl _value, $Res Function(_$NoDataMenuModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MenuModel
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoDataMenuModelImpl extends NoDataMenuModel {
  const _$NoDataMenuModelImpl() : super._();

  @override
  String toString() {
    return 'MenuModel.noData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoDataMenuModelImpl);
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
    required TResult Function() unauthorized,
  }) {
    return noData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, DateTime day, int schoolId,
            List<DishModel> dishes, String? event)?
        lunchesDay,
    TResult? Function()? holiday,
    TResult? Function()? noData,
    TResult? Function()? unauthorized,
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
    TResult Function()? unauthorized,
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
    required TResult Function(NoDataMenuModel value) noData,
    required TResult Function(UnauthorizedMenuModel value) unauthorized,
  }) {
    return noData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LunchesDayMenuModel value)? lunchesDay,
    TResult? Function(HolidayMenuModel value)? holiday,
    TResult? Function(NoDataMenuModel value)? noData,
    TResult? Function(UnauthorizedMenuModel value)? unauthorized,
  }) {
    return noData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LunchesDayMenuModel value)? lunchesDay,
    TResult Function(HolidayMenuModel value)? holiday,
    TResult Function(NoDataMenuModel value)? noData,
    TResult Function(UnauthorizedMenuModel value)? unauthorized,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(this);
    }
    return orElse();
  }
}

abstract class NoDataMenuModel extends MenuModel {
  const factory NoDataMenuModel() = _$NoDataMenuModelImpl;
  const NoDataMenuModel._() : super._();
}

/// @nodoc
abstract class _$$UnauthorizedMenuModelImplCopyWith<$Res> {
  factory _$$UnauthorizedMenuModelImplCopyWith(
          _$UnauthorizedMenuModelImpl value,
          $Res Function(_$UnauthorizedMenuModelImpl) then) =
      __$$UnauthorizedMenuModelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthorizedMenuModelImplCopyWithImpl<$Res>
    extends _$MenuModelCopyWithImpl<$Res, _$UnauthorizedMenuModelImpl>
    implements _$$UnauthorizedMenuModelImplCopyWith<$Res> {
  __$$UnauthorizedMenuModelImplCopyWithImpl(_$UnauthorizedMenuModelImpl _value,
      $Res Function(_$UnauthorizedMenuModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MenuModel
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnauthorizedMenuModelImpl extends UnauthorizedMenuModel {
  const _$UnauthorizedMenuModelImpl() : super._();

  @override
  String toString() {
    return 'MenuModel.unauthorized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthorizedMenuModelImpl);
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
    required TResult Function() unauthorized,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, DateTime day, int schoolId,
            List<DishModel> dishes, String? event)?
        lunchesDay,
    TResult? Function()? holiday,
    TResult? Function()? noData,
    TResult? Function()? unauthorized,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, DateTime day, int schoolId, List<DishModel> dishes,
            String? event)?
        lunchesDay,
    TResult Function()? holiday,
    TResult Function()? noData,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LunchesDayMenuModel value) lunchesDay,
    required TResult Function(HolidayMenuModel value) holiday,
    required TResult Function(NoDataMenuModel value) noData,
    required TResult Function(UnauthorizedMenuModel value) unauthorized,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LunchesDayMenuModel value)? lunchesDay,
    TResult? Function(HolidayMenuModel value)? holiday,
    TResult? Function(NoDataMenuModel value)? noData,
    TResult? Function(UnauthorizedMenuModel value)? unauthorized,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LunchesDayMenuModel value)? lunchesDay,
    TResult Function(HolidayMenuModel value)? holiday,
    TResult Function(NoDataMenuModel value)? noData,
    TResult Function(UnauthorizedMenuModel value)? unauthorized,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class UnauthorizedMenuModel extends MenuModel {
  const factory UnauthorizedMenuModel() = _$UnauthorizedMenuModelImpl;
  const UnauthorizedMenuModel._() : super._();
}
