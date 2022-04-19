// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'daily_menu_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DailyMenuModelTearOff {
  const _$DailyMenuModelTearOff();

  _DailyMenuModel call(
      {DailyStatus status = DailyStatus.noData, MenuModel? menu}) {
    return _DailyMenuModel(
      status: status,
      menu: menu,
    );
  }
}

/// @nodoc
const $DailyMenuModel = _$DailyMenuModelTearOff();

/// @nodoc
mixin _$DailyMenuModel {
  DailyStatus get status => throw _privateConstructorUsedError;
  MenuModel? get menu => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DailyMenuModelCopyWith<DailyMenuModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyMenuModelCopyWith<$Res> {
  factory $DailyMenuModelCopyWith(
          DailyMenuModel value, $Res Function(DailyMenuModel) then) =
      _$DailyMenuModelCopyWithImpl<$Res>;
  $Res call({DailyStatus status, MenuModel? menu});

  $MenuModelCopyWith<$Res>? get menu;
}

/// @nodoc
class _$DailyMenuModelCopyWithImpl<$Res>
    implements $DailyMenuModelCopyWith<$Res> {
  _$DailyMenuModelCopyWithImpl(this._value, this._then);

  final DailyMenuModel _value;
  // ignore: unused_field
  final $Res Function(DailyMenuModel) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? menu = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DailyStatus,
      menu: menu == freezed
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as MenuModel?,
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
abstract class _$DailyMenuModelCopyWith<$Res>
    implements $DailyMenuModelCopyWith<$Res> {
  factory _$DailyMenuModelCopyWith(
          _DailyMenuModel value, $Res Function(_DailyMenuModel) then) =
      __$DailyMenuModelCopyWithImpl<$Res>;
  @override
  $Res call({DailyStatus status, MenuModel? menu});

  @override
  $MenuModelCopyWith<$Res>? get menu;
}

/// @nodoc
class __$DailyMenuModelCopyWithImpl<$Res>
    extends _$DailyMenuModelCopyWithImpl<$Res>
    implements _$DailyMenuModelCopyWith<$Res> {
  __$DailyMenuModelCopyWithImpl(
      _DailyMenuModel _value, $Res Function(_DailyMenuModel) _then)
      : super(_value, (v) => _then(v as _DailyMenuModel));

  @override
  _DailyMenuModel get _value => super._value as _DailyMenuModel;

  @override
  $Res call({
    Object? status = freezed,
    Object? menu = freezed,
  }) {
    return _then(_DailyMenuModel(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DailyStatus,
      menu: menu == freezed
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as MenuModel?,
    ));
  }
}

/// @nodoc

class _$_DailyMenuModel
    with DiagnosticableTreeMixin
    implements _DailyMenuModel {
  const _$_DailyMenuModel({this.status = DailyStatus.noData, this.menu});

  @JsonKey()
  @override
  final DailyStatus status;
  @override
  final MenuModel? menu;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DailyMenuModel(status: $status, menu: $menu)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DailyMenuModel'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('menu', menu));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DailyMenuModel &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.menu, menu));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(menu));

  @JsonKey(ignore: true)
  @override
  _$DailyMenuModelCopyWith<_DailyMenuModel> get copyWith =>
      __$DailyMenuModelCopyWithImpl<_DailyMenuModel>(this, _$identity);
}

abstract class _DailyMenuModel implements DailyMenuModel {
  const factory _DailyMenuModel({DailyStatus status, MenuModel? menu}) =
      _$_DailyMenuModel;

  @override
  DailyStatus get status;
  @override
  MenuModel? get menu;
  @override
  @JsonKey(ignore: true)
  _$DailyMenuModelCopyWith<_DailyMenuModel> get copyWith =>
      throw _privateConstructorUsedError;
}
