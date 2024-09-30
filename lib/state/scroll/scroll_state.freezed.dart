// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scroll_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScrollState {
  PageStorageBucket get bucket => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScrollStateCopyWith<ScrollState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScrollStateCopyWith<$Res> {
  factory $ScrollStateCopyWith(
          ScrollState value, $Res Function(ScrollState) then) =
      _$ScrollStateCopyWithImpl<$Res, ScrollState>;
  @useResult
  $Res call({PageStorageBucket bucket});
}

/// @nodoc
class _$ScrollStateCopyWithImpl<$Res, $Val extends ScrollState>
    implements $ScrollStateCopyWith<$Res> {
  _$ScrollStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bucket = null,
  }) {
    return _then(_value.copyWith(
      bucket: null == bucket
          ? _value.bucket
          : bucket // ignore: cast_nullable_to_non_nullable
              as PageStorageBucket,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScrollStateImplCopyWith<$Res>
    implements $ScrollStateCopyWith<$Res> {
  factory _$$ScrollStateImplCopyWith(
          _$ScrollStateImpl value, $Res Function(_$ScrollStateImpl) then) =
      __$$ScrollStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PageStorageBucket bucket});
}

/// @nodoc
class __$$ScrollStateImplCopyWithImpl<$Res>
    extends _$ScrollStateCopyWithImpl<$Res, _$ScrollStateImpl>
    implements _$$ScrollStateImplCopyWith<$Res> {
  __$$ScrollStateImplCopyWithImpl(
      _$ScrollStateImpl _value, $Res Function(_$ScrollStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bucket = null,
  }) {
    return _then(_$ScrollStateImpl(
      bucket: null == bucket
          ? _value.bucket
          : bucket // ignore: cast_nullable_to_non_nullable
              as PageStorageBucket,
    ));
  }
}

/// @nodoc

class _$ScrollStateImpl implements _ScrollState {
  const _$ScrollStateImpl({required this.bucket});

  @override
  final PageStorageBucket bucket;

  @override
  String toString() {
    return 'ScrollState(bucket: $bucket)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScrollStateImpl &&
            (identical(other.bucket, bucket) || other.bucket == bucket));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bucket);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScrollStateImplCopyWith<_$ScrollStateImpl> get copyWith =>
      __$$ScrollStateImplCopyWithImpl<_$ScrollStateImpl>(this, _$identity);
}

abstract class _ScrollState implements ScrollState {
  const factory _ScrollState({required final PageStorageBucket bucket}) =
      _$ScrollStateImpl;

  @override
  PageStorageBucket get bucket;
  @override
  @JsonKey(ignore: true)
  _$$ScrollStateImplCopyWith<_$ScrollStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
