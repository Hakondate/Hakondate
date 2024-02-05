// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quantity_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuantityModel {
  PieceModel? get piece => throw _privateConstructorUsedError; // 個数
  double get gram => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuantityModelCopyWith<QuantityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuantityModelCopyWith<$Res> {
  factory $QuantityModelCopyWith(
          QuantityModel value, $Res Function(QuantityModel) then) =
      _$QuantityModelCopyWithImpl<$Res, QuantityModel>;
  @useResult
  $Res call({PieceModel? piece, double gram});

  $PieceModelCopyWith<$Res>? get piece;
}

/// @nodoc
class _$QuantityModelCopyWithImpl<$Res, $Val extends QuantityModel>
    implements $QuantityModelCopyWith<$Res> {
  _$QuantityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? piece = freezed,
    Object? gram = null,
  }) {
    return _then(_value.copyWith(
      piece: freezed == piece
          ? _value.piece
          : piece // ignore: cast_nullable_to_non_nullable
              as PieceModel?,
      gram: null == gram
          ? _value.gram
          : gram // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PieceModelCopyWith<$Res>? get piece {
    if (_value.piece == null) {
      return null;
    }

    return $PieceModelCopyWith<$Res>(_value.piece!, (value) {
      return _then(_value.copyWith(piece: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuantityModelImplCopyWith<$Res>
    implements $QuantityModelCopyWith<$Res> {
  factory _$$QuantityModelImplCopyWith(
          _$QuantityModelImpl value, $Res Function(_$QuantityModelImpl) then) =
      __$$QuantityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PieceModel? piece, double gram});

  @override
  $PieceModelCopyWith<$Res>? get piece;
}

/// @nodoc
class __$$QuantityModelImplCopyWithImpl<$Res>
    extends _$QuantityModelCopyWithImpl<$Res, _$QuantityModelImpl>
    implements _$$QuantityModelImplCopyWith<$Res> {
  __$$QuantityModelImplCopyWithImpl(
      _$QuantityModelImpl _value, $Res Function(_$QuantityModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? piece = freezed,
    Object? gram = null,
  }) {
    return _then(_$QuantityModelImpl(
      piece: freezed == piece
          ? _value.piece
          : piece // ignore: cast_nullable_to_non_nullable
              as PieceModel?,
      gram: null == gram
          ? _value.gram
          : gram // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$QuantityModelImpl implements _QuantityModel {
  const _$QuantityModelImpl({this.piece, this.gram = 0.0});

  @override
  final PieceModel? piece;
// 個数
  @override
  @JsonKey()
  final double gram;

  @override
  String toString() {
    return 'QuantityModel(piece: $piece, gram: $gram)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuantityModelImpl &&
            (identical(other.piece, piece) || other.piece == piece) &&
            (identical(other.gram, gram) || other.gram == gram));
  }

  @override
  int get hashCode => Object.hash(runtimeType, piece, gram);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuantityModelImplCopyWith<_$QuantityModelImpl> get copyWith =>
      __$$QuantityModelImplCopyWithImpl<_$QuantityModelImpl>(this, _$identity);
}

abstract class _QuantityModel implements QuantityModel {
  const factory _QuantityModel({final PieceModel? piece, final double gram}) =
      _$QuantityModelImpl;

  @override
  PieceModel? get piece;
  @override // 個数
  double get gram;
  @override
  @JsonKey(ignore: true)
  _$$QuantityModelImplCopyWith<_$QuantityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
