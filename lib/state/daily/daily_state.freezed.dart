// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'daily_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DailyStateTearOff {
  const _$DailyStateTearOff();

  _DailyState call(
      {required DateTime selectedDay,
      required DateTime focusedDay,
      required DateTime calendarTabFirstDay,
      required DateTime calendarTabLastDay,
      MenuModel? menu,
      int status = -1,
      bool isFetching = true}) {
    return _DailyState(
      selectedDay: selectedDay,
      focusedDay: focusedDay,
      calendarTabFirstDay: calendarTabFirstDay,
      calendarTabLastDay: calendarTabLastDay,
      menu: menu,
      status: status,
      isFetching: isFetching,
    );
  }
}

/// @nodoc
const $DailyState = _$DailyStateTearOff();

/// @nodoc
mixin _$DailyState {
  DateTime get selectedDay => throw _privateConstructorUsedError;
  DateTime get focusedDay => throw _privateConstructorUsedError;
  DateTime get calendarTabFirstDay => throw _privateConstructorUsedError;
  DateTime get calendarTabLastDay => throw _privateConstructorUsedError;
  MenuModel? get menu => throw _privateConstructorUsedError;
  int get status =>
      throw _privateConstructorUsedError; // -1:データ無し, 0:休み, 1:給食あり
  bool get isFetching => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DailyStateCopyWith<DailyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyStateCopyWith<$Res> {
  factory $DailyStateCopyWith(
          DailyState value, $Res Function(DailyState) then) =
      _$DailyStateCopyWithImpl<$Res>;
  $Res call(
      {DateTime selectedDay,
      DateTime focusedDay,
      DateTime calendarTabFirstDay,
      DateTime calendarTabLastDay,
      MenuModel? menu,
      int status,
      bool isFetching});

  $MenuModelCopyWith<$Res>? get menu;
}

/// @nodoc
class _$DailyStateCopyWithImpl<$Res> implements $DailyStateCopyWith<$Res> {
  _$DailyStateCopyWithImpl(this._value, this._then);

  final DailyState _value;
  // ignore: unused_field
  final $Res Function(DailyState) _then;

  @override
  $Res call({
    Object? selectedDay = freezed,
    Object? focusedDay = freezed,
    Object? calendarTabFirstDay = freezed,
    Object? calendarTabLastDay = freezed,
    Object? menu = freezed,
    Object? status = freezed,
    Object? isFetching = freezed,
  }) {
    return _then(_value.copyWith(
      selectedDay: selectedDay == freezed
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      focusedDay: focusedDay == freezed
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      calendarTabFirstDay: calendarTabFirstDay == freezed
          ? _value.calendarTabFirstDay
          : calendarTabFirstDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      calendarTabLastDay: calendarTabLastDay == freezed
          ? _value.calendarTabLastDay
          : calendarTabLastDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      menu: menu == freezed
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as MenuModel?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      isFetching: isFetching == freezed
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $MenuModelCopyWith<$Res>? get menu {
    if (_value.menu == null) {
      return null;
    }

    return $MenuModelCopyWith<$Res>(_value.menu!, (value) {
      return _then(_value.copyWith(menu: value));
    });
  }
}

/// @nodoc
abstract class _$DailyStateCopyWith<$Res> implements $DailyStateCopyWith<$Res> {
  factory _$DailyStateCopyWith(
          _DailyState value, $Res Function(_DailyState) then) =
      __$DailyStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime selectedDay,
      DateTime focusedDay,
      DateTime calendarTabFirstDay,
      DateTime calendarTabLastDay,
      MenuModel? menu,
      int status,
      bool isFetching});

  @override
  $MenuModelCopyWith<$Res>? get menu;
}

/// @nodoc
class __$DailyStateCopyWithImpl<$Res> extends _$DailyStateCopyWithImpl<$Res>
    implements _$DailyStateCopyWith<$Res> {
  __$DailyStateCopyWithImpl(
      _DailyState _value, $Res Function(_DailyState) _then)
      : super(_value, (v) => _then(v as _DailyState));

  @override
  _DailyState get _value => super._value as _DailyState;

  @override
  $Res call({
    Object? selectedDay = freezed,
    Object? focusedDay = freezed,
    Object? calendarTabFirstDay = freezed,
    Object? calendarTabLastDay = freezed,
    Object? menu = freezed,
    Object? status = freezed,
    Object? isFetching = freezed,
  }) {
    return _then(_DailyState(
      selectedDay: selectedDay == freezed
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      focusedDay: focusedDay == freezed
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      calendarTabFirstDay: calendarTabFirstDay == freezed
          ? _value.calendarTabFirstDay
          : calendarTabFirstDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      calendarTabLastDay: calendarTabLastDay == freezed
          ? _value.calendarTabLastDay
          : calendarTabLastDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      menu: menu == freezed
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as MenuModel?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      isFetching: isFetching == freezed
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DailyState with DiagnosticableTreeMixin implements _DailyState {
  const _$_DailyState(
      {required this.selectedDay,
      required this.focusedDay,
      required this.calendarTabFirstDay,
      required this.calendarTabLastDay,
      this.menu,
      this.status = -1,
      this.isFetching = true});

  @override
  final DateTime selectedDay;
  @override
  final DateTime focusedDay;
  @override
  final DateTime calendarTabFirstDay;
  @override
  final DateTime calendarTabLastDay;
  @override
  final MenuModel? menu;
  @JsonKey()
  @override
  final int status;
  @JsonKey()
  @override // -1:データ無し, 0:休み, 1:給食あり
  final bool isFetching;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DailyState(selectedDay: $selectedDay, focusedDay: $focusedDay, calendarTabFirstDay: $calendarTabFirstDay, calendarTabLastDay: $calendarTabLastDay, menu: $menu, status: $status, isFetching: $isFetching)';
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
      ..add(DiagnosticsProperty('menu', menu))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('isFetching', isFetching));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DailyState &&
            const DeepCollectionEquality()
                .equals(other.selectedDay, selectedDay) &&
            const DeepCollectionEquality()
                .equals(other.focusedDay, focusedDay) &&
            const DeepCollectionEquality()
                .equals(other.calendarTabFirstDay, calendarTabFirstDay) &&
            const DeepCollectionEquality()
                .equals(other.calendarTabLastDay, calendarTabLastDay) &&
            const DeepCollectionEquality().equals(other.menu, menu) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.isFetching, isFetching));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selectedDay),
      const DeepCollectionEquality().hash(focusedDay),
      const DeepCollectionEquality().hash(calendarTabFirstDay),
      const DeepCollectionEquality().hash(calendarTabLastDay),
      const DeepCollectionEquality().hash(menu),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(isFetching));

  @JsonKey(ignore: true)
  @override
  _$DailyStateCopyWith<_DailyState> get copyWith =>
      __$DailyStateCopyWithImpl<_DailyState>(this, _$identity);
}

abstract class _DailyState implements DailyState {
  const factory _DailyState(
      {required DateTime selectedDay,
      required DateTime focusedDay,
      required DateTime calendarTabFirstDay,
      required DateTime calendarTabLastDay,
      MenuModel? menu,
      int status,
      bool isFetching}) = _$_DailyState;

  @override
  DateTime get selectedDay;
  @override
  DateTime get focusedDay;
  @override
  DateTime get calendarTabFirstDay;
  @override
  DateTime get calendarTabLastDay;
  @override
  MenuModel? get menu;
  @override
  int get status;
  @override // -1:データ無し, 0:休み, 1:給食あり
  bool get isFetching;
  @override
  @JsonKey(ignore: true)
  _$DailyStateCopyWith<_DailyState> get copyWith =>
      throw _privateConstructorUsedError;
}
