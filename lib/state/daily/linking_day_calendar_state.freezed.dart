// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'linking_day_calendar_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LinkingDayCalendarState {
  DateTime get initialDay => throw _privateConstructorUsedError;
  DateTime get calendarOldestDay => throw _privateConstructorUsedError;
  DateTime get calendarLatestDay => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LinkingDayCalendarStateCopyWith<LinkingDayCalendarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkingDayCalendarStateCopyWith<$Res> {
  factory $LinkingDayCalendarStateCopyWith(LinkingDayCalendarState value,
          $Res Function(LinkingDayCalendarState) then) =
      _$LinkingDayCalendarStateCopyWithImpl<$Res>;
  $Res call(
      {DateTime initialDay,
      DateTime calendarOldestDay,
      DateTime calendarLatestDay});
}

/// @nodoc
class _$LinkingDayCalendarStateCopyWithImpl<$Res>
    implements $LinkingDayCalendarStateCopyWith<$Res> {
  _$LinkingDayCalendarStateCopyWithImpl(this._value, this._then);

  final LinkingDayCalendarState _value;
  // ignore: unused_field
  final $Res Function(LinkingDayCalendarState) _then;

  @override
  $Res call({
    Object? initialDay = freezed,
    Object? calendarOldestDay = freezed,
    Object? calendarLatestDay = freezed,
  }) {
    return _then(_value.copyWith(
      initialDay: initialDay == freezed
          ? _value.initialDay
          : initialDay // ignore: cast_nullable_to_non_nullable
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
abstract class _$LinkingDayCalendarStateCopyWith<$Res>
    implements $LinkingDayCalendarStateCopyWith<$Res> {
  factory _$LinkingDayCalendarStateCopyWith(_LinkingDayCalendarState value,
          $Res Function(_LinkingDayCalendarState) then) =
      __$LinkingDayCalendarStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime initialDay,
      DateTime calendarOldestDay,
      DateTime calendarLatestDay});
}

/// @nodoc
class __$LinkingDayCalendarStateCopyWithImpl<$Res>
    extends _$LinkingDayCalendarStateCopyWithImpl<$Res>
    implements _$LinkingDayCalendarStateCopyWith<$Res> {
  __$LinkingDayCalendarStateCopyWithImpl(_LinkingDayCalendarState _value,
      $Res Function(_LinkingDayCalendarState) _then)
      : super(_value, (v) => _then(v as _LinkingDayCalendarState));

  @override
  _LinkingDayCalendarState get _value =>
      super._value as _LinkingDayCalendarState;

  @override
  $Res call({
    Object? initialDay = freezed,
    Object? calendarOldestDay = freezed,
    Object? calendarLatestDay = freezed,
  }) {
    return _then(_LinkingDayCalendarState(
      initialDay: initialDay == freezed
          ? _value.initialDay
          : initialDay // ignore: cast_nullable_to_non_nullable
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

class _$_LinkingDayCalendarState
    with DiagnosticableTreeMixin
    implements _LinkingDayCalendarState {
  const _$_LinkingDayCalendarState(
      {required this.initialDay,
      required this.calendarOldestDay,
      required this.calendarLatestDay});

  @override
  final DateTime initialDay;
  @override
  final DateTime calendarOldestDay;
  @override
  final DateTime calendarLatestDay;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LinkingDayCalendarState(initialDay: $initialDay, calendarOldestDay: $calendarOldestDay, calendarLatestDay: $calendarLatestDay)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LinkingDayCalendarState'))
      ..add(DiagnosticsProperty('initialDay', initialDay))
      ..add(DiagnosticsProperty('calendarOldestDay', calendarOldestDay))
      ..add(DiagnosticsProperty('calendarLatestDay', calendarLatestDay));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LinkingDayCalendarState &&
            const DeepCollectionEquality()
                .equals(other.initialDay, initialDay) &&
            const DeepCollectionEquality()
                .equals(other.calendarOldestDay, calendarOldestDay) &&
            const DeepCollectionEquality()
                .equals(other.calendarLatestDay, calendarLatestDay));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(initialDay),
      const DeepCollectionEquality().hash(calendarOldestDay),
      const DeepCollectionEquality().hash(calendarLatestDay));

  @JsonKey(ignore: true)
  @override
  _$LinkingDayCalendarStateCopyWith<_LinkingDayCalendarState> get copyWith =>
      __$LinkingDayCalendarStateCopyWithImpl<_LinkingDayCalendarState>(
          this, _$identity);
}

abstract class _LinkingDayCalendarState implements LinkingDayCalendarState {
  const factory _LinkingDayCalendarState(
      {required final DateTime initialDay,
      required final DateTime calendarOldestDay,
      required final DateTime calendarLatestDay}) = _$_LinkingDayCalendarState;

  @override
  DateTime get initialDay => throw _privateConstructorUsedError;
  @override
  DateTime get calendarOldestDay => throw _privateConstructorUsedError;
  @override
  DateTime get calendarLatestDay => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LinkingDayCalendarStateCopyWith<_LinkingDayCalendarState> get copyWith =>
      throw _privateConstructorUsedError;
}
