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

    return Stack(
      children: <Widget>[
        SizedBox(
          width: MediaQuery.of(context).size.width * 4 / 4,
          height: MediaQuery.of(context).size.width * 3 / 4,
          child: Stack(
            children: <Widget>[
              const Align(
                alignment: Alignment.topRight,
                child: Text(
                  '青エリア：摂取基準\n　　外枠：120%\n 1メモリ：${120 ~/ 5}%',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'エネルギー：${rawValues[0].toStringAsFixed(1)}${NutrientUnit.kcal.value}',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                ),
              ),
            ],
          ),
        ),
        // ),
        Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 3 / 4,
            height: MediaQuery.of(context).size.width * 3 / 4,
            child: Stack(
              children: <Widget>[
                RadarChart(
                  maxValue: maxValue,
                  chartRadiusFactor: size ?? 0.7,
                  textScaleFactor: 0.05,
                  animate: false,
                  fillColor: AppColor.brand.tertiary,
                  strokeColor: AppColor.ui.white,
                  values: const <double>[100, 100, 100, 100, 100, 100],
                  labels: const <String>['', '', '', '', '', ''],
                ),
                RadarChart(
                  maxValue: maxValue,
                  chartRadiusFactor: size ?? 0.7,
                  textScaleFactor: 0.05,
                  animate: false,
                  fillColor: color ?? AppColor.brand.secondary,
                  values: values.map((double value) => (value > maxValue) ? maxValue : value).toList(),
                  labels: <String>[
                    'エネルギー\n${values[0].toStringAsFixed(1)}%',
                    'たんぱく質\n${values[1].toStringAsFixed(1)}%',
                    'ビタミン\n${values[2].toStringAsFixed(1)}%',
                    'ミネラル\n${values[3].toStringAsFixed(1)}%',
                    '炭水化物\n${values[4].toStringAsFixed(1)}%',
                    '脂質\n${values[5].toStringAsFixed(1)}%',
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
