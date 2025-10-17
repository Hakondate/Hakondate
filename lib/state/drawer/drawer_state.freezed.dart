// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drawer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DrawerState implements DiagnosticableTreeMixin {

 GlobalKey<ScaffoldState> get scaffoldKey;
/// Create a copy of DrawerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DrawerStateCopyWith<DrawerState> get copyWith => _$DrawerStateCopyWithImpl<DrawerState>(this as DrawerState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DrawerState'))
    ..add(DiagnosticsProperty('scaffoldKey', scaffoldKey));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DrawerState&&(identical(other.scaffoldKey, scaffoldKey) || other.scaffoldKey == scaffoldKey));
}


@override
int get hashCode => Object.hash(runtimeType,scaffoldKey);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DrawerState(scaffoldKey: $scaffoldKey)';
}


}

/// @nodoc
abstract mixin class $DrawerStateCopyWith<$Res>  {
  factory $DrawerStateCopyWith(DrawerState value, $Res Function(DrawerState) _then) = _$DrawerStateCopyWithImpl;
@useResult
$Res call({
 GlobalKey<ScaffoldState> scaffoldKey
});




}
/// @nodoc
class _$DrawerStateCopyWithImpl<$Res>
    implements $DrawerStateCopyWith<$Res> {
  _$DrawerStateCopyWithImpl(this._self, this._then);

  final DrawerState _self;
  final $Res Function(DrawerState) _then;

/// Create a copy of DrawerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? scaffoldKey = null,}) {
  return _then(_self.copyWith(
scaffoldKey: null == scaffoldKey ? _self.scaffoldKey : scaffoldKey // ignore: cast_nullable_to_non_nullable
as GlobalKey<ScaffoldState>,
  ));
}

}


/// @nodoc


class _DrawerState with DiagnosticableTreeMixin implements DrawerState {
  const _DrawerState({required this.scaffoldKey});
  

@override final  GlobalKey<ScaffoldState> scaffoldKey;

/// Create a copy of DrawerState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DrawerStateCopyWith<_DrawerState> get copyWith => __$DrawerStateCopyWithImpl<_DrawerState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DrawerState'))
    ..add(DiagnosticsProperty('scaffoldKey', scaffoldKey));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DrawerState&&(identical(other.scaffoldKey, scaffoldKey) || other.scaffoldKey == scaffoldKey));
}


@override
int get hashCode => Object.hash(runtimeType,scaffoldKey);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DrawerState(scaffoldKey: $scaffoldKey)';
}


}

/// @nodoc
abstract mixin class _$DrawerStateCopyWith<$Res> implements $DrawerStateCopyWith<$Res> {
  factory _$DrawerStateCopyWith(_DrawerState value, $Res Function(_DrawerState) _then) = __$DrawerStateCopyWithImpl;
@override @useResult
$Res call({
 GlobalKey<ScaffoldState> scaffoldKey
});




}
/// @nodoc
class __$DrawerStateCopyWithImpl<$Res>
    implements _$DrawerStateCopyWith<$Res> {
  __$DrawerStateCopyWithImpl(this._self, this._then);

  final _DrawerState _self;
  final $Res Function(_DrawerState) _then;

/// Create a copy of DrawerState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? scaffoldKey = null,}) {
  return _then(_DrawerState(
scaffoldKey: null == scaffoldKey ? _self.scaffoldKey : scaffoldKey // ignore: cast_nullable_to_non_nullable
as GlobalKey<ScaffoldState>,
  ));
}


}

// dart format on
