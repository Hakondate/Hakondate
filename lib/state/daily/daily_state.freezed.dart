// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DailyState {
  DateTime get selectedDay => throw _privateConstructorUsedError;
  DateTime get focusedDay => throw _privateConstructorUsedError;
  DateTime get calendarTabFirstDay => throw _privateConstructorUsedError;
  DateTime get calendarTabLastDay => throw _privateConstructorUsedError;
  Map<FiveMajorNutrient, List<DictionaryItemModel>> get recommendFoodStuffs =>
      throw _privateConstructorUsedError;
  MenuModel get menu => throw _privateConstructorUsedError;
  DishModel? get selectedDish => throw _privateConstructorUsedError;

  /// Create a copy of DailyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyStateCopyWith<DailyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyStateCopyWith<$Res> {
  factory $DailyStateCopyWith(
          DailyState value, $Res Function(DailyState) then) =
      _$DailyStateCopyWithImpl<$Res, DailyState>;
  @useResult
  $Res call(
      {DateTime selectedDay,
      DateTime focusedDay,
      DateTime calendarTabFirstDay,
      DateTime calendarTabLastDay,
      Map<FiveMajorNutrient, List<DictionaryItemModel>> recommendFoodStuffs,
      MenuModel menu,
      DishModel? selectedDish});

  $MenuModelCopyWith<$Res> get menu;
  $DishModelCopyWith<$Res>? get selectedDish;
}

