// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'piece_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PieceModel {
  double get number => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PieceModelCopyWith<PieceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PieceModelCopyWith<$Res> {
  factory $PieceModelCopyWith(
          PieceModel value, $Res Function(PieceModel) then) =
      _$PieceModelCopyWithImpl<$Res, PieceModel>;
  @useResult
  $Res call({double number, String unit});
}

/// @nodoc
class _$PieceModelCopyWithImpl<$Res, $Val extends PieceModel>
    implements $PieceModelCopyWith<$Res> {
  _$PieceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? unit = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PieceModelImplCopyWith<$Res>
    implements $PieceModelCopyWith<$Res> {
  factory _$$PieceModelImplCopyWith(
          _$PieceModelImpl value, $Res Function(_$PieceModelImpl) then) =
      __$$PieceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double number, String unit});
}

/// @nodoc
class __$$PieceModelImplCopyWithImpl<$Res>
    extends _$PieceModelCopyWithImpl<$Res, _$PieceModelImpl>
    implements _$$PieceModelImplCopyWith<$Res> {
  __$$PieceModelImplCopyWithImpl(
      _$PieceModelImpl _value, $Res Function(_$PieceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? unit = null,
  }) {
    return _then(_$PieceModelImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PieceModelImpl implements _PieceModel {
  const _$PieceModelImpl({required this.number, this.unit = '個'});

  @override
  final double number;
  @override
  @JsonKey()
  final String unit;

  @override
  String toString() {
    return 'PieceModel(number: $number, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PieceModelImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PieceModelImplCopyWith<_$PieceModelImpl> get copyWith =>
      __$$PieceModelImplCopyWithImpl<_$PieceModelImpl>(this, _$identity);
}

abstract class _PieceModel implements PieceModel {
  const factory _PieceModel({required final double number, final String unit}) =
      _$PieceModelImpl;

  @override
  double get number;
  @override
  String get unit;
  @override
  @JsonKey(ignore: true)
  _$$PieceModelImplCopyWith<_$PieceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
