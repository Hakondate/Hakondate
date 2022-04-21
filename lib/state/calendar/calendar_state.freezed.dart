// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'calendar_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CalendarState {
  DateTime get oldestDay => throw _privateConstructorUsedError;
  DateTime get latestDay => throw _privateConstructorUsedError;
  ScrollController get scrollController => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalendarStateCopyWith<CalendarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarStateCopyWith<$Res> {
  factory $CalendarStateCopyWith(
          CalendarState value, $Res Function(CalendarState) then) =
      _$CalendarStateCopyWithImpl<$Res>;
  $Res call(
      {DateTime oldestDay,
      DateTime latestDay,
      ScrollController scrollController});
}

/// @nodoc
class _$CalendarStateCopyWithImpl<$Res>
    implements $CalendarStateCopyWith<$Res> {
  _$CalendarStateCopyWithImpl(this._value, this._then);

  final CalendarState _value;
  // ignore: unused_field
  final $Res Function(CalendarState) _then;

  @override
  $Res call({
    Object? oldestDay = freezed,
    Object? latestDay = freezed,
    Object? scrollController = freezed,
  }) {
    return _then(_value.copyWith(
      oldestDay: oldestDay == freezed
          ? _value.oldestDay
          : oldestDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      latestDay: latestDay == freezed
          ? _value.latestDay
          : latestDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scrollController: scrollController == freezed
          ? _value.scrollController
          : scrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
    ));
  }
}

/// @nodoc
abstract class _$CalendarStateCopyWith<$Res>
    implements $CalendarStateCopyWith<$Res> {
  factory _$CalendarStateCopyWith(
          _CalendarState value, $Res Function(_CalendarState) then) =
      __$CalendarStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime oldestDay,
      DateTime latestDay,
      ScrollController scrollController});
}

/// @nodoc
class __$CalendarStateCopyWithImpl<$Res>
    extends _$CalendarStateCopyWithImpl<$Res>
    implements _$CalendarStateCopyWith<$Res> {
  __$CalendarStateCopyWithImpl(
      _CalendarState _value, $Res Function(_CalendarState) _then)
      : super(_value, (v) => _then(v as _CalendarState));

  @override
  _CalendarState get _value => super._value as _CalendarState;

  @override
  $Res call({
    Object? oldestDay = freezed,
    Object? latestDay = freezed,
    Object? scrollController = freezed,
  }) {
    return _then(_CalendarState(
      oldestDay: oldestDay == freezed
          ? _value.oldestDay
          : oldestDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      latestDay: latestDay == freezed
          ? _value.latestDay
          : latestDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scrollController: scrollController == freezed
          ? _value.scrollController
          : scrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
    ));
  }
}

/// @nodoc

class _$_CalendarState with DiagnosticableTreeMixin implements _CalendarState {
  const _$_CalendarState(
      {required this.oldestDay,
      required this.latestDay,
      required this.scrollController});

  @override
  final DateTime oldestDay;
  @override
  final DateTime latestDay;
  @override
  final ScrollController scrollController;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CalendarState(oldestDay: $oldestDay, latestDay: $latestDay, scrollController: $scrollController)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CalendarState'))
      ..add(DiagnosticsProperty('oldestDay', oldestDay))
      ..add(DiagnosticsProperty('latestDay', latestDay))
      ..add(DiagnosticsProperty('scrollController', scrollController));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CalendarState &&
            const DeepCollectionEquality().equals(other.oldestDay, oldestDay) &&
            const DeepCollectionEquality().equals(other.latestDay, latestDay) &&
            const DeepCollectionEquality()
                .equals(other.scrollController, scrollController));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(oldestDay),
      const DeepCollectionEquality().hash(latestDay),
      const DeepCollectionEquality().hash(scrollController));

  @JsonKey(ignore: true)
  @override
  _$CalendarStateCopyWith<_CalendarState> get copyWith =>
      __$CalendarStateCopyWithImpl<_CalendarState>(this, _$identity);
}

abstract class _CalendarState implements CalendarState {
  const factory _CalendarState(
      {required final DateTime oldestDay,
      required final DateTime latestDay,
      required final ScrollController scrollController}) = _$_CalendarState;

  @override
  DateTime get oldestDay => throw _privateConstructorUsedError;
  @override
  DateTime get latestDay => throw _privateConstructorUsedError;
  @override
  ScrollController get scrollController => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CalendarStateCopyWith<_CalendarState> get copyWith =>
      throw _privateConstructorUsedError;
}
