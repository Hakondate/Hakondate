import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate/model/dish/dish_model.dart';

part 'menu_model.freezed.dart';

@freezed
class MenuModel with _$MenuModel {
  const MenuModel._();
  factory MenuModel({
    required int id,                  // Day: 2021/06/30 & ScID: 1 → 2021063001
    required DateTime day,            // 日付
    required int schoolId,            // 学校
    required List<DishModel> dishes,  // 料理
    String? event,                    // イベント
  }) => MenuModel.lunchesDay(
    id: id,
    day: day,
    schoolId: schoolId,
    dishes: dishes,
    event: event,
  );

  const factory MenuModel.lunchesDay({
    required int id,
    required DateTime day,
    required int schoolId,
    required List<DishModel> dishes,
    String? event,
  }) = LunchesDayMenuModel;
  const factory MenuModel.holiday() = HolidayMenuModel;
  const factory MenuModel.noData() = NodataMenuModel;

  double get energy {
    final MenuModel menu = this;

    if (menu is! LunchesDayMenuModel) {
      throw Exception('Non-LunchesDayMenuModel called MenuModels getter');
    }

    double _sum = 0.0;
    for (var dish in menu.dishes) {
      _sum += dish.energy;
    }

    return _sum;
  }

  double get protein {
    final MenuModel menu = this;

    if (menu is! LunchesDayMenuModel) {
      throw Exception('Non-LunchesDayMenuModel called MenuModels getter');
    }

    double _sum = 0.0;
    for (var dish in menu.dishes) {
      _sum += dish.protein;
    }

    return _sum;
  }

  double get lipid {
    final MenuModel menu = this;

    if (menu is! LunchesDayMenuModel) {
      throw Exception('Non-LunchesDayMenuModel called MenuModels getter');
    }

    double _sum = 0.0;
    for (var dish in menu.dishes) {
      _sum += dish.lipid;
    }

    return _sum;
  }

  double get carbohydrate {
    final MenuModel menu = this;

    if (menu is! LunchesDayMenuModel) {
      throw Exception('Non-LunchesDayMenuModel called MenuModels getter');
    }

    double _sum = 0.0;
    for (var dish in menu.dishes) {
      _sum += dish.carbohydrate;
    }

    return _sum;
  }

  double get sodium {
    final MenuModel menu = this;

    if (menu is! LunchesDayMenuModel) {
      throw Exception('Non-LunchesDayMenuModel called MenuModels getter');
    }

    double _sum = 0.0;
    for (var dish in menu.dishes) {
      _sum += dish.sodium;
    }

    return _sum;
  }

  double get calcium {
    final MenuModel menu = this;

    if (menu is! LunchesDayMenuModel) {
      throw Exception('Non-LunchesDayMenuModel called MenuModels getter');
    }

    double _sum = 0.0;
    for (var dish in menu.dishes) {
      _sum += dish.calcium;
    }

    return _sum;
  }

  double get magnesium {
    final MenuModel menu = this;

    if (menu is! LunchesDayMenuModel) {
      throw Exception('Non-LunchesDayMenuModel called MenuModels getter');
    }

    double _sum = 0.0;
    for (var dish in menu.dishes) {
      _sum += dish.magnesium;
    }

    return _sum;
  }

  double get iron {
    final MenuModel menu = this;

    if (menu is! LunchesDayMenuModel) {
      throw Exception('Non-LunchesDayMenuModel called MenuModels getter');
    }

    double _sum = 0.0;
    for (var dish in menu.dishes) {
      _sum += dish.iron;
    }

    return _sum;
  }

  double get zinc {
    final MenuModel menu = this;

    if (menu is! LunchesDayMenuModel) {
      throw Exception('Non-LunchesDayMenuModel called MenuModels getter');
    }

    double _sum = 0.0;
    for (var dish in menu.dishes) {
      _sum += dish.zinc;
    }

    return _sum;
  }

  double get retinol {
    final MenuModel menu = this;

    if (menu is! LunchesDayMenuModel) {
      throw Exception('Non-LunchesDayMenuModel called MenuModels getter');
    }

    double _sum = 0.0;
    for (var dish in menu.dishes) {
      _sum += dish.retinol;
    }

    return _sum;
  }

  double get vitaminB1 {
    final MenuModel menu = this;

    if (menu is! LunchesDayMenuModel) {
      throw Exception('Non-LunchesDayMenuModel called MenuModels getter');
    }

    double _sum = 0.0;
    for (var dish in menu.dishes) {
      _sum += dish.vitaminB1;
    }

    return _sum;
  }

  double get vitaminB2 {
    final MenuModel menu = this;

    if (menu is! LunchesDayMenuModel) {
      throw Exception('Non-LunchesDayMenuModel called MenuModels getter');
    }

    double _sum = 0.0;
    for (var dish in menu.dishes) {
      _sum += dish.vitaminB2;
    }

    return _sum;
  }

  double get vitaminC {
    final MenuModel menu = this;

    if (menu is! LunchesDayMenuModel) {
      throw Exception('Non-LunchesDayMenuModel called MenuModels getter');
    }

    double _sum = 0.0;
    for (var dish in menu.dishes) {
      _sum += dish.vitaminC;
    }

    return _sum;
  }

  double get dietaryFiber {
    final MenuModel menu = this;

    if (menu is! LunchesDayMenuModel) {
      throw Exception('Non-LunchesDayMenuModel called MenuModels getter');
    }

    double _sum = 0.0;
    for (var dish in menu.dishes) {
      _sum += dish.dietaryFiber;
    }

    return _sum;
  }

  double get salt {
    final MenuModel menu = this;

    if (menu is! LunchesDayMenuModel) {
      throw Exception('Non-LunchesDayMenuModel called MenuModels getter');
    }

    double _sum = 0.0;
    for (var dish in menu.dishes) {
      _sum += dish.salt;
    }

    return _sum;
  }
}
