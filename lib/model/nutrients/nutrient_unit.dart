enum NutrientUnit {
  kcal,
  gram,
  mGram,
  microGram,
}

extension NutrientUnitExtension on NutrientUnit {
  String get unitText {
    switch (this) {
      case NutrientUnit.kcal:
        return 'kcal';
      case NutrientUnit.gram:
        return 'g';
      case NutrientUnit.mGram:
        return 'mg';
      case NutrientUnit.microGram:
        return 'μg';
    }
  }
}
