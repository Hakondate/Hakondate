// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'origin_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OriginModel {
  DateTime get date;
  List<OriginCategoryModel> get categories;

  /// Create a copy of OriginModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OriginModelCopyWith<OriginModel> get copyWith =>
      _$OriginModelCopyWithImpl<OriginModel>(this as OriginModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OriginModel &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality()
                .equals(other.categories, categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, date, const DeepCollectionEquality().hash(categories));

  @override
  String toString() {
    return 'OriginModel(date: $date, categories: $categories)';
  }
}

/// @nodoc
abstract mixin class $OriginModelCopyWith<$Res> {
  factory $OriginModelCopyWith(
          OriginModel value, $Res Function(OriginModel) _then) =
      _$OriginModelCopyWithImpl;
  @useResult
  $Res call({DateTime date, List<OriginCategoryModel> categories});
}

/// @nodoc
class _$OriginModelCopyWithImpl<$Res> implements $OriginModelCopyWith<$Res> {
  _$OriginModelCopyWithImpl(this._self, this._then);

  final OriginModel _self;
  final $Res Function(OriginModel) _then;

  /// Create a copy of OriginModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? categories = null,
  }) {
    return _then(_self.copyWith(
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      categories: null == categories
          ? _self.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<OriginCategoryModel>,
    ));
  }
}

/// @nodoc

class _OriginModel extends OriginModel {
  const _OriginModel(
      {required this.date, required final List<OriginCategoryModel> categories})
      : _categories = categories,
        super._();

  @override
  final DateTime date;
  final List<OriginCategoryModel> _categories;
  @override
  List<OriginCategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  /// Create a copy of OriginModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OriginModelCopyWith<_OriginModel> get copyWith =>
      __$OriginModelCopyWithImpl<_OriginModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OriginModel &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, date, const DeepCollectionEquality().hash(_categories));

  @override
  String toString() {
    return 'OriginModel(date: $date, categories: $categories)';
  }
}

/// @nodoc
abstract mixin class _$OriginModelCopyWith<$Res>
    implements $OriginModelCopyWith<$Res> {
  factory _$OriginModelCopyWith(
          _OriginModel value, $Res Function(_OriginModel) _then) =
      __$OriginModelCopyWithImpl;
  @override
  @useResult
  $Res call({DateTime date, List<OriginCategoryModel> categories});
}

/// @nodoc
class __$OriginModelCopyWithImpl<$Res> implements _$OriginModelCopyWith<$Res> {
  __$OriginModelCopyWithImpl(this._self, this._then);

  final _OriginModel _self;
  final $Res Function(_OriginModel) _then;

  /// Create a copy of OriginModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? date = null,
    Object? categories = null,
  }) {
    return _then(_OriginModel(
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      categories: null == categories
          ? _self._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<OriginCategoryModel>,
    ));
  }
}

// dart format on
