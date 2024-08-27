import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate/model/nutrients/nutrients_model.dart';
import 'package:hakondate/view_model/multi_page/user/user_view_model.dart';

import 'package:multi_charts/multi_charts.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/model/nutrients/nutrient_unit.dart';

class NutrientsRadarChart extends ConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    final NutrientsModel? slns = ref.watch(userViewModelProvider).currentUser!.slns;
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
        'エネルギー\n${rawValues[0].toStringAsFixed(1)}${NutrientUnit.kcal.value}\n(${values[0].toStringAsFixed(1)}%)',
        'たんぱく質\n${rawValues[1].toStringAsFixed(1)}${NutrientUnit.gram.value}\n(${values[1].toStringAsFixed(1)}%)',
        'ビタミン\n${rawValues[2].toStringAsFixed(1)}${NutrientUnit.mGram.value}\n(${values[2].toStringAsFixed(1)}%)',
        'ミネラル\n${rawValues[3].toStringAsFixed(1)}${NutrientUnit.mGram.value}\n(${values[3].toStringAsFixed(1)}%)',
        '炭水化物\n${rawValues[4].toStringAsFixed(1)}${NutrientUnit.gram.value}\n(${values[4].toStringAsFixed(1)}%)',
        '脂質\n${rawValues[5].toStringAsFixed(1)}${NutrientUnit.gram.value}\n(${values[5].toStringAsFixed(1)}%)',
      ],
    );
  }
}
