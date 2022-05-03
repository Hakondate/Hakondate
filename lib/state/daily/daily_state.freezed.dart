// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'daily_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DailyState {
  DateTime get focusedDay => throw _privateConstructorUsedError;
  MenuModel get menu => throw _privateConstructorUsedError;
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
  $Res call({DateTime focusedDay, MenuModel menu, bool isFetching});

  $MenuModelCopyWith<$Res> get menu;
}

/// @nodoc
class _$DailyStateCopyWithImpl<$Res> implements $DailyStateCopyWith<$Res> {
  _$DailyStateCopyWithImpl(this._value, this._then);

  final DailyState _value;
  // ignore: unused_field
  final $Res Function(DailyState) _then;

  @override
  $Res call({
    Object? focusedDay = freezed,
    Object? menu = freezed,
    Object? isFetching = freezed,
  }) {
    return _then(_value.copyWith(
      focusedDay: focusedDay == freezed
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      menu: menu == freezed
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as MenuModel,
      isFetching: isFetching == freezed
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $MenuModelCopyWith<$Res> get menu {
    return $MenuModelCopyWith<$Res>(_value.menu, (value) {
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
  $Res call({DateTime focusedDay, MenuModel menu, bool isFetching});

  @override
  $MenuModelCopyWith<$Res> get menu;
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
    Object? focusedDay = freezed,
    Object? menu = freezed,
    Object? isFetching = freezed,
  }) {
    return _then(_DailyState(
      focusedDay: focusedDay == freezed
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      menu: menu == freezed
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as MenuModel,
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
      {required this.focusedDay,
      this.menu = const MenuModel.noData(),
      this.isFetching = true});

  @override
  final DateTime focusedDay;
  @override
  @JsonKey()
  final MenuModel menu;
  @override
  @JsonKey()
  final bool isFetching;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DailyState(focusedDay: $focusedDay, menu: $menu, isFetching: $isFetching)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DailyState'))
      ..add(DiagnosticsProperty('focusedDay', focusedDay))
      ..add(DiagnosticsProperty('menu', menu))
      ..add(DiagnosticsProperty('isFetching', isFetching));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DailyState &&
            const DeepCollectionEquality()
                .equals(other.focusedDay, focusedDay) &&
            const DeepCollectionEquality().equals(other.menu, menu) &&
            const DeepCollectionEquality()
                .equals(other.isFetching, isFetching));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(focusedDay),
      const DeepCollectionEquality().hash(menu),
      const DeepCollectionEquality().hash(isFetching));

  @JsonKey(ignore: true)
  @override
  _$DailyStateCopyWith<_DailyState> get copyWith =>
      __$DailyStateCopyWithImpl<_DailyState>(this, _$identity);
}

abstract class _DailyState implements DailyState {
  const factory _DailyState(
      {required final DateTime focusedDay,
      final MenuModel menu,
      final bool isFetching}) = _$_DailyState;

  @override
  DateTime get focusedDay => throw _privateConstructorUsedError;
  @override
  MenuModel get menu => throw _privateConstructorUsedError;
  @override
  bool get isFetching => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DailyStateCopyWith<_DailyState> get copyWith =>
      throw _privateConstructorUsedError;
}
