import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multi_charts/multi_charts.dart';

import 'package:hakondate_v2/unit/size.dart';
import 'package:hakondate_v2/view/component/nutrients_list.dart';
import 'package:hakondate_v2/view_model/single_page/daily_view_model.dart';
import 'package:hakondate_v2/view_model/multi_page/user_view_model.dart';

class NutrientsCard extends StatelessWidget {
  const NutrientsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset('assets/images/label/nutrientsLabel.png'),
          _nutrientsGraph(),
          _nutrientsExpansionTile(),
        ],
      ),
    );
  }

  Widget _nutrientsGraph() {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, _) {
        const double graphMaxValue = 120.0;
        return SizedBox(
          width: MediaQuery.of(context).size.width * 3/4,
          height: MediaQuery.of(context).size.width * 3/4,
          child: RadarChart(
            values: ref.read(dailyProvider.notifier).getGraphValues(
              slns: ref.watch(userProvider).currentUser!.slns,
              graphMaxValue: graphMaxValue,
            ),
            labels: const [
              'エネルギー',
              'たんぱく質',
              'ビタミン',
              'ミネラル',
              '炭水化物',
              '脂質',
            ],
            maxValue: graphMaxValue,
            chartRadiusFactor: 0.7,
            textScaleFactor: 0.05,
            animate: false,
            fillColor: Theme.of(context).colorScheme.secondary,
          ),
        );
      },
    );
  }

  Widget _nutrientsExpansionTile() {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, _) {
        return ExpansionTile(
          title: const Text(
            '詳細な栄養値',
            style: TextStyle(
              fontSize: FontSize.subheading,
            ),
          ),
          children: [
            NutrientsList(
              nutrients: ref.watch(dailyProvider).menu,
              backgroundColor: Theme.of(context).colorScheme.secondaryVariant,
            ),
          ],
          onExpansionChanged: (bool isExpanded) => !isExpanded,
          textColor: Theme.of(context).colorScheme.secondary,
          iconColor: Theme.of(context).colorScheme.secondary,
        );
      },
    );
  }
}
