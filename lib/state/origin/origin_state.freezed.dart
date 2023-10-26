// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'origin_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OriginState {
  List<OriginModel> get origins => throw _privateConstructorUsedError;
  OriginModel get selectedOrigin => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OriginStateCopyWith<OriginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OriginStateCopyWith<$Res> {
  factory $OriginStateCopyWith(
          OriginState value, $Res Function(OriginState) then) =
      _$OriginStateCopyWithImpl<$Res, OriginState>;
  @useResult
  $Res call({List<OriginModel> origins, OriginModel selectedOrigin});

  $OriginModelCopyWith<$Res> get selectedOrigin;
}

/// @nodoc
class _$OriginStateCopyWithImpl<$Res, $Val extends OriginState>
    implements $OriginStateCopyWith<$Res> {
  _$OriginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? origins = null,
    Object? selectedOrigin = null,
  }) {
    return _then(_value.copyWith(
      origins: null == origins
          ? _value.origins
          : origins // ignore: cast_nullable_to_non_nullable
              as List<OriginModel>,
      selectedOrigin: null == selectedOrigin
          ? _value.selectedOrigin
          : selectedOrigin // ignore: cast_nullable_to_non_nullable
              as OriginModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OriginModelCopyWith<$Res> get selectedOrigin {
    return $OriginModelCopyWith<$Res>(_value.selectedOrigin, (value) {
      return _then(_value.copyWith(selectedOrigin: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OriginStateCopyWith<$Res>
    implements $OriginStateCopyWith<$Res> {
  factory _$$_OriginStateCopyWith(
          _$_OriginState value, $Res Function(_$_OriginState) then) =
      __$$_OriginStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<OriginModel> origins, OriginModel selectedOrigin});

  @override
  $OriginModelCopyWith<$Res> get selectedOrigin;
}

/// @nodoc
class __$$_OriginStateCopyWithImpl<$Res>
    extends _$OriginStateCopyWithImpl<$Res, _$_OriginState>
    implements _$$_OriginStateCopyWith<$Res> {
  __$$_OriginStateCopyWithImpl(
      _$_OriginState _value, $Res Function(_$_OriginState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? origins = null,
    Object? selectedOrigin = null,
  }) {
    return _then(_$_OriginState(
      origins: null == origins
          ? _value._origins
          : origins // ignore: cast_nullable_to_non_nullable
              as List<OriginModel>,
      selectedOrigin: null == selectedOrigin
          ? _value.selectedOrigin
          : selectedOrigin // ignore: cast_nullable_to_non_nullable
              as OriginModel,
    ));
  }
}

/// @nodoc

class _$_OriginState with DiagnosticableTreeMixin implements _OriginState {
  const _$_OriginState(
      {required final List<OriginModel> origins, required this.selectedOrigin})
      : _origins = origins;

  final List<OriginModel> _origins;
  @override
  List<OriginModel> get origins {
    if (_origins is EqualUnmodifiableListView) return _origins;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_origins);
  }

  @override
  final OriginModel selectedOrigin;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OriginState(origins: $origins, selectedOrigin: $selectedOrigin)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OriginState'))
      ..add(DiagnosticsProperty('origins', origins))
      ..add(DiagnosticsProperty('selectedOrigin', selectedOrigin));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OriginState &&
            const DeepCollectionEquality().equals(other._origins, _origins) &&
            (identical(other.selectedOrigin, selectedOrigin) ||
                other.selectedOrigin == selectedOrigin));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_origins), selectedOrigin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OriginStateCopyWith<_$_OriginState> get copyWith =>
      __$$_OriginStateCopyWithImpl<_$_OriginState>(this, _$identity);
}

abstract class _OriginState implements OriginState {
  const factory _OriginState(
      {required final List<OriginModel> origins,
      required final OriginModel selectedOrigin}) = _$_OriginState;

  @override
  List<OriginModel> get origins;
  @override
  OriginModel get selectedOrigin;
  @override
  @JsonKey(ignore: true)
  _$$_OriginStateCopyWith<_$_OriginState> get copyWith =>
      throw _privateConstructorUsedError;
}
