// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'calendar_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CalendarStateTearOff {
  const _$CalendarStateTearOff();

  _CalendarState call(
      {List<MenuModel> menus = const [],
      DateTime? oldestDay,
      DateTime? latestDay}) {
    return _CalendarState(
      menus: menus,
      oldestDay: oldestDay,
      latestDay: latestDay,
    );
  }
}

/// @nodoc
const $CalendarState = _$CalendarStateTearOff();

/// @nodoc
mixin _$CalendarState {
  List<MenuModel> get menus => throw _privateConstructorUsedError;
  DateTime? get oldestDay => throw _privateConstructorUsedError;
  DateTime? get latestDay => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalendarStateCopyWith<CalendarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarStateCopyWith<$Res> {
  factory $CalendarStateCopyWith(
          CalendarState value, $Res Function(CalendarState) then) =
      _$CalendarStateCopyWithImpl<$Res>;
  $Res call({List<MenuModel> menus, DateTime? oldestDay, DateTime? latestDay});
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
    Object? menus = freezed,
    Object? oldestDay = freezed,
    Object? latestDay = freezed,
  }) {
    return _then(_value.copyWith(
      menus: menus == freezed
          ? _value.menus
          : menus // ignore: cast_nullable_to_non_nullable
              as List<MenuModel>,
      oldestDay: oldestDay == freezed
          ? _value.oldestDay
          : oldestDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      latestDay: latestDay == freezed
          ? _value.latestDay
          : latestDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
  $Res call({List<MenuModel> menus, DateTime? oldestDay, DateTime? latestDay});
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
    Object? menus = freezed,
    Object? oldestDay = freezed,
    Object? latestDay = freezed,
  }) {
    return _then(_CalendarState(
      menus: menus == freezed
          ? _value.menus
          : menus // ignore: cast_nullable_to_non_nullable
              as List<MenuModel>,
      oldestDay: oldestDay == freezed
          ? _value.oldestDay
          : oldestDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      latestDay: latestDay == freezed
          ? _value.latestDay
          : latestDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_CalendarState with DiagnosticableTreeMixin implements _CalendarState {
  const _$_CalendarState(
      {this.menus = const [], this.oldestDay, this.latestDay});

  @JsonKey()
  @override
  final List<MenuModel> menus;
  @override
  final DateTime? oldestDay;
  @override
  final DateTime? latestDay;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CalendarState(menus: $menus, oldestDay: $oldestDay, latestDay: $latestDay)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CalendarState'))
      ..add(DiagnosticsProperty('menus', menus))
      ..add(DiagnosticsProperty('oldestDay', oldestDay))
      ..add(DiagnosticsProperty('latestDay', latestDay));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CalendarState &&
            const DeepCollectionEquality().equals(other.menus, menus) &&
            const DeepCollectionEquality().equals(other.oldestDay, oldestDay) &&
            const DeepCollectionEquality().equals(other.latestDay, latestDay));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(menus),
      const DeepCollectionEquality().hash(oldestDay),
      const DeepCollectionEquality().hash(latestDay));

  @JsonKey(ignore: true)
  @override
  _$CalendarStateCopyWith<_CalendarState> get copyWith =>
      __$CalendarStateCopyWithImpl<_CalendarState>(this, _$identity);
}

abstract class _CalendarState implements CalendarState {
  const factory _CalendarState(
      {List<MenuModel> menus,
      DateTime? oldestDay,
      DateTime? latestDay}) = _$_CalendarState;

  @override
  List<MenuModel> get menus;
  @override
  DateTime? get oldestDay;
  @override
  DateTime? get latestDay;
  @override
  @JsonKey(ignore: true)
  _$CalendarStateCopyWith<_CalendarState> get copyWith =>
      throw _privateConstructorUsedError;
}
