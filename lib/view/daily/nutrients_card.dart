import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/model/dictionary/dictionary_item_model.dart';
import 'package:hakondate/model/menu/menu_model.dart';
import 'package:hakondate/model/nutrients/nutrient_major.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/state/daily/daily_state.dart';
import 'package:hakondate/util/exception/class_type_exception.dart';
import 'package:hakondate/view/component/graph/nutrients_radar_chart.dart';
import 'package:hakondate/view/component/label/nutrients_list.dart';
import 'package:hakondate/view_model/multi_page/user/user_view_model.dart';
import 'package:hakondate/view_model/single_page/daily/daily_view_model.dart';
import 'package:hakondate/view_model/single_page/dictionary/dictionary_view_model.dart';

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
          _recommendFoodExpansionTile(),
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
            values: ref.read(dailyViewModelProvider.notifier).getGraphValues(
              slns: ref.watch(userViewModelProvider).currentUser!.slns,
              graphMaxValue: graphMaxValue,
            ),
            rowValues: ref.read(dailyViewModelProvider.notifier).getGraphRowValues(),
            maxValue: graphMaxValue,
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
            );
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget _recommendFoodExpansionTile() {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, _){
        return ExpansionTile(
          title: const Text(
            'おすすめ食材',
            style: TextStyle(
              fontSize: FontSize.heading,
            ),
          ),
          onExpansionChanged: (bool value) => !value,
          textColor: AppColor.brand.secondary,
          iconColor: AppColor.brand.secondary,
          children: <Widget>[
           ref.watch(dailyViewModelProvider).maybeWhen(
              data: (DailyState data) {
                if(data.recommendDishes.isNotEmpty){
                  return Column(
                    children: <Widget>[
                      _recommendFoodWidget(data.recommendDishes,0),
                      _recommendFoodWidget(data.recommendDishes,1),
                    ],
                  );
                }else{
                  return const SizedBox.shrink();
                }
              },
              orElse: () => const SizedBox.shrink(),
            ),
          ],
        );
      },
    );
  }
  
  Widget _recommendFoodWidget(Map<MajorNutrient, List<DictionaryItemModel>> recommendDishes, int index){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            '${recommendDishes.entries.elementAt(index).key.japaneseName}を多く含む食材',
            style: const TextStyle(fontSize: 25),
          ),
        ),
        _rankingContents(
          recommendDishes.entries.elementAt(index).value,
          recommendDishes.entries.elementAt(index).key,
        ),
      ],
    ); 
  }

  /* 1食品群のランキング */
  Widget _rankingContents(List<DictionaryItemModel> list, MajorNutrient key) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? widet) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List<Widget>.generate(list.length * 2, (int i) {
              if (i.isOdd) return const Divider();
              final int index = i ~/ 2;
              return GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    children: <Widget>[
                      /* 順位 */
                      Expanded(
                        flex: 2,
                        child: Center(
                          child: Text(
                            '${index + 1}.',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 8,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            /* 料理名 */
                            Text(
                              list[index].name,
                              style: const TextStyle(
                                fontSize: FontSize.subheading,
                              ),
                            ),
                            /* 数値 */
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  key.getNutrient(list[index]).toString() + key.unit.value,
                                  style: const TextStyle(
                                    fontSize: FontSize.subheading,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Text(
                                  '/100g',
                                  style: TextStyle(
                                  fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  ref.read(dictionaryViewModelProvider.notifier).selectItem(list[index].id);
                  routemaster.push('/home/dictionary_item/${list[index].id}');
                },           
              );
            }),
          ),
        );
      },
    );
  }
}
