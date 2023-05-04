import 'package:flutter/material.dart';
import 'package:hakondate/constant/app_color.dart';

import 'package:multi_charts/multi_charts.dart';

class NutrientsRadarChart extends StatelessWidget {
  const NutrientsRadarChart({
    required this.values,
    required this.maxValue,
    this.color,
    this.size,
    super.key,
  });

  final List<double> values;
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
      values: values.map((double value) => (value > maxValue)
          ? maxValue
          : value,
      ).toList(),
      labels: const <String>[
        'エネルギー',
        'たんぱく質',
        'ビタミン',
        'ミネラル',
        '炭水化物',
        '脂質',
      ],
    );
  }
}
