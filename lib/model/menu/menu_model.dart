import 'package:json_annotation/json_annotation.dart';

import 'package:hakondate_v2/model/dish/dish_model.dart';

part 'menu_model.g.dart';

@JsonSerializable()
class MenuModel {
  MenuModel({
    required this.id,
    required this.day,
    required this.schoolId,
    required this.dishes,
    this.event
  });

  factory MenuModel.fromJson(Map<String, dynamic> json) =>
      _$MenuModelFromJson(json);
  Map<String, dynamic> toJson() => _$MenuModelToJson(this);

  final int id;                 // Day: 2021/06/30 & ScID: 1 → 2021063001
  final DateTime day;           // 日付
  final int schoolId;           // 学校
  final List<DishModel> dishes; // 料理
  final String? event;          // イベント

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