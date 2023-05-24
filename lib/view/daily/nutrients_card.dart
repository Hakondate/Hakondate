import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate/view/component/graph/nutrients_radar_chart.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/model/menu/menu_model.dart';
import 'package:hakondate/util/exception/class_type_exception.dart';
import 'package:hakondate/view/component/label/nutrients_list.dart';
import 'package:hakondate/view_model/multi_page/user_view_model.dart';
import 'package:hakondate/view_model/single_page/daily_view_model.dart';

class NutrientsCard extends StatelessWidget {
  const NutrientsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Column(
        children: <Widget>[
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
        const double graphMaxValue = 120;
        return SizedBox(
          width: MediaQuery.of(context).size.width * 3/4,
          height: MediaQuery.of(context).size.width * 3/4,
          child: NutrientsRadarChart(
            values: ref.read(dailyProvider.notifier).getGraphValues(
              slns: ref.watch(userProvider).currentUser!.slns,
              graphMaxValue: graphMaxValue,
            ),
            rowValues: ref.read(dailyProvider.notifier).getGraphRowValues(),
            maxValue: graphMaxValue,
          ),
        );
      },
    );
  }

  Widget _nutrientsExpansionTile() {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, _) {
        final MenuModel menu = ref.watch(dailyProvider).menu;

        if (menu is! LunchesDayMenuModel) {
          throw const ClassTypeException("'menu' is not 'LunchesDayMenuModel'");
        }

        return ExpansionTile(
          title: const Text(
            '詳細な栄養値',
            style: TextStyle(
              fontSize: FontSize.subheading,
            ),
          ),
          onExpansionChanged: (bool isExpanded) => !isExpanded,
          textColor: AppColor.brand.secondary,
          iconColor: AppColor.brand.secondary,
          children: <Widget>[
            NutrientsList(
              nutrients: menu,
              backgroundColor: AppColor.ui.secondaryUltraLight,
            ),
          ],
        );
      },
    );
  }
}
