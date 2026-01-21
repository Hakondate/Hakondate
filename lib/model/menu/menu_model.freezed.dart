// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MenuModel {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MenuModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MenuModel()';
  }
}

/// @nodoc
class $MenuModelCopyWith<$Res> {
  $MenuModelCopyWith(MenuModel _, $Res Function(MenuModel) __);
}

/// @nodoc

class LunchesDayMenuModel extends MenuModel {
  const LunchesDayMenuModel(
      {required this.id,
      required this.day,
      required this.schoolId,
      required final List<DishModel> dishes,
      required this.publishAllowed,
      this.event})
      : _dishes = dishes,
        super._();

  final int id;
  final DateTime day;
  final int schoolId;
  final List<DishModel> _dishes;
  List<DishModel> get dishes {
    if (_dishes is EqualUnmodifiableListView) return _dishes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dishes);
  }

  final bool publishAllowed;
  final String? event;

  /// Create a copy of MenuModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LunchesDayMenuModelCopyWith<LunchesDayMenuModel> get copyWith =>
      _$LunchesDayMenuModelCopyWithImpl<LunchesDayMenuModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LunchesDayMenuModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            const DeepCollectionEquality().equals(other._dishes, _dishes) &&
            (identical(other.publishAllowed, publishAllowed) ||
                other.publishAllowed == publishAllowed) &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, day, schoolId,
      const DeepCollectionEquality().hash(_dishes), publishAllowed, event);

  @override
  String toString() {
    return 'MenuModel.lunchesDay(id: $id, day: $day, schoolId: $schoolId, dishes: $dishes, publishAllowed: $publishAllowed, event: $event)';
  }
}

/// @nodoc
abstract mixin class $LunchesDayMenuModelCopyWith<$Res>
    implements $MenuModelCopyWith<$Res> {
  factory $LunchesDayMenuModelCopyWith(
          LunchesDayMenuModel value, $Res Function(LunchesDayMenuModel) _then) =
      _$LunchesDayMenuModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      DateTime day,
      int schoolId,
      List<DishModel> dishes,
      bool publishAllowed,
      String? event});
}

/// @nodoc
class _$LunchesDayMenuModelCopyWithImpl<$Res>
    implements $LunchesDayMenuModelCopyWith<$Res> {
  _$LunchesDayMenuModelCopyWithImpl(this._self, this._then);

  final LunchesDayMenuModel _self;
  final $Res Function(LunchesDayMenuModel) _then;

  /// Create a copy of MenuModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? day = null,
    Object? schoolId = null,
    Object? dishes = null,
    Object? publishAllowed = null,
    Object? event = freezed,
  }) {
    return _then(LunchesDayMenuModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _self.day
          : day // ignore: cast_nullable_to_non_nullable
              as DateTime,
      schoolId: null == schoolId
          ? _self.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int,
      dishes: null == dishes
          ? _self._dishes
          : dishes // ignore: cast_nullable_to_non_nullable
              as List<DishModel>,
      publishAllowed: null == publishAllowed
          ? _self.publishAllowed
          : publishAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
      event: freezed == event
          ? _self.event
          : event // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class HolidayMenuModel extends MenuModel {
  const HolidayMenuModel() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HolidayMenuModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MenuModel.holiday()';
  }
}

/// @nodoc

class NoDataMenuModel extends MenuModel {
  const NoDataMenuModel() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NoDataMenuModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MenuModel.noData()';
  }
}

/// @nodoc

class UnauthorizedMenuModel extends MenuModel {
  const UnauthorizedMenuModel() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UnauthorizedMenuModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MenuModel.unauthorized()';
  }
}

// dart format on
