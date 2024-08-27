import 'package:flutter/material.dart';
import 'dart:math';
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
        RadarChart(
          maxValue: maxValue,
          chartRadiusFactor: size ?? 0.7,
          textScaleFactor: 0.05,
          animate: false,
          fillColor: AppColor.brand.tertiary,
          strokeColor: const Color.fromARGB(0, 255, 255, 255),
          values: const <double>[100, 100, 100, 100, 100, 100],
          labels: const <String>['', '', '', '', '', ''],
        ),
        RadarChart(
          maxValue: maxValue,
          chartRadiusFactor: size ?? 0.7,
          textScaleFactor: 0.05,
          animate: false,
          fillColor: color ?? AppColor.brand.secondary,
          values: values,
          labels: <String>[
            'エネルギー\n${rawValues[0].toStringAsFixed(1)}${NutrientUnit.kcal.value}\n(${values[0].toStringAsFixed(1)}%)',
            'たんぱく質\n${rawValues[1].toStringAsFixed(1)}${NutrientUnit.gram.value}\n(${values[1].toStringAsFixed(1)}%)',
            'ビタミン\n${rawValues[2].toStringAsFixed(1)}${NutrientUnit.mGram.value}\n(${values[2].toStringAsFixed(1)}%)',
            'ミネラル\n${rawValues[3].toStringAsFixed(1)}${NutrientUnit.mGram.value}\n(${values[3].toStringAsFixed(1)}%)',
            '炭水化物\n${rawValues[4].toStringAsFixed(1)}${NutrientUnit.gram.value}\n(${values[4].toStringAsFixed(1)}%)',
            '脂質\n${rawValues[5].toStringAsFixed(1)}${NutrientUnit.gram.value}\n(${values[5].toStringAsFixed(1)}%)',
          ],
        ),
      ],
    );
  }
}
// import 'package:flutter/material.dart';
// import 'dart:math';
// import 'package:multi_charts/multi_charts.dart';

// import 'package:hakondate/constant/app_color.dart';
// import 'package:hakondate/model/nutrients/nutrient_unit.dart';

// class NutrientsRadarChart extends StatelessWidget {
//   const NutrientsRadarChart({
//     required this.values,
//     required this.rawValues,
//     required this.maxValue,
//     this.color,
//     this.size,
//     super.key,
//   });

//   final List<double> values;
//   final List<double> rawValues;
//   final double maxValue;
//   final Color? color;
//   final double? size;

//   @override
//   Widget build(BuildContext context) {
//     if (values.length < 6) return Container();

//     return Stack(
//       children: <Widget>[
//         Align(
//           alignment: Alignment.topRight,
//           child: Text('外枠：${_calcMaxValue().toStringAsFixed(0)}%\n青エリア：100%の基準'),
//         ),
//         RadarChart(
//           maxValue: _calcMaxValue(),
//           chartRadiusFactor: size ?? 0.7,
//           textScaleFactor: 0.05,
//           animate: false,
//           fillColor: AppColor.brand.tertiary,
//           strokeColor: Color.fromARGB(0, 255, 255, 255),
//           values: const <double>[100, 100, 100, 100, 100, 100],
//           labels: const <String>['', '', '', '', '', ''],
//         ),
//         RadarChart(
//           maxValue: _calcMaxValue(),
//           chartRadiusFactor: size ?? 0.7,
//           textScaleFactor: 0.05,
//           animate: false,
//           fillColor: color ?? AppColor.brand.secondary,
//           values: values,
//           labels: <String>[
//             'エネルギー\n${rawValues[0].toStringAsFixed(1)}${NutrientUnit.kcal.value}\n(${values[0].toStringAsFixed(1)}%)',
//             'たんぱく質\n${rawValues[1].toStringAsFixed(1)}${NutrientUnit.gram.value}\n(${values[1].toStringAsFixed(1)}%)',
//             'ビタミン\n${rawValues[2].toStringAsFixed(1)}${NutrientUnit.mGram.value}\n(${values[2].toStringAsFixed(1)}%)',
//             'ミネラル\n${rawValues[3].toStringAsFixed(1)}${NutrientUnit.mGram.value}\n(${values[3].toStringAsFixed(1)}%)',
//             '炭水化物\n${rawValues[4].toStringAsFixed(1)}${NutrientUnit.gram.value}\n(${values[4].toStringAsFixed(1)}%)',
//             '脂質\n${rawValues[5].toStringAsFixed(1)}${NutrientUnit.gram.value}\n(${values[5].toStringAsFixed(1)}%)',
//           ],
//         ),
//       ],
//     );
//   }

//   double _calcMaxValue() {
//     int i = 5;
//     final double maxValueInValues = values.reduce(max);
//     while (true) {
//       if (maxValueInValues < 20 * i) {
//         return 20.0 * i;
//       }
//       i++;
//     }
//   }
// }
