// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_navigator_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeNavigatorStateTearOff {
  const _$HomeNavigatorStateTearOff();

  _HomeNavigatorState call(
      {int todayMenuId = -1,
      int selectedMenuId = -1,
      bool isShowMenuList = false,
      int? selectedDishId}) {
    return _HomeNavigatorState(
      todayMenuId: todayMenuId,
      selectedMenuId: selectedMenuId,
      isShowMenuList: isShowMenuList,
      selectedDishId: selectedDishId,
    );
  }
}

/// @nodoc
const $HomeNavigatorState = _$HomeNavigatorStateTearOff();

/// @nodoc
mixin _$HomeNavigatorState {
  int get todayMenuId => throw _privateConstructorUsedError;
  int get selectedMenuId =>
      throw _privateConstructorUsedError; // -1: データなし, 0: 給食が休み
  bool get isShowMenuList => throw _privateConstructorUsedError;
  int? get selectedDishId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeNavigatorStateCopyWith<HomeNavigatorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeNavigatorStateCopyWith<$Res> {
  factory $HomeNavigatorStateCopyWith(
          HomeNavigatorState value, $Res Function(HomeNavigatorState) then) =
      _$HomeNavigatorStateCopyWithImpl<$Res>;
  $Res call(
      {int todayMenuId,
      int selectedMenuId,
      bool isShowMenuList,
      int? selectedDishId});
}

/// @nodoc
class _$HomeNavigatorStateCopyWithImpl<$Res>
    implements $HomeNavigatorStateCopyWith<$Res> {
  _$HomeNavigatorStateCopyWithImpl(this._value, this._then);

  final HomeNavigatorState _value;
  // ignore: unused_field
  final $Res Function(HomeNavigatorState) _then;

  @override
  $Res call({
    Object? todayMenuId = freezed,
    Object? selectedMenuId = freezed,
    Object? isShowMenuList = freezed,
    Object? selectedDishId = freezed,
  }) {
    return _then(_value.copyWith(
      todayMenuId: todayMenuId == freezed
          ? _value.todayMenuId
          : todayMenuId // ignore: cast_nullable_to_non_nullable
              as int,
      selectedMenuId: selectedMenuId == freezed
          ? _value.selectedMenuId
          : selectedMenuId // ignore: cast_nullable_to_non_nullable
              as int,
      isShowMenuList: isShowMenuList == freezed
          ? _value.isShowMenuList
          : isShowMenuList // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedDishId: selectedDishId == freezed
          ? _value.selectedDishId
          : selectedDishId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$HomeNavigatorStateCopyWith<$Res>
    implements $HomeNavigatorStateCopyWith<$Res> {
  factory _$HomeNavigatorStateCopyWith(
          _HomeNavigatorState value, $Res Function(_HomeNavigatorState) then) =
      __$HomeNavigatorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int todayMenuId,
      int selectedMenuId,
      bool isShowMenuList,
      int? selectedDishId});
}

/// @nodoc
class __$HomeNavigatorStateCopyWithImpl<$Res>
    extends _$HomeNavigatorStateCopyWithImpl<$Res>
    implements _$HomeNavigatorStateCopyWith<$Res> {
  __$HomeNavigatorStateCopyWithImpl(
      _HomeNavigatorState _value, $Res Function(_HomeNavigatorState) _then)
      : super(_value, (v) => _then(v as _HomeNavigatorState));

  @override
  _HomeNavigatorState get _value => super._value as _HomeNavigatorState;

  @override
  $Res call({
    Object? todayMenuId = freezed,
    Object? selectedMenuId = freezed,
    Object? isShowMenuList = freezed,
    Object? selectedDishId = freezed,
  }) {
    return _then(_HomeNavigatorState(
      todayMenuId: todayMenuId == freezed
          ? _value.todayMenuId
          : todayMenuId // ignore: cast_nullable_to_non_nullable
              as int,
      selectedMenuId: selectedMenuId == freezed
          ? _value.selectedMenuId
          : selectedMenuId // ignore: cast_nullable_to_non_nullable
              as int,
      isShowMenuList: isShowMenuList == freezed
          ? _value.isShowMenuList
          : isShowMenuList // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedDishId: selectedDishId == freezed
          ? _value.selectedDishId
          : selectedDishId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_HomeNavigatorState
    with DiagnosticableTreeMixin
    implements _HomeNavigatorState {
  const _$_HomeNavigatorState(
      {this.todayMenuId = -1,
      this.selectedMenuId = -1,
      this.isShowMenuList = false,
      this.selectedDishId});

  @JsonKey(defaultValue: -1)
  @override
  final int todayMenuId;
  @JsonKey(defaultValue: -1)
  @override
  final int selectedMenuId;
  @JsonKey(defaultValue: false)
  @override // -1: データなし, 0: 給食が休み
  final bool isShowMenuList;
  @override
  final int? selectedDishId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeNavigatorState(todayMenuId: $todayMenuId, selectedMenuId: $selectedMenuId, isShowMenuList: $isShowMenuList, selectedDishId: $selectedDishId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeNavigatorState'))
      ..add(DiagnosticsProperty('todayMenuId', todayMenuId))
      ..add(DiagnosticsProperty('selectedMenuId', selectedMenuId))
      ..add(DiagnosticsProperty('isShowMenuList', isShowMenuList))
      ..add(DiagnosticsProperty('selectedDishId', selectedDishId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeNavigatorState &&
            (identical(other.todayMenuId, todayMenuId) ||
                const DeepCollectionEquality()
                    .equals(other.todayMenuId, todayMenuId)) &&
            (identical(other.selectedMenuId, selectedMenuId) ||
                const DeepCollectionEquality()
                    .equals(other.selectedMenuId, selectedMenuId)) &&
            (identical(other.isShowMenuList, isShowMenuList) ||
                const DeepCollectionEquality()
                    .equals(other.isShowMenuList, isShowMenuList)) &&
            (identical(other.selectedDishId, selectedDishId) ||
                const DeepCollectionEquality()
                    .equals(other.selectedDishId, selectedDishId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(todayMenuId) ^
      const DeepCollectionEquality().hash(selectedMenuId) ^
      const DeepCollectionEquality().hash(isShowMenuList) ^
      const DeepCollectionEquality().hash(selectedDishId);

  @JsonKey(ignore: true)
  @override
  _$HomeNavigatorStateCopyWith<_HomeNavigatorState> get copyWith =>
      __$HomeNavigatorStateCopyWithImpl<_HomeNavigatorState>(this, _$identity);
}

abstract class _HomeNavigatorState implements HomeNavigatorState {
  const factory _HomeNavigatorState(
      {int todayMenuId,
      int selectedMenuId,
      bool isShowMenuList,
      int? selectedDishId}) = _$_HomeNavigatorState;

  @override
  int get todayMenuId => throw _privateConstructorUsedError;
  @override
  int get selectedMenuId => throw _privateConstructorUsedError;
  @override // -1: データなし, 0: 給食が休み
  bool get isShowMenuList => throw _privateConstructorUsedError;
  @override
  int? get selectedDishId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomeNavigatorStateCopyWith<_HomeNavigatorState> get copyWith =>
      throw _privateConstructorUsedError;
}
