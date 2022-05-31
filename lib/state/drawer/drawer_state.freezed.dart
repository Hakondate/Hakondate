// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'drawer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DrawerState {
  GlobalKey<ScaffoldState> get scaffoldKey =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DrawerStateCopyWith<DrawerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawerStateCopyWith<$Res> {
  factory $DrawerStateCopyWith(
          DrawerState value, $Res Function(DrawerState) then) =
      _$DrawerStateCopyWithImpl<$Res>;
  $Res call({GlobalKey<ScaffoldState> scaffoldKey});
}

/// @nodoc
class _$DrawerStateCopyWithImpl<$Res> implements $DrawerStateCopyWith<$Res> {
  _$DrawerStateCopyWithImpl(this._value, this._then);

  final DrawerState _value;
  // ignore: unused_field
  final $Res Function(DrawerState) _then;

  @override
  $Res call({
    Object? scaffoldKey = freezed,
  }) {
    return _then(_value.copyWith(
      scaffoldKey: scaffoldKey == freezed
          ? _value.scaffoldKey
          : scaffoldKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<ScaffoldState>,
    ));
  }
}

/// @nodoc
abstract class _$DrawerStateCopyWith<$Res>
    implements $DrawerStateCopyWith<$Res> {
  factory _$DrawerStateCopyWith(
          _DrawerState value, $Res Function(_DrawerState) then) =
      __$DrawerStateCopyWithImpl<$Res>;
  @override
  $Res call({GlobalKey<ScaffoldState> scaffoldKey});
}

/// @nodoc
class __$DrawerStateCopyWithImpl<$Res> extends _$DrawerStateCopyWithImpl<$Res>
    implements _$DrawerStateCopyWith<$Res> {
  __$DrawerStateCopyWithImpl(
      _DrawerState _value, $Res Function(_DrawerState) _then)
      : super(_value, (v) => _then(v as _DrawerState));

  @override
  _DrawerState get _value => super._value as _DrawerState;

  @override
  $Res call({
    Object? scaffoldKey = freezed,
  }) {
    return _then(_DrawerState(
      scaffoldKey: scaffoldKey == freezed
          ? _value.scaffoldKey
          : scaffoldKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<ScaffoldState>,
    ));
  }
}

/// @nodoc

class _$_DrawerState with DiagnosticableTreeMixin implements _DrawerState {
  const _$_DrawerState({required this.scaffoldKey});

  @override
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DrawerState(scaffoldKey: $scaffoldKey)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DrawerState'))
      ..add(DiagnosticsProperty('scaffoldKey', scaffoldKey));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DrawerState &&
            const DeepCollectionEquality()
                .equals(other.scaffoldKey, scaffoldKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(scaffoldKey));

  @JsonKey(ignore: true)
  @override
  _$DrawerStateCopyWith<_DrawerState> get copyWith =>
      __$DrawerStateCopyWithImpl<_DrawerState>(this, _$identity);
}

abstract class _DrawerState implements DrawerState {
  const factory _DrawerState(
      {required final GlobalKey<ScaffoldState> scaffoldKey}) = _$_DrawerState;

  @override
  GlobalKey<ScaffoldState> get scaffoldKey =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DrawerStateCopyWith<_DrawerState> get copyWith =>
      throw _privateConstructorUsedError;
}
