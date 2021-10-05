import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate_v2/model/foodstuff/foodstuff_model.dart';

part 'dish_model.freezed.dart';

@freezed
class DishModel with _$DishModel {
  const DishModel._();
  const factory DishModel({
    required String name,                     // 料理名
    required List<FoodstuffModel> foodstuffs, // 食材
    String? category,                         // 分類
  }) = _DishModel;

  double get energy {
    double _sum = 0.0;
    for (var foodstuff in foodstuffs) {
      _sum += foodstuff.nutrients.energy;
    }

    return _sum;
  }

  double get protein {
    double _sum = 0.0;
    for (var foodstuff in foodstuffs) {
      _sum += foodstuff.nutrients.protein;
    }

    return _sum;
  }

  double get lipid {
    double _sum = 0.0;
    for (var foodstuff in foodstuffs) {
      _sum += foodstuff.nutrients.lipid;
    }

    return _sum;
  }

  double get carbohydrate {
    double _sum = 0.0;
    for (var foodstuff in foodstuffs) {
      _sum += foodstuff.nutrients.carbohydrate;
    }

    return _sum;
  }

  double get sodium {
    double _sum = 0.0;
    for (var foodstuff in foodstuffs) {
      _sum += foodstuff.nutrients.sodium;
    }

    return _sum;
  }

  double get calcium {
    double _sum = 0.0;
    for (var foodstuff in foodstuffs) {
      _sum += foodstuff.nutrients.calcium;
    }

    return _sum;
  }

  double get magnesium {
    double _sum = 0.0;
    for (var foodstuff in foodstuffs) {
      _sum += foodstuff.nutrients.magnesium;
    }

    return _sum;
  }

  double get iron {
    double _sum = 0.0;
    for (var foodstuff in foodstuffs) {
      _sum += foodstuff.nutrients.iron;
    }

    return _sum;
  }

  double get zinc {
    double _sum = 0.0;
    for (var foodstuff in foodstuffs) {
      _sum += foodstuff.nutrients.zinc;
    }

    return _sum;
  }

  double get retinol {
    double _sum = 0.0;
    for (var foodstuff in foodstuffs) {
      _sum += foodstuff.nutrients.retinol;
    }

    return _sum;
  }

  double get vitaminB1 {
    double _sum = 0.0;
    for (var foodstuff in foodstuffs) {
      _sum += foodstuff.nutrients.vitaminB1;
    }

    return _sum;
  }

  double get vitaminB2 {
    double _sum = 0.0;
    for (var foodstuff in foodstuffs) {
      _sum += foodstuff.nutrients.vitaminB2;
    }

    return _sum;
  }

  double get vitaminC {
    double _sum = 0.0;
    for (var foodstuff in foodstuffs) {
      _sum += foodstuff.nutrients.vitaminC;
    }

    return _sum;
  }

  double get dietaryFiber {
    double _sum = 0.0;
    for (var foodstuff in foodstuffs) {
      _sum += foodstuff.nutrients.dietaryFiber;
    }

    return _sum;
  }

  double get salt {
    double _sum = 0.0;
    for (var foodstuff in foodstuffs) {
      _sum += foodstuff.nutrients.salt;
    }

    return _sum;
  }
}
