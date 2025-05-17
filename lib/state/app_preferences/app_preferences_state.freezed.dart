// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_preferences_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppPreferencesState {
  bool get isReviewPopupADenied => throw _privateConstructorUsedError;

  /// Create a copy of AppPreferencesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppPreferencesStateCopyWith<AppPreferencesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppPreferencesStateCopyWith<$Res> {
  factory $AppPreferencesStateCopyWith(
          AppPreferencesState value, $Res Function(AppPreferencesState) then) =
      _$AppPreferencesStateCopyWithImpl<$Res, AppPreferencesState>;
  @useResult
  $Res call({bool isReviewPopupADenied});
}

/// @nodoc
class _$AppPreferencesStateCopyWithImpl<$Res, $Val extends AppPreferencesState>
    implements $AppPreferencesStateCopyWith<$Res> {
  _$AppPreferencesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppPreferencesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isReviewPopupADenied = null,
  }) {
    return _then(_value.copyWith(
      isReviewPopupADenied: null == isReviewPopupADenied
          ? _value.isReviewPopupADenied
          : isReviewPopupADenied // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppPreferencesStateImplCopyWith<$Res>
    implements $AppPreferencesStateCopyWith<$Res> {
  factory _$$AppPreferencesStateImplCopyWith(_$AppPreferencesStateImpl value,
          $Res Function(_$AppPreferencesStateImpl) then) =
      __$$AppPreferencesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isReviewPopupADenied});
}

/// @nodoc
class __$$AppPreferencesStateImplCopyWithImpl<$Res>
    extends _$AppPreferencesStateCopyWithImpl<$Res, _$AppPreferencesStateImpl>
    implements _$$AppPreferencesStateImplCopyWith<$Res> {
  __$$AppPreferencesStateImplCopyWithImpl(_$AppPreferencesStateImpl _value,
      $Res Function(_$AppPreferencesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppPreferencesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isReviewPopupADenied = null,
  }) {
    return _then(_$AppPreferencesStateImpl(
      isReviewPopupADenied: null == isReviewPopupADenied
          ? _value.isReviewPopupADenied
          : isReviewPopupADenied // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AppPreferencesStateImpl implements _AppPreferencesState {
  const _$AppPreferencesStateImpl({this.isReviewPopupADenied = false});

  @override
  @JsonKey()
  final bool isReviewPopupADenied;

  @override
  String toString() {
    return 'AppPreferencesState(isReviewPopupADenied: $isReviewPopupADenied)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppPreferencesStateImpl &&
            (identical(other.isReviewPopupADenied, isReviewPopupADenied) ||
                other.isReviewPopupADenied == isReviewPopupADenied));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isReviewPopupADenied);

  /// Create a copy of AppPreferencesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppPreferencesStateImplCopyWith<_$AppPreferencesStateImpl> get copyWith =>
      __$$AppPreferencesStateImplCopyWithImpl<_$AppPreferencesStateImpl>(
          this, _$identity);
}

abstract class _AppPreferencesState implements AppPreferencesState {
  const factory _AppPreferencesState({final bool isReviewPopupADenied}) =
      _$AppPreferencesStateImpl;

  @override
  bool get isReviewPopupADenied;

  /// Create a copy of AppPreferencesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppPreferencesStateImplCopyWith<_$AppPreferencesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
