import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multi_charts/multi_charts.dart';

import 'package:hakondate_v2/unit/size.dart';
import 'package:hakondate_v2/view_model/single_page/home_view_model.dart';

class NutrientsCard extends StatelessWidget {
  const NutrientsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, _) {
        final store = ref.watch(homeProvider);

        return Card(
          child: Column(
            children: [
              Image.asset('assets/images/label/nutrientsLabel.png'),
              SizedBox(
                width: MediaQuery.of(context).size.width * 3/4,
                height: MediaQuery.of(context).size.width * 3/4,
                child: RadarChart(
                  values: const [
                    100,
                    10,
                    100,
                  ],
                  labels: const [
                    'hoge',
                    'fuga',
                    'foo',
                  ],
                  maxValue: 120.0,
                  chartRadiusFactor: 0.7,
                  animate: false,
                  fillColor: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
