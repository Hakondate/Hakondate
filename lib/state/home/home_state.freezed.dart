// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeState call(
      {DateTime? selectedDay,
      MenuModel? menu,
      int status = -1,
      bool isFetching = true}) {
    return _HomeState(
      selectedDay: selectedDay,
      menu: menu,
      status: status,
      isFetching: isFetching,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  DateTime? get selectedDay => throw _privateConstructorUsedError;
  MenuModel? get menu => throw _privateConstructorUsedError;
  int get status =>
      throw _privateConstructorUsedError; // -1:データ無し, 0:休み, 1:給食あり
  bool get isFetching => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {DateTime? selectedDay, MenuModel? menu, int status, bool isFetching});

  $MenuModelCopyWith<$Res>? get menu;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? selectedDay = freezed,
    Object? menu = freezed,
    Object? status = freezed,
    Object? isFetching = freezed,
  }) {
    return _then(_value.copyWith(
      selectedDay: selectedDay == freezed
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime? selectedDay, MenuModel? menu, int status, bool isFetching});

  @override
  $MenuModelCopyWith<$Res>? get menu;
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(_HomeState _value, $Res Function(_HomeState) _then)
      : super(_value, (v) => _then(v as _HomeState));

  @override
  _HomeState get _value => super._value as _HomeState;

  @override
  $Res call({
    Object? selectedDay = freezed,
    Object? menu = freezed,
    Object? status = freezed,
    Object? isFetching = freezed,
  }) {
    return _then(_HomeState(
      selectedDay: selectedDay == freezed
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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

class _$_HomeState with DiagnosticableTreeMixin implements _HomeState {
  const _$_HomeState(
      {this.selectedDay, this.menu, this.status = -1, this.isFetching = true});

  @override
  final DateTime? selectedDay;
  @override
  final MenuModel? menu;
  @JsonKey(defaultValue: -1)
  @override
  final int status;
  @JsonKey(defaultValue: true)
  @override // -1:データ無し, 0:休み, 1:給食あり
  final bool isFetching;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(selectedDay: $selectedDay, menu: $menu, status: $status, isFetching: $isFetching)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState'))
      ..add(DiagnosticsProperty('selectedDay', selectedDay))
      ..add(DiagnosticsProperty('menu', menu))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('isFetching', isFetching));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeState &&
            (identical(other.selectedDay, selectedDay) ||
                const DeepCollectionEquality()
                    .equals(other.selectedDay, selectedDay)) &&
            (identical(other.menu, menu) ||
                const DeepCollectionEquality().equals(other.menu, menu)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.isFetching, isFetching) ||
                const DeepCollectionEquality()
                    .equals(other.isFetching, isFetching)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedDay) ^
      const DeepCollectionEquality().hash(menu) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(isFetching);

  @JsonKey(ignore: true)
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {DateTime? selectedDay,
      MenuModel? menu,
      int status,
      bool isFetching}) = _$_HomeState;

  @override
  DateTime? get selectedDay => throw _privateConstructorUsedError;
  @override
  MenuModel? get menu => throw _privateConstructorUsedError;
  @override
  int get status => throw _privateConstructorUsedError;
  @override // -1:データ無し, 0:休み, 1:給食あり
  bool get isFetching => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
