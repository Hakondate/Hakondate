import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate/model/dish/dish_model.dart';
import 'package:hakondate/repository/local/sqlite/local_database.dart';
import 'package:hakondate/util/exception/class_type_exception.dart';
import 'package:hakondate/util/exception/firestore_exception.dart';

part 'menu_model.freezed.dart';

@freezed
class MenuModel with _$MenuModel {
  factory MenuModel({
    /// Day: 2021/06/30 & ScID: 1 → 2021063001
    required int id,

    /// 日付
    required DateTime day,

    /// 学校
    required int schoolId,

    /// 料理
    required List<DishModel> dishes,

    /// イベント
    String? event, // イベント
  }) =>
      MenuModel.lunchesDay(
        id: id,
        day: day,
        schoolId: schoolId,
        dishes: dishes,
        event: event,
      );
  const MenuModel._();

  const factory MenuModel.lunchesDay({
    required int id,
    required DateTime day,
    required int schoolId,
    required List<DishModel> dishes,
    String? event,
  }) = LunchesDayMenuModel;
  const factory MenuModel.holiday() = HolidayMenuModel;
  const factory MenuModel.noData() = NoDataMenuModel;

  factory MenuModel.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    if (!doc.exists) throw const FirestoreException('Failed to convert Firestore to MenuModel');

    final Map<String, dynamic> data = doc.data()!;
    final List<DishModel> dishes = (data['dishes'] as List<dynamic>)
        .map(
          (dynamic dish) => DishModel.fromFirestore(dish as Map<String, dynamic>),
        )
        .toList();

