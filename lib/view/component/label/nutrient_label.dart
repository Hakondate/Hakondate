import 'package:flutter/material.dart';

import 'package:hakondate/constant/size.dart';
import 'package:hakondate/model/nutrients/nutrient_unit.dart';

class NutrientLabel extends StatelessWidget {
  final String name;
  final double value;
  final NutrientUnit unit;
  final Color? backgroundColor;

  const NutrientLabel({
    Key? key,
    required this.name,
    required this.value,
    required this.unit,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.0,
      color: backgroundColor,
      child: Row(
        children: [
          Expanded(
            flex: 1,
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
              '  ' + unit.unitText,
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
