// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_bottom_navigation_bar_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppBottomNavigationBarState {
  int? get tappedButtonIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppBottomNavigationBarStateCopyWith<AppBottomNavigationBarState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppBottomNavigationBarStateCopyWith<$Res> {
  factory $AppBottomNavigationBarStateCopyWith(
          AppBottomNavigationBarState value,
          $Res Function(AppBottomNavigationBarState) then) =
      _$AppBottomNavigationBarStateCopyWithImpl<$Res,
          AppBottomNavigationBarState>;
  @useResult
  $Res call({int? tappedButtonIndex});
}

/// @nodoc
class _$AppBottomNavigationBarStateCopyWithImpl<$Res,
        $Val extends AppBottomNavigationBarState>
    implements $AppBottomNavigationBarStateCopyWith<$Res> {
  _$AppBottomNavigationBarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tappedButtonIndex = freezed,
  }) {
    return _then(_value.copyWith(
      tappedButtonIndex: freezed == tappedButtonIndex
          ? _value.tappedButtonIndex
          : tappedButtonIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppBottomNavigationBarStateImplCopyWith<$Res>
    implements $AppBottomNavigationBarStateCopyWith<$Res> {
  factory _$$AppBottomNavigationBarStateImplCopyWith(
          _$AppBottomNavigationBarStateImpl value,
          $Res Function(_$AppBottomNavigationBarStateImpl) then) =
      __$$AppBottomNavigationBarStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? tappedButtonIndex});
}

/// @nodoc
class __$$AppBottomNavigationBarStateImplCopyWithImpl<$Res>
    extends _$AppBottomNavigationBarStateCopyWithImpl<$Res,
        _$AppBottomNavigationBarStateImpl>
    implements _$$AppBottomNavigationBarStateImplCopyWith<$Res> {
  __$$AppBottomNavigationBarStateImplCopyWithImpl(
      _$AppBottomNavigationBarStateImpl _value,
      $Res Function(_$AppBottomNavigationBarStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tappedButtonIndex = freezed,
  }) {
    return _then(_$AppBottomNavigationBarStateImpl(
      tappedButtonIndex: freezed == tappedButtonIndex
          ? _value.tappedButtonIndex
          : tappedButtonIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$AppBottomNavigationBarStateImpl
    with DiagnosticableTreeMixin
    implements _AppBottomNavigationBarState {
  const _$AppBottomNavigationBarStateImpl({this.tappedButtonIndex});

  @override
  final int? tappedButtonIndex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppBottomNavigationBarState(tappedButtonIndex: $tappedButtonIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppBottomNavigationBarState'))
      ..add(DiagnosticsProperty('tappedButtonIndex', tappedButtonIndex));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppBottomNavigationBarStateImpl &&
            (identical(other.tappedButtonIndex, tappedButtonIndex) ||
                other.tappedButtonIndex == tappedButtonIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tappedButtonIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppBottomNavigationBarStateImplCopyWith<_$AppBottomNavigationBarStateImpl>
      get copyWith => __$$AppBottomNavigationBarStateImplCopyWithImpl<
          _$AppBottomNavigationBarStateImpl>(this, _$identity);
}

abstract class _AppBottomNavigationBarState
    implements AppBottomNavigationBarState {
  const factory _AppBottomNavigationBarState({final int? tappedButtonIndex}) =
      _$AppBottomNavigationBarStateImpl;

  @override
  int? get tappedButtonIndex;
  @override
  @JsonKey(ignore: true)
  _$$AppBottomNavigationBarStateImplCopyWith<_$AppBottomNavigationBarStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
