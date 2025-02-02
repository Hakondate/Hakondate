import 'package:flutter/material.dart';

import 'package:hakondate/constant/size.dart';
import 'package:hakondate/model/nutrients/nutrient_unit.dart';

class NutrientLabel extends StatelessWidget {
  const NutrientLabel({
    required this.name,
    required this.value,
    required this.unit,
    this.backgroundColor,
    super.key,
  });

  final String name;
  final double value;
  final NutrientUnit unit;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    double labelHeight;
    if (name.length > 13) {
      labelHeight = 45.0;
    } else {
      labelHeight = 30.0;
    }

    return Container(
      height: labelHeight,
      color: backgroundColor,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(),
          ),
          Expanded(
            flex: 7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontSize: FontSize.body,
                    ),
                  ),
                ),
                const SizedBox(width: 18),
                Text(
                  value.toStringAsFixed(2),
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    fontSize: FontSize.body,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              '  ${unit.value}',
              style: const TextStyle(
                fontSize: FontSize.body,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
