import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multi_charts/multi_charts.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/model/menu/menu_model.dart';
import 'package:hakondate/state/daily/daily_state.dart';
import 'package:hakondate/util/exception/class_type_exception.dart';
import 'package:hakondate/view/component/label/nutrients_list.dart';
import 'package:hakondate/view_model/multi_page/user/user_view_model.dart';
import 'package:hakondate/view_model/single_page/daily/daily_view_model.dart';

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
          child: RadarChart(
            values: ref.read(dailyViewModelProvider.notifier).getGraphValues(
              slns: ref.watch(userViewModelProvider).currentUser!.slns,
              graphMaxValue: graphMaxValue,
            ),
            labels: const <String>[
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
            fillColor: AppColor.brand.secondary,
          ),
        );
      },
    );
  }

  Widget _nutrientsExpansionTile() {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, _) {
        return ref.watch(dailyViewModelProvider).maybeWhen(
          data: (DailyState state) {
            final MenuModel menu = state.menu;

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
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
