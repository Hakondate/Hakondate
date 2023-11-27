import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/model/dictionary/dictionary_item_model.dart';
import 'package:hakondate/model/menu/menu_model.dart';
import 'package:hakondate/model/nutrients/nutrient_unit.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/state/daily/daily_state.dart';
import 'package:hakondate/util/exception/class_type_exception.dart';
import 'package:hakondate/view/component/graph/nutrients_radar_chart.dart';
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
          _recommendFoodExpansionTile(),
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
                return Column(
                  children: <Widget>[
                    _recommendFood(data.recommendDishes,0),
                    _recommendFood(data.recommendDishes,1),
                  ],
                );
              },
              orElse: () => const Text('loading'),
            ),
          ],
        );
      },
    );
  }
  
  Widget _recommendFood(Map<String, List<DictionaryItemModel>>? recommendDishes, int index){
    if (recommendDishes == null) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            '${_getNutrientJapaneseName(recommendDishes.entries.elementAt(index).key)}を多く含む食材',
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
  Widget _rankingContents(List<DictionaryItemModel> list, String key) {
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
                              _getNutrient(key, list[index]).toString() + _getNutrientUnit(key).value,
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
            onTap: () => routemaster.push('/home/dictionary_item/${list[index].id}'),
          );
        }),
      ),
    );
  }
  
  double _getNutrient(String key, DictionaryItemModel item){
      switch(key){
        case 'energy': 
          return item.nutrients.energy;
        case 'protein':
          return item.nutrients.protein;
        case 'vitamin':
          return item.nutrients.vitamin;
        case 'mineral':
          return item.nutrients.mineral;
        case 'carbohydrate':
          return item.nutrients.carbohydrate;
        case 'lipid':
          return item.nutrients.lipid;
        default:
          return 0;
      }
  }
  
  String _getNutrientJapaneseName(String key){
      switch(key){
        case 'energy':
          return 'エネルギー';
        case 'protein':
          return 'タンパク質';
        case 'vitamin':
          return 'ビタミン';
        case 'mineral':
          return 'ミネラル';
        case 'carbohydrate':
          return '炭水化物';
        case 'lipid':
          return '脂質';
      }
      throw Exception();
  }

  NutrientUnit _getNutrientUnit(String key){
    switch(key){
        case 'energy':
          return NutrientUnit.kcal;
        case 'protein':
          return NutrientUnit.gram;
        case 'vitamin':
          return NutrientUnit.mGram;
        case 'mineral':
          return NutrientUnit.mGram;
        case 'carbohydrate':
          return NutrientUnit.gram;
        case 'lipid':
          return NutrientUnit.gram;
    }
    throw Exception();
  }
}
