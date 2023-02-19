// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$DrawerStateCopyWithImpl<$Res, DrawerState>;
  @useResult
  $Res call({GlobalKey<ScaffoldState> scaffoldKey});
}

/// @nodoc
class _$DrawerStateCopyWithImpl<$Res, $Val extends DrawerState>
    implements $DrawerStateCopyWith<$Res> {
  _$DrawerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scaffoldKey = null,
  }) {
    return _then(_value.copyWith(
      scaffoldKey: null == scaffoldKey
          ? _value.scaffoldKey
          : scaffoldKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<ScaffoldState>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DrawerStateCopyWith<$Res>
    implements $DrawerStateCopyWith<$Res> {
  factory _$$_DrawerStateCopyWith(
          _$_DrawerState value, $Res Function(_$_DrawerState) then) =
      __$$_DrawerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GlobalKey<ScaffoldState> scaffoldKey});
}

/// @nodoc
class __$$_DrawerStateCopyWithImpl<$Res>
    extends _$DrawerStateCopyWithImpl<$Res, _$_DrawerState>
    implements _$$_DrawerStateCopyWith<$Res> {
  __$$_DrawerStateCopyWithImpl(
      _$_DrawerState _value, $Res Function(_$_DrawerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scaffoldKey = null,
  }) {
    return _then(_$_DrawerState(
      scaffoldKey: null == scaffoldKey
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
            other is _$_DrawerState &&
            (identical(other.scaffoldKey, scaffoldKey) ||
                other.scaffoldKey == scaffoldKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, scaffoldKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DrawerStateCopyWith<_$_DrawerState> get copyWith =>
      __$$_DrawerStateCopyWithImpl<_$_DrawerState>(this, _$identity);
}

abstract class _DrawerState implements DrawerState {
  const factory _DrawerState(
      {required final GlobalKey<ScaffoldState> scaffoldKey}) = _$_DrawerState;

  @override
  GlobalKey<ScaffoldState> get scaffoldKey;
  @override
  @JsonKey(ignore: true)
  _$$_DrawerStateCopyWith<_$_DrawerState> get copyWith =>
      throw _privateConstructorUsedError;
}
