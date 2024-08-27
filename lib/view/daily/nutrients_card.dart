import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/model/menu/menu_model.dart';
import 'package:hakondate/state/daily/daily_state.dart';
import 'package:hakondate/util/exception/class_type_exception.dart';
import 'package:hakondate/view/component/graph/nutrients_radar_chart.dart';
import 'package:hakondate/view/component/label/nutrients_list.dart';
import 'package:hakondate/view/dictionary/recommend_foodstuff.dart';
import 'package:hakondate/view_model/single_page/daily/daily_graph_view_model.dart';
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
          const RecommendedFoodStuffExpansionTile(),
          _nutrientsExpansionTile(),
        ],
      ),
    );
  }

  Widget _nutrientsGraph() {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, _) {
        final AsyncValue<List<double>> graphValues = ref.watch(graphValuesProvider);

        return graphValues.when(
          data: (List<double> graphValue) {
            double graphMaxValue() {
              int i = 5;
              final double maxValueInValues = graphValue.reduce(max);
              while (true) {
                if (maxValueInValues < 20 * i) {
                  return 20.0 * i;
                }
                i++;
              }
            }

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Column(
                children: <Widget>[
                  Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.width * 3 / 4,
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              '青エリア：摂取基準\n外枠　　：${graphMaxValue().toStringAsFixed(0)}%',
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.black38,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 3 / 4,
                        height: MediaQuery.of(context).size.width * 3 / 4,
                        child: NutrientsRadarChart(
                          values: graphValue,
                          rawValues: ref.watch(graphRawValuesProvider),
                          maxValue: graphMaxValue(),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      '※不足している栄養素がある場合がありますが、\n足りない栄養素はご家庭で補ってください。',
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          loading: () => const CircularProgressIndicator(),
          error: (Object error, StackTrace? stackTrace) {
            return Text('Error: $error');
          },
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

                return Theme(
                  data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: const Text(
                      '詳細な栄養値',
                      style: TextStyle(
                        fontSize: FontSize.heading,
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
                  ),
                );
              },
              orElse: () => const SizedBox.shrink(),
            );
      },
    );
  }
}
