// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'menus_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MenusStateTearOff {
  const _$MenusStateTearOff();

  _MenusState call({List<MenuModel> menus = const <MenuModel>[]}) {
    return _MenusState(
      menus: menus,
    );
  }
}

/// @nodoc
const $MenusState = _$MenusStateTearOff();

/// @nodoc
mixin _$MenusState {
  List<MenuModel> get menus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MenusStateCopyWith<MenusState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenusStateCopyWith<$Res> {
  factory $MenusStateCopyWith(
          MenusState value, $Res Function(MenusState) then) =
      _$MenusStateCopyWithImpl<$Res>;
  $Res call({List<MenuModel> menus});
}

/// @nodoc
class _$MenusStateCopyWithImpl<$Res> implements $MenusStateCopyWith<$Res> {
  _$MenusStateCopyWithImpl(this._value, this._then);

  final MenusState _value;
  // ignore: unused_field
  final $Res Function(MenusState) _then;

  @override
  $Res call({
    Object? menus = freezed,
  }) {
    return _then(_value.copyWith(
      menus: menus == freezed
          ? _value.menus
          : menus // ignore: cast_nullable_to_non_nullable
              as List<MenuModel>,
    ));
  }
}

/// @nodoc
abstract class _$MenusStateCopyWith<$Res> implements $MenusStateCopyWith<$Res> {
  factory _$MenusStateCopyWith(
          _MenusState value, $Res Function(_MenusState) then) =
      __$MenusStateCopyWithImpl<$Res>;
  @override
  $Res call({List<MenuModel> menus});
}

/// @nodoc
class __$MenusStateCopyWithImpl<$Res> extends _$MenusStateCopyWithImpl<$Res>
    implements _$MenusStateCopyWith<$Res> {
  __$MenusStateCopyWithImpl(
      _MenusState _value, $Res Function(_MenusState) _then)
      : super(_value, (v) => _then(v as _MenusState));

  @override
  _MenusState get _value => super._value as _MenusState;

  @override
  $Res call({
    Object? menus = freezed,
  }) {
    return _then(_MenusState(
      menus: menus == freezed
          ? _value.menus
          : menus // ignore: cast_nullable_to_non_nullable
              as List<MenuModel>,
    ));
  }
}

/// @nodoc

class _$_MenusState with DiagnosticableTreeMixin implements _MenusState {
  const _$_MenusState({this.menus = const <MenuModel>[]});

  @JsonKey()
  @override
  final List<MenuModel> menus;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MenusState(menus: $menus)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MenusState'))
      ..add(DiagnosticsProperty('menus', menus));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MenusState &&
            const DeepCollectionEquality().equals(other.menus, menus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(menus));

  @JsonKey(ignore: true)
  @override
  _$MenusStateCopyWith<_MenusState> get copyWith =>
      __$MenusStateCopyWithImpl<_MenusState>(this, _$identity);
}

abstract class _MenusState implements MenusState {
  const factory _MenusState({List<MenuModel> menus}) = _$_MenusState;

  @override
  List<MenuModel> get menus;
  @override
  @JsonKey(ignore: true)
  _$MenusStateCopyWith<_MenusState> get copyWith =>
      throw _privateConstructorUsedError;
}
