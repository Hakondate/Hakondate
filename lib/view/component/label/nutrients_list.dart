// ignore_for_file: argument_type_not_assignable, avoid_dynamic_calls

import 'package:flutter/material.dart';

import 'package:hakondate/model/nutrients/nutrient_unit.dart';
import 'package:hakondate/view/component/label/nutrient_label.dart';

/// MenuModelとDishModelそれぞれから栄養素を参照するため
/// [nutrients]はdynamic型を許容する
class NutrientsList extends StatelessWidget {
  const NutrientsList({
    required this.nutrients,
    this.backgroundColor,
    super.key,
  });

  final dynamic nutrients;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NutrientLabel(
          name: 'エネルギー',
          value: nutrients.energy,
          unit: NutrientUnit.kcal,
          backgroundColor: backgroundColor,
        ),
        NutrientLabel(
          name: 'タンパク質',
          value: nutrients.protein,
          unit: NutrientUnit.gram,
        ),
        NutrientLabel(
          name: '脂質',
          value: nutrients.lipid,
          unit: NutrientUnit.gram,
          backgroundColor: backgroundColor,
        ),
        NutrientLabel(
          name: '炭水化物',
          value: nutrients.carbohydrate,
          unit: NutrientUnit.gram,
        ),
        NutrientLabel(
          name: 'ナトリウム',
          value: nutrients.sodium,
          unit: NutrientUnit.mGram,
          backgroundColor: backgroundColor,
        ),
        NutrientLabel(
          name: 'カルシウム',
          value: nutrients.calcium,
          unit: NutrientUnit.mGram,
        ),
        NutrientLabel(
          name: 'マグネシウム',
          value: nutrients.magnesium,
          unit: NutrientUnit.mGram,
          backgroundColor: backgroundColor,
        ),
        NutrientLabel(
          name: '鉄分',
          value: nutrients.iron,
          unit: NutrientUnit.mGram,
        ),
        NutrientLabel(
          name: '亜鉛',
          value: nutrients.zinc,
          unit: NutrientUnit.mGram,
          backgroundColor: backgroundColor,
        ),
        NutrientLabel(
          name: 'レチノール',
          value: nutrients.retinol,
          unit: NutrientUnit.microGram,
        ),
        NutrientLabel(
          name: 'ビタミンB1',
          value: nutrients.vitaminB1,
          unit: NutrientUnit.mGram,
          backgroundColor: backgroundColor,
        ),
        NutrientLabel(
          name: 'ビタミンB2',
          value: nutrients.vitaminB2,
          unit: NutrientUnit.mGram,
        ),
        NutrientLabel(
          name: 'ビタミンC',
          value: nutrients.vitaminC,
          unit: NutrientUnit.mGram,
          backgroundColor: backgroundColor,
        ),
        NutrientLabel(
          name: '食物繊維',
          value: nutrients.dietaryFiber,
          unit: NutrientUnit.gram,
        ),
        NutrientLabel(
          name: '食塩相当量',
          value: nutrients.salt,
          unit: NutrientUnit.gram,
          backgroundColor: backgroundColor,
        ),
      ],
    );
  }
}
