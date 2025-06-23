// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_statics_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppStaticsState implements DiagnosticableTreeMixin {
  int get usageTimeInSec;
  int get openCount;
  DateTime? get lastPopup;
  int? get usageTimeInMinWhenLastPopuped;

  /// Create a copy of AppStaticsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppStaticsStateCopyWith<AppStaticsState> get copyWith =>
      _$AppStaticsStateCopyWithImpl<AppStaticsState>(
          this as AppStaticsState, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'AppStaticsState'))
      ..add(DiagnosticsProperty('usageTimeInSec', usageTimeInSec))
      ..add(DiagnosticsProperty('openCount', openCount))
      ..add(DiagnosticsProperty('lastPopup', lastPopup))
      ..add(DiagnosticsProperty(
          'usageTimeInMinWhenLastPopuped', usageTimeInMinWhenLastPopuped));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppStaticsState &&
            (identical(other.usageTimeInSec, usageTimeInSec) ||
                other.usageTimeInSec == usageTimeInSec) &&
            (identical(other.openCount, openCount) ||
                other.openCount == openCount) &&
            (identical(other.lastPopup, lastPopup) ||
                other.lastPopup == lastPopup) &&
            (identical(other.usageTimeInMinWhenLastPopuped,
                    usageTimeInMinWhenLastPopuped) ||
                other.usageTimeInMinWhenLastPopuped ==
                    usageTimeInMinWhenLastPopuped));
  }

  @override
  int get hashCode => Object.hash(runtimeType, usageTimeInSec, openCount,
      lastPopup, usageTimeInMinWhenLastPopuped);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppStaticsState(usageTimeInSec: $usageTimeInSec, openCount: $openCount, lastPopup: $lastPopup, usageTimeInMinWhenLastPopuped: $usageTimeInMinWhenLastPopuped)';
  }
}

/// @nodoc
abstract mixin class $AppStaticsStateCopyWith<$Res> {
  factory $AppStaticsStateCopyWith(
          AppStaticsState value, $Res Function(AppStaticsState) _then) =
      _$AppStaticsStateCopyWithImpl;
  @useResult
  $Res call(
      {int usageTimeInSec,
      int openCount,
      DateTime? lastPopup,
      int? usageTimeInMinWhenLastPopuped});
}

/// @nodoc
class _$AppStaticsStateCopyWithImpl<$Res>
    implements $AppStaticsStateCopyWith<$Res> {
  _$AppStaticsStateCopyWithImpl(this._self, this._then);

  final AppStaticsState _self;
  final $Res Function(AppStaticsState) _then;

  /// Create a copy of AppStaticsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usageTimeInSec = null,
    Object? openCount = null,
    Object? lastPopup = freezed,
    Object? usageTimeInMinWhenLastPopuped = freezed,
  }) {
    return _then(_self.copyWith(
      usageTimeInSec: null == usageTimeInSec
          ? _self.usageTimeInSec
          : usageTimeInSec // ignore: cast_nullable_to_non_nullable
              as int,
      openCount: null == openCount
          ? _self.openCount
          : openCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastPopup: freezed == lastPopup
          ? _self.lastPopup
          : lastPopup // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      usageTimeInMinWhenLastPopuped: freezed == usageTimeInMinWhenLastPopuped
          ? _self.usageTimeInMinWhenLastPopuped
          : usageTimeInMinWhenLastPopuped // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _AppStaticsState with DiagnosticableTreeMixin implements AppStaticsState {
  const _AppStaticsState(
      {required this.usageTimeInSec,
      required this.openCount,
      this.lastPopup,
      this.usageTimeInMinWhenLastPopuped});

  @override
  final int usageTimeInSec;
  @override
  final int openCount;
  @override
  final DateTime? lastPopup;
  @override
  final int? usageTimeInMinWhenLastPopuped;

  /// Create a copy of AppStaticsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppStaticsStateCopyWith<_AppStaticsState> get copyWith =>
      __$AppStaticsStateCopyWithImpl<_AppStaticsState>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'AppStaticsState'))
      ..add(DiagnosticsProperty('usageTimeInSec', usageTimeInSec))
      ..add(DiagnosticsProperty('openCount', openCount))
      ..add(DiagnosticsProperty('lastPopup', lastPopup))
      ..add(DiagnosticsProperty(
          'usageTimeInMinWhenLastPopuped', usageTimeInMinWhenLastPopuped));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppStaticsState &&
            (identical(other.usageTimeInSec, usageTimeInSec) ||
                other.usageTimeInSec == usageTimeInSec) &&
            (identical(other.openCount, openCount) ||
                other.openCount == openCount) &&
            (identical(other.lastPopup, lastPopup) ||
                other.lastPopup == lastPopup) &&
            (identical(other.usageTimeInMinWhenLastPopuped,
                    usageTimeInMinWhenLastPopuped) ||
                other.usageTimeInMinWhenLastPopuped ==
                    usageTimeInMinWhenLastPopuped));
  }

  @override
  int get hashCode => Object.hash(runtimeType, usageTimeInSec, openCount,
      lastPopup, usageTimeInMinWhenLastPopuped);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppStaticsState(usageTimeInSec: $usageTimeInSec, openCount: $openCount, lastPopup: $lastPopup, usageTimeInMinWhenLastPopuped: $usageTimeInMinWhenLastPopuped)';
  }
}

/// @nodoc
abstract mixin class _$AppStaticsStateCopyWith<$Res>
    implements $AppStaticsStateCopyWith<$Res> {
  factory _$AppStaticsStateCopyWith(
          _AppStaticsState value, $Res Function(_AppStaticsState) _then) =
      __$AppStaticsStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int usageTimeInSec,
      int openCount,
      DateTime? lastPopup,
      int? usageTimeInMinWhenLastPopuped});
}

/// @nodoc
class __$AppStaticsStateCopyWithImpl<$Res>
    implements _$AppStaticsStateCopyWith<$Res> {
  __$AppStaticsStateCopyWithImpl(this._self, this._then);

  final _AppStaticsState _self;
  final $Res Function(_AppStaticsState) _then;

  /// Create a copy of AppStaticsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? usageTimeInSec = null,
    Object? openCount = null,
    Object? lastPopup = freezed,
    Object? usageTimeInMinWhenLastPopuped = freezed,
  }) {
    return _then(_AppStaticsState(
      usageTimeInSec: null == usageTimeInSec
          ? _self.usageTimeInSec
          : usageTimeInSec // ignore: cast_nullable_to_non_nullable
              as int,
      openCount: null == openCount
          ? _self.openCount
          : openCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastPopup: freezed == lastPopup
          ? _self.lastPopup
          : lastPopup // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      usageTimeInMinWhenLastPopuped: freezed == usageTimeInMinWhenLastPopuped
          ? _self.usageTimeInMinWhenLastPopuped
          : usageTimeInMinWhenLastPopuped // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
