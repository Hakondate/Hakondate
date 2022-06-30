// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'quantity_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuantityModel {
  int? get piece => throw _privateConstructorUsedError; // 個数
  double get gram => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuantityModelCopyWith<QuantityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuantityModelCopyWith<$Res> {
  factory $QuantityModelCopyWith(
          QuantityModel value, $Res Function(QuantityModel) then) =
      _$QuantityModelCopyWithImpl<$Res>;
  $Res call({int? piece, double gram});
}

/// @nodoc
class _$QuantityModelCopyWithImpl<$Res>
    implements $QuantityModelCopyWith<$Res> {
  _$QuantityModelCopyWithImpl(this._value, this._then);

  final QuantityModel _value;
  // ignore: unused_field
  final $Res Function(QuantityModel) _then;

  @override
  $Res call({
    Object? piece = freezed,
    Object? gram = freezed,
  }) {
    return _then(_value.copyWith(
      piece: piece == freezed
          ? _value.piece
          : piece // ignore: cast_nullable_to_non_nullable
              as int?,
      gram: gram == freezed
          ? _value.gram
          : gram // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_QuantityModelCopyWith<$Res>
    implements $QuantityModelCopyWith<$Res> {
  factory _$$_QuantityModelCopyWith(
          _$_QuantityModel value, $Res Function(_$_QuantityModel) then) =
      __$$_QuantityModelCopyWithImpl<$Res>;
  @override
  $Res call({int? piece, double gram});
}

/// @nodoc
class __$$_QuantityModelCopyWithImpl<$Res>
    extends _$QuantityModelCopyWithImpl<$Res>
    implements _$$_QuantityModelCopyWith<$Res> {
  __$$_QuantityModelCopyWithImpl(
      _$_QuantityModel _value, $Res Function(_$_QuantityModel) _then)
      : super(_value, (v) => _then(v as _$_QuantityModel));

  @override
  _$_QuantityModel get _value => super._value as _$_QuantityModel;

  @override
  $Res call({
    Object? piece = freezed,
    Object? gram = freezed,
  }) {
    return _then(_$_QuantityModel(
      piece: piece == freezed
          ? _value.piece
          : piece // ignore: cast_nullable_to_non_nullable
              as int?,
      gram: gram == freezed
          ? _value.gram
          : gram // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_QuantityModel implements _QuantityModel {
  const _$_QuantityModel({this.piece, this.gram = 0.0});

  @override
  final int? piece;
// 個数
  @override
  @JsonKey()
  final double gram;

  @override
  String toString() {
    return 'QuantityModel(piece: $piece, gram: $gram)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuantityModel &&
            const DeepCollectionEquality().equals(other.piece, piece) &&
            const DeepCollectionEquality().equals(other.gram, gram));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(piece),
      const DeepCollectionEquality().hash(gram));

  @JsonKey(ignore: true)
  @override
  _$$_QuantityModelCopyWith<_$_QuantityModel> get copyWith =>
      __$$_QuantityModelCopyWithImpl<_$_QuantityModel>(this, _$identity);
}

abstract class _QuantityModel implements QuantityModel {
  const factory _QuantityModel({final int? piece, final double gram}) =
      _$_QuantityModel;

  @override
  int? get piece => throw _privateConstructorUsedError;
  @override // 個数
  double get gram => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_QuantityModelCopyWith<_$_QuantityModel> get copyWith =>
      throw _privateConstructorUsedError;
}
