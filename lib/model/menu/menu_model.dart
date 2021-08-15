import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate_v2/model/dish/dish_model.dart';

part 'menu_model.freezed.dart';

@freezed
class MenuModel with _$MenuModel {
  const MenuModel._();                // Support Getter Method
  const factory MenuModel({
    required int id,                  // Day: 2021/06/30 & ScID: 1 → 2021063001
    required DateTime day,            // 日付
    required int schoolId,            // 学校
    required List<DishModel> dishes,  // 料理
    String? event                     // イベント
  }) = _MenuModel;

  double get energy {
    double _sum = 0.0;
    dishes.forEach((dish) {
      _sum += dish.energy;
    });
    return _sum;
  }

  double get protein {
    double _sum = 0.0;
    dishes.forEach((dish) {
      _sum += dish.protein;
    });
    return _sum;
  }

  double get lipid {
    double _sum = 0.0;
    dishes.forEach((dish) {
      _sum += dish.lipid;
    });
    return _sum;
  }

  double get carbohydrate {
    double _sum = 0.0;
    dishes.forEach((dish) {
      _sum += dish.carbohydrate;
    });
    return _sum;
  }

  double get sodium {
    double _sum = 0.0;
    dishes.forEach((dish) {
      _sum += dish.sodium;
    });
    return _sum;
  }

  double get calcium {
    double _sum = 0.0;
    dishes.forEach((dish) {
      _sum += dish.calcium;
    });
    return _sum;
  }

  double get magnesium {
    double _sum = 0.0;
    dishes.forEach((dish) {
      _sum += dish.magnesium;
    });
    return _sum;
  }

  double get iron {
    double _sum = 0.0;
    dishes.forEach((dish) {
      _sum += dish.iron;
    });
    return _sum;
  }

  double get zinc {
    double _sum = 0.0;
    dishes.forEach((dish) {
      _sum += dish.zinc;
    });
    return _sum;
  }

  double get retinol {
    double _sum = 0.0;
    dishes.forEach((dish) {
      _sum += dish.retinol;
    });
    return _sum;
  }

  double get vitaminB1 {
    double _sum = 0.0;
    dishes.forEach((dish) {
      _sum += dish.vitaminB1;
    });
    return _sum;
  }

  double get vitaminB2 {
    double _sum = 0.0;
    dishes.forEach((dish) {
      _sum += dish.vitaminB2;
    });
    return _sum;
  }

  double get vitaminC {
    double _sum = 0.0;
    dishes.forEach((dish) {
      _sum += dish.vitaminC;
    });
    return _sum;
  }

  double get dietaryFiber {
    double _sum = 0.0;
    dishes.forEach((dish) {
      _sum += dish.dietaryFiber;
    });
    return _sum;
  }

  double get salt {
    double _sum = 0.0;
    dishes.forEach((dish) {
      _sum += dish.salt;
    });
    return _sum;
  }
}