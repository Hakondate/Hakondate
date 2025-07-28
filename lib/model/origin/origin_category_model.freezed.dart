// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'origin_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OriginCategoryModel {
  String get name;
  List<OriginItemModel> get items;

  /// Create a copy of OriginCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OriginCategoryModelCopyWith<OriginCategoryModel> get copyWith =>
      _$OriginCategoryModelCopyWithImpl<OriginCategoryModel>(
          this as OriginCategoryModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OriginCategoryModel &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(items));

  @override
  String toString() {
    return 'OriginCategoryModel(name: $name, items: $items)';
  }
}

/// @nodoc
abstract mixin class $OriginCategoryModelCopyWith<$Res> {
  factory $OriginCategoryModelCopyWith(
          OriginCategoryModel value, $Res Function(OriginCategoryModel) _then) =
      _$OriginCategoryModelCopyWithImpl;
  @useResult
  $Res call({String name, List<OriginItemModel> items});
}

/// @nodoc
class _$OriginCategoryModelCopyWithImpl<$Res>
    implements $OriginCategoryModelCopyWith<$Res> {
  _$OriginCategoryModelCopyWithImpl(this._self, this._then);

  final OriginCategoryModel _self;
  final $Res Function(OriginCategoryModel) _then;

  /// Create a copy of OriginCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? items = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OriginItemModel>,
    ));
  }
}

/// @nodoc

class _OriginCategoryModel extends OriginCategoryModel {
  const _OriginCategoryModel(
      {required this.name, required final List<OriginItemModel> items})
      : _items = items,
        super._();

  @override
  final String name;
  final List<OriginItemModel> _items;
  @override
  List<OriginItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  /// Create a copy of OriginCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OriginCategoryModelCopyWith<_OriginCategoryModel> get copyWith =>
      __$OriginCategoryModelCopyWithImpl<_OriginCategoryModel>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OriginCategoryModel &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_items));

  @override
  String toString() {
    return 'OriginCategoryModel(name: $name, items: $items)';
  }
}

/// @nodoc
abstract mixin class _$OriginCategoryModelCopyWith<$Res>
    implements $OriginCategoryModelCopyWith<$Res> {
  factory _$OriginCategoryModelCopyWith(_OriginCategoryModel value,
          $Res Function(_OriginCategoryModel) _then) =
      __$OriginCategoryModelCopyWithImpl;
  @override
  @useResult
  $Res call({String name, List<OriginItemModel> items});
}

/// @nodoc
class __$OriginCategoryModelCopyWithImpl<$Res>
    implements _$OriginCategoryModelCopyWith<$Res> {
  __$OriginCategoryModelCopyWithImpl(this._self, this._then);

  final _OriginCategoryModel _self;
  final $Res Function(_OriginCategoryModel) _then;

  /// Create a copy of OriginCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? items = null,
  }) {
    return _then(_OriginCategoryModel(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OriginItemModel>,
    ));
  }
}

// dart format on
