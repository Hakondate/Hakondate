// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_statistics_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppStatisticsState implements DiagnosticableTreeMixin {
  int get usageTimeInSec;
  int get openCount;
  DateTime? get lastPopUp;
  int? get usageTimeInMinWhenLastPopUp;

  /// Create a copy of AppStatisticsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppStatisticsStateCopyWith<AppStatisticsState> get copyWith =>
      _$AppStatisticsStateCopyWithImpl<AppStatisticsState>(
          this as AppStatisticsState, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'AppStatisticsState'))
      ..add(DiagnosticsProperty('usageTimeInSec', usageTimeInSec))
      ..add(DiagnosticsProperty('openCount', openCount))
      ..add(DiagnosticsProperty('lastPopUp', lastPopUp))
      ..add(DiagnosticsProperty(
          'usageTimeInMinWhenLastPopUp', usageTimeInMinWhenLastPopUp));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppStatisticsState &&
            (identical(other.usageTimeInSec, usageTimeInSec) ||
                other.usageTimeInSec == usageTimeInSec) &&
            (identical(other.openCount, openCount) ||
                other.openCount == openCount) &&
            (identical(other.lastPopUp, lastPopUp) ||
                other.lastPopUp == lastPopUp) &&
            (identical(other.usageTimeInMinWhenLastPopUp,
                    usageTimeInMinWhenLastPopUp) ||
                other.usageTimeInMinWhenLastPopUp ==
                    usageTimeInMinWhenLastPopUp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, usageTimeInSec, openCount,
      lastPopUp, usageTimeInMinWhenLastPopUp);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppStatisticsState(usageTimeInSec: $usageTimeInSec, openCount: $openCount, lastPopUp: $lastPopUp, usageTimeInMinWhenLastPopUp: $usageTimeInMinWhenLastPopUp)';
  }
}

/// @nodoc
abstract mixin class $AppStatisticsStateCopyWith<$Res> {
  factory $AppStatisticsStateCopyWith(
          AppStatisticsState value, $Res Function(AppStatisticsState) _then) =
      _$AppStatisticsStateCopyWithImpl;
  @useResult
  $Res call(
      {int usageTimeInSec,
      int openCount,
      DateTime? lastPopUp,
      int? usageTimeInMinWhenLastPopUp});
}

/// @nodoc
class _$AppStatisticsStateCopyWithImpl<$Res>
    implements $AppStatisticsStateCopyWith<$Res> {
  _$AppStatisticsStateCopyWithImpl(this._self, this._then);

  final AppStatisticsState _self;
  final $Res Function(AppStatisticsState) _then;

  /// Create a copy of AppStatisticsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usageTimeInSec = null,
    Object? openCount = null,
    Object? lastPopUp = freezed,
    Object? usageTimeInMinWhenLastPopUp = freezed,
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
      lastPopUp: freezed == lastPopUp
          ? _self.lastPopUp
          : lastPopUp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      usageTimeInMinWhenLastPopUp: freezed == usageTimeInMinWhenLastPopUp
          ? _self.usageTimeInMinWhenLastPopUp
          : usageTimeInMinWhenLastPopUp // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _AppStatisticsState extends AppStatisticsState
    with DiagnosticableTreeMixin {
  const _AppStatisticsState(
      {required this.usageTimeInSec,
      required this.openCount,
      this.lastPopUp,
      this.usageTimeInMinWhenLastPopUp})
      : super._();

  @override
  final int usageTimeInSec;
  @override
  final int openCount;
  @override
  final DateTime? lastPopUp;
  @override
  final int? usageTimeInMinWhenLastPopUp;

  /// Create a copy of AppStatisticsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppStatisticsStateCopyWith<_AppStatisticsState> get copyWith =>
      __$AppStatisticsStateCopyWithImpl<_AppStatisticsState>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'AppStatisticsState'))
      ..add(DiagnosticsProperty('usageTimeInSec', usageTimeInSec))
      ..add(DiagnosticsProperty('openCount', openCount))
      ..add(DiagnosticsProperty('lastPopUp', lastPopUp))
      ..add(DiagnosticsProperty(
          'usageTimeInMinWhenLastPopUp', usageTimeInMinWhenLastPopUp));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppStatisticsState &&
            (identical(other.usageTimeInSec, usageTimeInSec) ||
                other.usageTimeInSec == usageTimeInSec) &&
            (identical(other.openCount, openCount) ||
                other.openCount == openCount) &&
            (identical(other.lastPopUp, lastPopUp) ||
                other.lastPopUp == lastPopUp) &&
            (identical(other.usageTimeInMinWhenLastPopUp,
                    usageTimeInMinWhenLastPopUp) ||
                other.usageTimeInMinWhenLastPopUp ==
                    usageTimeInMinWhenLastPopUp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, usageTimeInSec, openCount,
      lastPopUp, usageTimeInMinWhenLastPopUp);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppStatisticsState(usageTimeInSec: $usageTimeInSec, openCount: $openCount, lastPopUp: $lastPopUp, usageTimeInMinWhenLastPopUp: $usageTimeInMinWhenLastPopUp)';
  }
}

/// @nodoc
abstract mixin class _$AppStatisticsStateCopyWith<$Res>
    implements $AppStatisticsStateCopyWith<$Res> {
  factory _$AppStatisticsStateCopyWith(
          _AppStatisticsState value, $Res Function(_AppStatisticsState) _then) =
      __$AppStatisticsStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int usageTimeInSec,
      int openCount,
      DateTime? lastPopUp,
      int? usageTimeInMinWhenLastPopUp});
}

/// @nodoc
class __$AppStatisticsStateCopyWithImpl<$Res>
    implements _$AppStatisticsStateCopyWith<$Res> {
  __$AppStatisticsStateCopyWithImpl(this._self, this._then);

  final _AppStatisticsState _self;
  final $Res Function(_AppStatisticsState) _then;

  /// Create a copy of AppStatisticsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? usageTimeInSec = null,
    Object? openCount = null,
    Object? lastPopUp = freezed,
    Object? usageTimeInMinWhenLastPopUp = freezed,
  }) {
    return _then(_AppStatisticsState(
      usageTimeInSec: null == usageTimeInSec
          ? _self.usageTimeInSec
          : usageTimeInSec // ignore: cast_nullable_to_non_nullable
              as int,
      openCount: null == openCount
          ? _self.openCount
          : openCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastPopUp: freezed == lastPopUp
          ? _self.lastPopUp
          : lastPopUp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      usageTimeInMinWhenLastPopUp: freezed == usageTimeInMinWhenLastPopUp
          ? _self.usageTimeInMinWhenLastPopUp
          : usageTimeInMinWhenLastPopUp // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
