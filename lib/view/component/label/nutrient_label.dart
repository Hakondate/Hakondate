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
    return Container(
      height: 35,
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
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: FontSize.body,
                  ),
                ),
                Text(
                  value.toStringAsFixed(2),
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
