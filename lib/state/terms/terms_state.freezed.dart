// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'terms_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TermsState {
  bool get isAgree => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TermsStateCopyWith<TermsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermsStateCopyWith<$Res> {
  factory $TermsStateCopyWith(
          TermsState value, $Res Function(TermsState) then) =
      _$TermsStateCopyWithImpl<$Res>;
  $Res call({bool isAgree});
}

/// @nodoc
class _$TermsStateCopyWithImpl<$Res> implements $TermsStateCopyWith<$Res> {
  _$TermsStateCopyWithImpl(this._value, this._then);

  final TermsState _value;
  // ignore: unused_field
  final $Res Function(TermsState) _then;

  @override
  $Res call({
    Object? isAgree = freezed,
  }) {
    return _then(_value.copyWith(
      isAgree: isAgree == freezed
          ? _value.isAgree
          : isAgree // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_TermsStateCopyWith<$Res>
    implements $TermsStateCopyWith<$Res> {
  factory _$$_TermsStateCopyWith(
          _$_TermsState value, $Res Function(_$_TermsState) then) =
      __$$_TermsStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isAgree});
}

/// @nodoc
class __$$_TermsStateCopyWithImpl<$Res> extends _$TermsStateCopyWithImpl<$Res>
    implements _$$_TermsStateCopyWith<$Res> {
  __$$_TermsStateCopyWithImpl(
      _$_TermsState _value, $Res Function(_$_TermsState) _then)
      : super(_value, (v) => _then(v as _$_TermsState));

  @override
  _$_TermsState get _value => super._value as _$_TermsState;

  @override
  $Res call({
    Object? isAgree = freezed,
  }) {
    return _then(_$_TermsState(
      isAgree: isAgree == freezed
          ? _value.isAgree
          : isAgree // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TermsState with DiagnosticableTreeMixin implements _TermsState {
  const _$_TermsState({this.isAgree = false});

  @override
  @JsonKey()
  final bool isAgree;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TermsState(isAgree: $isAgree)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TermsState'))
      ..add(DiagnosticsProperty('isAgree', isAgree));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TermsState &&
            const DeepCollectionEquality().equals(other.isAgree, isAgree));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isAgree));

  @JsonKey(ignore: true)
  @override
  _$$_TermsStateCopyWith<_$_TermsState> get copyWith =>
      __$$_TermsStateCopyWithImpl<_$_TermsState>(this, _$identity);
}

abstract class _TermsState implements TermsState {
  const factory _TermsState({final bool isAgree}) = _$_TermsState;

  @override
  bool get isAgree => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TermsStateCopyWith<_$_TermsState> get copyWith =>
      throw _privateConstructorUsedError;
}
