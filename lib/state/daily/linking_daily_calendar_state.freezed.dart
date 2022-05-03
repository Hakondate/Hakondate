// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'linking_daily_calendar_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LinkingDailyCalendarState {
  DateTime get selectedDay => throw _privateConstructorUsedError;
  DateTime get calendarOldestDay => throw _privateConstructorUsedError;
  DateTime get calendarLatestDay => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LinkingDailyCalendarStateCopyWith<LinkingDailyCalendarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkingDailyCalendarStateCopyWith<$Res> {
  factory $LinkingDailyCalendarStateCopyWith(LinkingDailyCalendarState value,
          $Res Function(LinkingDailyCalendarState) then) =
      _$LinkingDailyCalendarStateCopyWithImpl<$Res>;
  $Res call(
      {DateTime selectedDay,
      DateTime calendarOldestDay,
      DateTime calendarLatestDay});
}

/// @nodoc
class _$LinkingDailyCalendarStateCopyWithImpl<$Res>
    implements $LinkingDailyCalendarStateCopyWith<$Res> {
  _$LinkingDailyCalendarStateCopyWithImpl(this._value, this._then);

  final LinkingDailyCalendarState _value;
  // ignore: unused_field
  final $Res Function(LinkingDailyCalendarState) _then;

  @override
  $Res call({
    Object? selectedDay = freezed,
    Object? calendarOldestDay = freezed,
    Object? calendarLatestDay = freezed,
  }) {
    return _then(_value.copyWith(
      selectedDay: selectedDay == freezed
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      calendarOldestDay: calendarOldestDay == freezed
          ? _value.calendarOldestDay
          : calendarOldestDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      calendarLatestDay: calendarLatestDay == freezed
          ? _value.calendarLatestDay
          : calendarLatestDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$LinkingDailyCalendarStateCopyWith<$Res>
    implements $LinkingDailyCalendarStateCopyWith<$Res> {
  factory _$LinkingDailyCalendarStateCopyWith(_LinkingDailyCalendarState value,
          $Res Function(_LinkingDailyCalendarState) then) =
      __$LinkingDailyCalendarStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime selectedDay,
      DateTime calendarOldestDay,
      DateTime calendarLatestDay});
}

/// @nodoc
class __$LinkingDailyCalendarStateCopyWithImpl<$Res>
    extends _$LinkingDailyCalendarStateCopyWithImpl<$Res>
    implements _$LinkingDailyCalendarStateCopyWith<$Res> {
  __$LinkingDailyCalendarStateCopyWithImpl(_LinkingDailyCalendarState _value,
      $Res Function(_LinkingDailyCalendarState) _then)
      : super(_value, (v) => _then(v as _LinkingDailyCalendarState));

  @override
  _LinkingDailyCalendarState get _value =>
      super._value as _LinkingDailyCalendarState;

  @override
  $Res call({
    Object? selectedDay = freezed,
    Object? calendarOldestDay = freezed,
    Object? calendarLatestDay = freezed,
  }) {
    return _then(_LinkingDailyCalendarState(
      selectedDay: selectedDay == freezed
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      calendarOldestDay: calendarOldestDay == freezed
          ? _value.calendarOldestDay
          : calendarOldestDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      calendarLatestDay: calendarLatestDay == freezed
          ? _value.calendarLatestDay
          : calendarLatestDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_LinkingDailyCalendarState
    with DiagnosticableTreeMixin
    implements _LinkingDailyCalendarState {
  const _$_LinkingDailyCalendarState(
      {required this.selectedDay,
      required this.calendarOldestDay,
      required this.calendarLatestDay});

  @override
  final DateTime selectedDay;
  @override
  final DateTime calendarOldestDay;
  @override
  final DateTime calendarLatestDay;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LinkingDailyCalendarState(selectedDay: $selectedDay, calendarOldestDay: $calendarOldestDay, calendarLatestDay: $calendarLatestDay)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LinkingDailyCalendarState'))
      ..add(DiagnosticsProperty('selectedDay', selectedDay))
      ..add(DiagnosticsProperty('calendarOldestDay', calendarOldestDay))
      ..add(DiagnosticsProperty('calendarLatestDay', calendarLatestDay));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LinkingDailyCalendarState &&
            const DeepCollectionEquality()
                .equals(other.selectedDay, selectedDay) &&
            const DeepCollectionEquality()
                .equals(other.calendarOldestDay, calendarOldestDay) &&
            const DeepCollectionEquality()
                .equals(other.calendarLatestDay, calendarLatestDay));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selectedDay),
      const DeepCollectionEquality().hash(calendarOldestDay),
      const DeepCollectionEquality().hash(calendarLatestDay));

  @JsonKey(ignore: true)
  @override
  _$LinkingDailyCalendarStateCopyWith<_LinkingDailyCalendarState>
      get copyWith =>
          __$LinkingDailyCalendarStateCopyWithImpl<_LinkingDailyCalendarState>(
              this, _$identity);
}

abstract class _LinkingDailyCalendarState implements LinkingDailyCalendarState {
  const factory _LinkingDailyCalendarState(
          {required final DateTime selectedDay,
          required final DateTime calendarOldestDay,
          required final DateTime calendarLatestDay}) =
      _$_LinkingDailyCalendarState;

  @override
  DateTime get selectedDay => throw _privateConstructorUsedError;
  @override
  DateTime get calendarOldestDay => throw _privateConstructorUsedError;
  @override
  DateTime get calendarLatestDay => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LinkingDailyCalendarStateCopyWith<_LinkingDailyCalendarState>
      get copyWith => throw _privateConstructorUsedError;
}
