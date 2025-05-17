// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_statics_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppStaticsState {
  int? get usageTimeInMin => throw _privateConstructorUsedError;
  int? get openCount => throw _privateConstructorUsedError;

  /// Create a copy of AppStaticsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppStaticsStateCopyWith<AppStaticsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStaticsStateCopyWith<$Res> {
  factory $AppStaticsStateCopyWith(
          AppStaticsState value, $Res Function(AppStaticsState) then) =
      _$AppStaticsStateCopyWithImpl<$Res, AppStaticsState>;
  @useResult
  $Res call({int? usageTimeInMin, int? openCount});
}

/// @nodoc
class _$AppStaticsStateCopyWithImpl<$Res, $Val extends AppStaticsState>
    implements $AppStaticsStateCopyWith<$Res> {
  _$AppStaticsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppStaticsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usageTimeInMin = freezed,
    Object? openCount = freezed,
  }) {
    return _then(_value.copyWith(
      usageTimeInMin: freezed == usageTimeInMin
          ? _value.usageTimeInMin
          : usageTimeInMin // ignore: cast_nullable_to_non_nullable
              as int?,
      openCount: freezed == openCount
          ? _value.openCount
          : openCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppStaticsStateImplCopyWith<$Res>
    implements $AppStaticsStateCopyWith<$Res> {
  factory _$$AppStaticsStateImplCopyWith(_$AppStaticsStateImpl value,
          $Res Function(_$AppStaticsStateImpl) then) =
      __$$AppStaticsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? usageTimeInMin, int? openCount});
}

/// @nodoc
class __$$AppStaticsStateImplCopyWithImpl<$Res>
    extends _$AppStaticsStateCopyWithImpl<$Res, _$AppStaticsStateImpl>
    implements _$$AppStaticsStateImplCopyWith<$Res> {
  __$$AppStaticsStateImplCopyWithImpl(
      _$AppStaticsStateImpl _value, $Res Function(_$AppStaticsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppStaticsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usageTimeInMin = freezed,
    Object? openCount = freezed,
  }) {
    return _then(_$AppStaticsStateImpl(
      usageTimeInMin: freezed == usageTimeInMin
          ? _value.usageTimeInMin
          : usageTimeInMin // ignore: cast_nullable_to_non_nullable
              as int?,
      openCount: freezed == openCount
          ? _value.openCount
          : openCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$AppStaticsStateImpl
    with DiagnosticableTreeMixin
    implements _AppStaticsState {
  const _$AppStaticsStateImpl({this.usageTimeInMin, this.openCount});

  @override
  final int? usageTimeInMin;
  @override
  final int? openCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppStaticsState(usageTimeInMin: $usageTimeInMin, openCount: $openCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppStaticsState'))
      ..add(DiagnosticsProperty('usageTimeInMin', usageTimeInMin))
      ..add(DiagnosticsProperty('openCount', openCount));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStaticsStateImpl &&
            (identical(other.usageTimeInMin, usageTimeInMin) ||
                other.usageTimeInMin == usageTimeInMin) &&
            (identical(other.openCount, openCount) ||
                other.openCount == openCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, usageTimeInMin, openCount);

  /// Create a copy of AppStaticsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStaticsStateImplCopyWith<_$AppStaticsStateImpl> get copyWith =>
      __$$AppStaticsStateImplCopyWithImpl<_$AppStaticsStateImpl>(
          this, _$identity);
}

abstract class _AppStaticsState implements AppStaticsState {
  const factory _AppStaticsState(
      {final int? usageTimeInMin,
      final int? openCount}) = _$AppStaticsStateImpl;

  @override
  int? get usageTimeInMin;
  @override
  int? get openCount;

  /// Create a copy of AppStaticsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppStaticsStateImplCopyWith<_$AppStaticsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
