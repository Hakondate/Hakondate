import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate/model/foodstuff/foodstuff_model.dart';
import 'package:hakondate/repository/local/sqlite/local_database.dart';

part 'dish_model.freezed.dart';
part 'dish_category.dart';

@freezed
class DishModel with _$DishModel {
  const factory DishModel({
    /// 料理名
    required String name,

    /// 食材
    required List<FoodstuffModel> foodstuffs,

    /// 分類
    DishCategory? category,
  }) = _DishModel;
  const DishModel._();

  factory DishModel.fromFirestore(Map<String, dynamic> data) {
    final List<FoodstuffModel> foodstuffs = (data['foodstuffs'] as List<dynamic>)
        .map(
          (dynamic foodstuff) => FoodstuffModel.fromFirestore(foodstuff as Map<String, dynamic>),
        )
        .toList();
    final DishCategory? category = switch (data['category'] as String?) {
      'main' => DishCategory.main,
      'side' => DishCategory.side,
      'drink' => DishCategory.drink,
      _ => null,
    };

    return DishModel(
      name: data['name'] as String,
      foodstuffs: foodstuffs,
      category: category,
    );
  }

  factory DishModel.fromDrift(DishesSchema schema, List<FoodstuffModel> foodstuffs) => DishModel(
        name: schema.name,
        foodstuffs: foodstuffs,
        category: switch (schema.category) {
          'main' => DishCategory.main,
          'side' => DishCategory.side,
          'drink' => DishCategory.drink,
          _ => null,
        },
      );

  Map<String, Object> toFirestore() => <String, Object>{
        'name': name,
        'foodstuffs': foodstuffs.map((FoodstuffModel foodstuff) => foodstuff.toFirestore()).toList(),
        if (category != null) 'category': category!.name,
      };

  DishesTableCompanion toDrift() => DishesTableCompanion(
        name: Value<String>(name),
        category: Value<String?>(category?.name),
      );

  double get energy {
    double sum = 0;
    for (final FoodstuffModel foodstuff in foodstuffs) {
      sum += foodstuff.nutrients.energy;
    }

    return sum;
  }

  double get protein {
    double sum = 0;
    for (final FoodstuffModel foodstuff in foodstuffs) {
      sum += foodstuff.nutrients.protein;
    }

    return sum;
  }

  double get lipid {
    double sum = 0;
    for (final FoodstuffModel foodstuff in foodstuffs) {
      sum += foodstuff.nutrients.lipid;
    }

    return sum;
  }

  double get carbohydrate {
    double sum = 0;
    for (final FoodstuffModel foodstuff in foodstuffs) {
      sum += foodstuff.nutrients.carbohydrate;
    }

    return sum;
  }

  double get sodium {
    double sum = 0;
    for (final FoodstuffModel foodstuff in foodstuffs) {
      sum += foodstuff.nutrients.sodium;
    }

    return sum;
  }

  double get calcium {
    double sum = 0;
    for (final FoodstuffModel foodstuff in foodstuffs) {
      sum += foodstuff.nutrients.calcium;
    }

    return sum;
  }

  double get magnesium {
    double sum = 0;
    for (final FoodstuffModel foodstuff in foodstuffs) {
      sum += foodstuff.nutrients.magnesium;
    }

    return sum;
  }

  double get iron {
    double sum = 0;
    for (final FoodstuffModel foodstuff in foodstuffs) {
      sum += foodstuff.nutrients.iron;
    }

    return sum;
  }

  double get zinc {
    double sum = 0;
    for (final FoodstuffModel foodstuff in foodstuffs) {
      sum += foodstuff.nutrients.zinc;
    }

    return sum;
  }

  double get retinol {
    double sum = 0;
    for (final FoodstuffModel foodstuff in foodstuffs) {
      sum += foodstuff.nutrients.retinol;
    }

    return sum;
  }

  double get vitaminB1 {
    double sum = 0;
    for (final FoodstuffModel foodstuff in foodstuffs) {
      sum += foodstuff.nutrients.vitaminB1;
    }

    return sum;
  }

  double get vitaminB2 {
    double sum = 0;
    for (final FoodstuffModel foodstuff in foodstuffs) {
      sum += foodstuff.nutrients.vitaminB2;
    }

    return sum;
  }

  double get vitaminC {
    double sum = 0;
    for (final FoodstuffModel foodstuff in foodstuffs) {
      sum += foodstuff.nutrients.vitaminC;
    }

    return sum;
  }

  double get dietaryFiber {
    double sum = 0;
    for (final FoodstuffModel foodstuff in foodstuffs) {
      sum += foodstuff.nutrients.dietaryFiber;
    }

    return sum;
  }

  double get salt {
    double sum = 0;
    for (final FoodstuffModel foodstuff in foodstuffs) {
      sum += foodstuff.nutrients.salt;
    }

    return sum;
  }

  double get vitamin {
    double sum = 0;
    for (final FoodstuffModel foodstuff in foodstuffs) {
      sum += foodstuff.nutrients.vitamin;
    }

    return sum;
  }

  double get mineral {
    double sum = 0;
    for (final FoodstuffModel foodstuff in foodstuffs) {
      sum += foodstuff.nutrients.mineral;
    }

    return sum;
  }
}