/// @nodoc
class _$DailyStateCopyWithImpl<$Res, $Val extends DailyState>
    implements $DailyStateCopyWith<$Res> {
  _$DailyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDay = null,
    Object? focusedDay = null,
    Object? calendarTabFirstDay = null,
    Object? calendarTabLastDay = null,
    Object? recommendFoodStuffs = null,
    Object? menu = null,
    Object? selectedDish = freezed,
  }) {
    return _then(_value.copyWith(
      selectedDay: null == selectedDay
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      focusedDay: null == focusedDay
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      calendarTabFirstDay: null == calendarTabFirstDay
          ? _value.calendarTabFirstDay
          : calendarTabFirstDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      calendarTabLastDay: null == calendarTabLastDay
          ? _value.calendarTabLastDay
          : calendarTabLastDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      recommendFoodStuffs: null == recommendFoodStuffs
          ? _value.recommendFoodStuffs
          : recommendFoodStuffs // ignore: cast_nullable_to_non_nullable
              as Map<FiveMajorNutrient, List<DictionaryItemModel>>,
      menu: null == menu
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as MenuModel,
      selectedDish: freezed == selectedDish
          ? _value.selectedDish
          : selectedDish // ignore: cast_nullable_to_non_nullable
              as DishModel?,
    ) as $Val);
  }

  /// Create a copy of DailyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MenuModelCopyWith<$Res> get menu {
    return $MenuModelCopyWith<$Res>(_value.menu, (value) {
      return _then(_value.copyWith(menu: value) as $Val);
    });
  }

  /// Create a copy of DailyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DishModelCopyWith<$Res>? get selectedDish {
    if (_value.selectedDish == null) {
      return null;
    }

    return $DishModelCopyWith<$Res>(_value.selectedDish!, (value) {
      return _then(_value.copyWith(selectedDish: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DailyStateImplCopyWith<$Res>
    implements $DailyStateCopyWith<$Res> {
  factory _$$DailyStateImplCopyWith(
          _$DailyStateImpl value, $Res Function(_$DailyStateImpl) then) =
      __$$DailyStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime selectedDay,
      DateTime focusedDay,
      DateTime calendarTabFirstDay,
      DateTime calendarTabLastDay,
      Map<FiveMajorNutrient, List<DictionaryItemModel>> recommendFoodStuffs,
      MenuModel menu,
      DishModel? selectedDish});

  @override
  $MenuModelCopyWith<$Res> get menu;
  @override
  $DishModelCopyWith<$Res>? get selectedDish;
}

/// @nodoc
class __$$DailyStateImplCopyWithImpl<$Res>
    extends _$DailyStateCopyWithImpl<$Res, _$DailyStateImpl>
    implements _$$DailyStateImplCopyWith<$Res> {
  __$$DailyStateImplCopyWithImpl(
      _$DailyStateImpl _value, $Res Function(_$DailyStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DailyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDay = null,
    Object? focusedDay = null,
    Object? calendarTabFirstDay = null,
    Object? calendarTabLastDay = null,
    Object? recommendFoodStuffs = null,
    Object? menu = null,
    Object? selectedDish = freezed,
  }) {
    return _then(_$DailyStateImpl(
      selectedDay: null == selectedDay
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      focusedDay: null == focusedDay
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      calendarTabFirstDay: null == calendarTabFirstDay
          ? _value.calendarTabFirstDay
          : calendarTabFirstDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      calendarTabLastDay: null == calendarTabLastDay
          ? _value.calendarTabLastDay
          : calendarTabLastDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      recommendFoodStuffs: null == recommendFoodStuffs
          ? _value._recommendFoodStuffs
          : recommendFoodStuffs // ignore: cast_nullable_to_non_nullable
              as Map<FiveMajorNutrient, List<DictionaryItemModel>>,
      menu: null == menu
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as MenuModel,
      selectedDish: freezed == selectedDish
          ? _value.selectedDish
          : selectedDish // ignore: cast_nullable_to_non_nullable
              as DishModel?,
    ));
  }
}

/// @nodoc

class _$DailyStateImpl with DiagnosticableTreeMixin implements _DailyState {
  const _$DailyStateImpl(
      {required this.selectedDay,
      required this.focusedDay,
      required this.calendarTabFirstDay,
      required this.calendarTabLastDay,
      final Map<FiveMajorNutrient, List<DictionaryItemModel>> recommendFoodStuffs =
          const <FiveMajorNutrient, List<DictionaryItemModel>>{},
      this.menu = const MenuModel.noData(),
      this.selectedDish})
      : _recommendFoodStuffs = recommendFoodStuffs;

  @override
  final DateTime selectedDay;
  @override
  final DateTime focusedDay;
  @override
  final DateTime calendarTabFirstDay;
  @override
  final DateTime calendarTabLastDay;
  final Map<FiveMajorNutrient, List<DictionaryItemModel>> _recommendFoodStuffs;
  @override
  @JsonKey()
  Map<FiveMajorNutrient, List<DictionaryItemModel>> get recommendFoodStuffs {
    if (_recommendFoodStuffs is EqualUnmodifiableMapView)
      return _recommendFoodStuffs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_recommendFoodStuffs);
  }

  @override
  @JsonKey()
  final MenuModel menu;
  @override
  final DishModel? selectedDish;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DailyState(selectedDay: $selectedDay, focusedDay: $focusedDay, calendarTabFirstDay: $calendarTabFirstDay, calendarTabLastDay: $calendarTabLastDay, recommendFoodStuffs: $recommendFoodStuffs, menu: $menu, selectedDish: $selectedDish)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DailyState'))
      ..add(DiagnosticsProperty('selectedDay', selectedDay))
      ..add(DiagnosticsProperty('focusedDay', focusedDay))
      ..add(DiagnosticsProperty('calendarTabFirstDay', calendarTabFirstDay))
      ..add(DiagnosticsProperty('calendarTabLastDay', calendarTabLastDay))
      ..add(DiagnosticsProperty('recommendFoodStuffs', recommendFoodStuffs))
      ..add(DiagnosticsProperty('menu', menu))
      ..add(DiagnosticsProperty('selectedDish', selectedDish));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyStateImpl &&
            (identical(other.selectedDay, selectedDay) ||
                other.selectedDay == selectedDay) &&
            (identical(other.focusedDay, focusedDay) ||
                other.focusedDay == focusedDay) &&
            (identical(other.calendarTabFirstDay, calendarTabFirstDay) ||
                other.calendarTabFirstDay == calendarTabFirstDay) &&
            (identical(other.calendarTabLastDay, calendarTabLastDay) ||
                other.calendarTabLastDay == calendarTabLastDay) &&
            const DeepCollectionEquality()
                .equals(other._recommendFoodStuffs, _recommendFoodStuffs) &&
            (identical(other.menu, menu) || other.menu == menu) &&
            (identical(other.selectedDish, selectedDish) ||
                other.selectedDish == selectedDish));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedDay,
      focusedDay,
      calendarTabFirstDay,
      calendarTabLastDay,
      const DeepCollectionEquality().hash(_recommendFoodStuffs),
      menu,
      selectedDish);

  /// Create a copy of DailyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyStateImplCopyWith<_$DailyStateImpl> get copyWith =>
      __$$DailyStateImplCopyWithImpl<_$DailyStateImpl>(this, _$identity);
}

abstract class _DailyState implements DailyState {
  const factory _DailyState(
      {required final DateTime selectedDay,
      required final DateTime focusedDay,
      required final DateTime calendarTabFirstDay,
      required final DateTime calendarTabLastDay,
      final Map<FiveMajorNutrient, List<DictionaryItemModel>>
          recommendFoodStuffs,
      final MenuModel menu,
      final DishModel? selectedDish}) = _$DailyStateImpl;

  @override
  DateTime get selectedDay;
  @override
  DateTime get focusedDay;
  @override
  DateTime get calendarTabFirstDay;
  @override
  DateTime get calendarTabLastDay;
  @override
  Map<FiveMajorNutrient, List<DictionaryItemModel>> get recommendFoodStuffs;
  @override
  MenuModel get menu;
  @override
  DishModel? get selectedDish;

  /// Create a copy of DailyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyStateImplCopyWith<_$DailyStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
