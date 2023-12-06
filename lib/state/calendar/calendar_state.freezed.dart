// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$CalendarStateCopyWithImpl<$Res, CalendarState>;
  @useResult
  $Res call(
      {DateTime oldestDay,
      DateTime latestDay,
      ScrollController scrollController});
}

/// @nodoc
class _$CalendarStateCopyWithImpl<$Res, $Val extends CalendarState>
    implements $CalendarStateCopyWith<$Res> {
  _$CalendarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldestDay = null,
    Object? latestDay = null,
    Object? scrollController = null,
  }) {
    return _then(_value.copyWith(
      oldestDay: null == oldestDay
          ? _value.oldestDay
          : oldestDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      latestDay: null == latestDay
          ? _value.latestDay
          : latestDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scrollController: null == scrollController
          ? _value.scrollController
          : scrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalendarStateImplCopyWith<$Res>
    implements $CalendarStateCopyWith<$Res> {
  factory _$$CalendarStateImplCopyWith(
          _$CalendarStateImpl value, $Res Function(_$CalendarStateImpl) then) =
      __$$CalendarStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime oldestDay,
      DateTime latestDay,
      ScrollController scrollController});
}

/// @nodoc
class __$$CalendarStateImplCopyWithImpl<$Res>
    extends _$CalendarStateCopyWithImpl<$Res, _$CalendarStateImpl>
    implements _$$CalendarStateImplCopyWith<$Res> {
  __$$CalendarStateImplCopyWithImpl(
      _$CalendarStateImpl _value, $Res Function(_$CalendarStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldestDay = null,
    Object? latestDay = null,
    Object? scrollController = null,
  }) {
    return _then(_$CalendarStateImpl(
      oldestDay: null == oldestDay
          ? _value.oldestDay
          : oldestDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      latestDay: null == latestDay
          ? _value.latestDay
          : latestDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scrollController: null == scrollController
          ? _value.scrollController
          : scrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
    ));
  }
}

/// @nodoc

class _$CalendarStateImpl
    with DiagnosticableTreeMixin
    implements _CalendarState {
  const _$CalendarStateImpl(
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
            other is _$CalendarStateImpl &&
            (identical(other.oldestDay, oldestDay) ||
                other.oldestDay == oldestDay) &&
            (identical(other.latestDay, latestDay) ||
                other.latestDay == latestDay) &&
            (identical(other.scrollController, scrollController) ||
                other.scrollController == scrollController));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, oldestDay, latestDay, scrollController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarStateImplCopyWith<_$CalendarStateImpl> get copyWith =>
      __$$CalendarStateImplCopyWithImpl<_$CalendarStateImpl>(this, _$identity);
}

abstract class _CalendarState implements CalendarState {
  const factory _CalendarState(
      {required final DateTime oldestDay,
      required final DateTime latestDay,
      required final ScrollController scrollController}) = _$CalendarStateImpl;

  @override
  DateTime get oldestDay;
  @override
  DateTime get latestDay;
  @override
  ScrollController get scrollController;
  @override
  @JsonKey(ignore: true)
  _$$CalendarStateImplCopyWith<_$CalendarStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
