// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'origin_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OriginItemModel {
  String get name => throw _privateConstructorUsedError;
  List<String> get prefectures => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OriginItemModelCopyWith<OriginItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OriginItemModelCopyWith<$Res> {
  factory $OriginItemModelCopyWith(
          OriginItemModel value, $Res Function(OriginItemModel) then) =
      _$OriginItemModelCopyWithImpl<$Res, OriginItemModel>;
  @useResult
  $Res call({String name, List<String> prefectures});
}

/// @nodoc
class _$OriginItemModelCopyWithImpl<$Res, $Val extends OriginItemModel>
    implements $OriginItemModelCopyWith<$Res> {
  _$OriginItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? prefectures = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      prefectures: null == prefectures
          ? _value.prefectures
          : prefectures // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OriginItemModelCopyWith<$Res>
    implements $OriginItemModelCopyWith<$Res> {
  factory _$$_OriginItemModelCopyWith(
          _$_OriginItemModel value, $Res Function(_$_OriginItemModel) then) =
      __$$_OriginItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<String> prefectures});
}

/// @nodoc
class __$$_OriginItemModelCopyWithImpl<$Res>
    extends _$OriginItemModelCopyWithImpl<$Res, _$_OriginItemModel>
    implements _$$_OriginItemModelCopyWith<$Res> {
  __$$_OriginItemModelCopyWithImpl(
      _$_OriginItemModel _value, $Res Function(_$_OriginItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? prefectures = null,
  }) {
    return _then(_$_OriginItemModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      prefectures: null == prefectures
          ? _value._prefectures
          : prefectures // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_OriginItemModel extends _OriginItemModel {
  const _$_OriginItemModel(
      {required this.name, required final List<String> prefectures})
      : _prefectures = prefectures,
        super._();

  @override
  final String name;
  final List<String> _prefectures;
  @override
  List<String> get prefectures {
    if (_prefectures is EqualUnmodifiableListView) return _prefectures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prefectures);
  }

  @override
  String toString() {
    return 'OriginItemModel(name: $name, prefectures: $prefectures)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OriginItemModel &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._prefectures, _prefectures));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_prefectures));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OriginItemModelCopyWith<_$_OriginItemModel> get copyWith =>
      __$$_OriginItemModelCopyWithImpl<_$_OriginItemModel>(this, _$identity);
}

abstract class _OriginItemModel extends OriginItemModel {
  const factory _OriginItemModel(
      {required final String name,
      required final List<String> prefectures}) = _$_OriginItemModel;
  const _OriginItemModel._() : super._();

  @override
  String get name;
  @override
  List<String> get prefectures;
  @override
  @JsonKey(ignore: true)
  _$$_OriginItemModelCopyWith<_$_OriginItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
