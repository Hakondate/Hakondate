import 'package:flutter/material.dart';

import 'package:multi_charts/multi_charts.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/model/nutrients/nutrient_unit.dart';

class NutrientsRadarChart extends StatelessWidget {
  const NutrientsRadarChart({
    required this.values,
    required this.rawValues,
    required this.maxValue,
    this.color,
    this.size,
    super.key,
  });

  final List<double> values;
  final List<double> rawValues;
  final double maxValue;
  final Color? color;
  final double? size;

  @override
  Widget build(BuildContext context) {
    if (values.length < 6) return Container();

    return RadarChart(
      maxValue: maxValue,
      chartRadiusFactor: size ?? 0.7,
      textScaleFactor: 0.05,
      animate: false,
      fillColor: color ?? AppColor.brand.secondary,
      values: values
          .map(
            (double value) => (value > maxValue) ? maxValue : value,
          )
          .toList(),
      labels: <String>[
        'エネルギー\n${rawValues[0].toStringAsFixed(1)}${NutrientUnit.kcal.value}',
        'たんぱく質\n${rawValues[1].toStringAsFixed(1)}${NutrientUnit.gram.value}',
        'ビタミン\n${rawValues[2].toStringAsFixed(1)}${NutrientUnit.mGram.value}',
        'ミネラル\n${rawValues[3].toStringAsFixed(1)}${NutrientUnit.mGram.value}',
        '炭水化物\n${rawValues[4].toStringAsFixed(1)}${NutrientUnit.gram.value}',
        '脂質\n${rawValues[5].toStringAsFixed(1)}${NutrientUnit.gram.value}',
      ],
    );
  }
}
