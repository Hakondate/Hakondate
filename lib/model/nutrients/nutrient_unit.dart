enum NutrientUnit {
  kcal(value: 'kcal'),
  gram(value: 'g'),
  mGram(value: 'mg'),
  microGram(value: 'μg');

  const NutrientUnit({required this.value});
  final String value;
}
