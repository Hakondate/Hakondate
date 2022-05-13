enum NutrientUnit {
  kcal(value: 'kcal'),
  gram(value: 'g'),
  mGram(value: 'mg'),
  microGram(value: 'μg');

  const NutrientUnit({required this.value});
  final String value;
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