    return MenuModel(
      id: data['id'] as int,
      day: (data['day'] as Timestamp).toDate(),
      schoolId: data['schoolId'] as int,
      dishes: dishes,
      event: data['event'] as String?,
    );
  }

  factory MenuModel.fromDrift(MenusSchema schema, List<DishModel> dishes) => MenuModel(
        id: schema.id,
        day: schema.day,
        schoolId: schema.schoolId,
        dishes: dishes,
        event: schema.event,
      );

  Map<String, Object> toFirestore() {
    final MenuModel menu = this;

    if (menu is! LunchesDayMenuModel) return <String, Object>{};

    return <String, Object>{
      'id': menu.id,
      'day': menu.day,
      'schoolId': menu.schoolId,
      'dishes': menu.dishes.map((DishModel dish) => dish.toFirestore()).toList(),
      if (menu.event != null) 'event': menu.event!,
      'updatedAt': DateTime.now(),
    };
  }

  MenusTableCompanion toDrift() {
    final MenuModel menu = this;

    if (menu is! LunchesDayMenuModel) {
      throw const ClassTypeException('Non-LunchesDayMenuModel called MenuModels toDrift');
    }

    return MenusTableCompanion(
      id: Value<int>(menu.id),
      day: Value<DateTime>(menu.day),
      schoolId: Value<int>(menu.schoolId),
      event: Value<String?>(menu.event),
      updateAt: Value<DateTime>(DateTime.now()),
    );
  }

  double get energy {
    final MenuModel menu = this;

    if (menu is! LunchesDayMenuModel) {
      throw const ClassTypeException(
        'Non-LunchesDayMenuModel called MenuModels getter',
      );
    }

    double sum = 0;
    for (final DishModel dish in menu.dishes) {
      sum += dish.energy;
    }

    return sum;
  }

  double get protein {
    final MenuModel menu = this;

    if (menu is! LunchesDayMenuModel) {
      throw const ClassTypeException(
        'Non-LunchesDayMenuModel called MenuModels getter',
      );
    }

    double sum = 0;
    for (final DishModel dish in menu.dishes) {
      sum += dish.protein;
    }

    return sum;
  }

  double get lipid {
    final MenuModel menu = this;

    if (menu is! LunchesDayMenuModel) {
      throw const ClassTypeException(
        'Non-LunchesDayMenuModel called MenuModels getter',
      );
    }

    double sum = 0;
    for (final DishModel dish in menu.dishes) {
      sum += dish.lipid;
    }

    return sum;
  }

  double get carbohydrate {
    final MenuModel menu = this;

    if (menu is! LunchesDayMenuModel) {
      throw const ClassTypeException(
        'Non-LunchesDayMenuModel called MenuModels getter',
      );
    }

    double sum = 0;
    for (final DishModel dish in menu.dishes) {
      sum += dish.carbohydrate;
    }

    return sum;
  }

  double get sodium {
    final MenuModel menu = this;

    if (menu is! LunchesDayMenuModel) {
      throw const ClassTypeException(
        'Non-LunchesDayMenuModel called MenuModels getter',
      );
    }

    double sum = 0;
    for (final DishModel dish in menu.dishes) {
      sum += dish.sodium;
    }

    return sum;
  }

  double get calcium {
    final MenuModel menu = this;

    if (menu is! LunchesDayMenuModel) {
      throw const ClassTypeException(
        'Non-LunchesDayMenuModel called MenuModels getter',
      );
    }

    double sum = 0;
    for (final DishModel dish in menu.dishes) {
      sum += dish.calcium;
    }

    return sum;
  }

  double get magnesium {
    final MenuModel menu = this;

    if (menu is! LunchesDayMenuModel) {
      throw const ClassTypeException(
        'Non-LunchesDayMenuModel called MenuModels getter',
      );
    }

    double sum = 0;
    for (final DishModel dish in menu.dishes) {
      sum += dish.magnesium;
    }

    return sum;
  }

  double get iron {
    final MenuModel menu = this;

    if (menu is! LunchesDayMenuModel) {
      throw const ClassTypeException(
        'Non-LunchesDayMenuModel called MenuModels getter',
      );
    }

    double sum = 0;
    for (final DishModel dish in menu.dishes) {
      sum += dish.iron;
    }

    return sum;
  }

  double get zinc {
    final MenuModel menu = this;

    if (menu is! LunchesDayMenuModel) {
      throw const ClassTypeException(
        'Non-LunchesDayMenuModel called MenuModels getter',
      );
    }

    double sum = 0;
    for (final DishModel dish in menu.dishes) {
      sum += dish.zinc;
    }

    return sum;
  }

  double get retinol {
    final MenuModel menu = this;

    if (menu is! LunchesDayMenuModel) {
      throw const ClassTypeException(
        'Non-LunchesDayMenuModel called MenuModels getter',
      );
    }

    double sum = 0;
    for (final DishModel dish in menu.dishes) {
      sum += dish.retinol;
    }

    return sum;
  }

  double get vitaminB1 {
    final MenuModel menu = this;

    if (menu is! LunchesDayMenuModel) {
      throw const ClassTypeException(
        'Non-LunchesDayMenuModel called MenuModels getter',
      );
    }

    double sum = 0;
    for (final DishModel dish in menu.dishes) {
      sum += dish.vitaminB1;
    }

    return sum;
  }

  double get vitaminB2 {
    final MenuModel menu = this;

    if (menu is! LunchesDayMenuModel) {
      throw const ClassTypeException(
        'Non-LunchesDayMenuModel called MenuModels getter',
      );
    }

    double sum = 0;
    for (final DishModel dish in menu.dishes) {
      sum += dish.vitaminB2;
    }

    return sum;
  }

  double get vitaminC {
    final MenuModel menu = this;

    if (menu is! LunchesDayMenuModel) {
      throw const ClassTypeException(
        'Non-LunchesDayMenuModel called MenuModels getter',
      );
    }

    double sum = 0;
    for (final DishModel dish in menu.dishes) {
      sum += dish.vitaminC;
    }

    return sum;
  }

  double get dietaryFiber {
    final MenuModel menu = this;

    if (menu is! LunchesDayMenuModel) {
      throw const ClassTypeException(
        'Non-LunchesDayMenuModel called MenuModels getter',
      );
    }

    double sum = 0;
    for (final DishModel dish in menu.dishes) {
      sum += dish.dietaryFiber;
    }

    return sum;
  }

  double get salt {
    final MenuModel menu = this;

    if (menu is! LunchesDayMenuModel) {
      throw const ClassTypeException(
        'Non-LunchesDayMenuModel called MenuModels getter',
      );
    }

    double sum = 0;
    for (final DishModel dish in menu.dishes) {
      sum += dish.salt;
    }

    return sum;
  }

  double get vitamin {
    final MenuModel menu = this;

    if (menu is! LunchesDayMenuModel) {
      throw const ClassTypeException(
        'Non-LunchesDayMenuModel called MenuModels getter',
      );
    }

    double sum = 0;
    for (final DishModel dish in menu.dishes) {
      sum += dish.vitamin;
    }

    return sum;
  }

  double get mineral {
    final MenuModel menu = this;

    if (menu is! LunchesDayMenuModel) {
      throw const ClassTypeException(
        'Non-LunchesDayMenuModel called MenuModels getter',
      );
    }

    double sum = 0;
    for (final DishModel dish in menu.dishes) {
      sum += dish.mineral;
    }

    return sum;
  }
}
