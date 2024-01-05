import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/model/dictionary/dictionary_item_model.dart';
import 'package:hakondate/model/nutrients/five_major_nutrient.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/state/daily/daily_state.dart';
import 'package:hakondate/view_model/single_page/daily/daily_view_model.dart';
import 'package:hakondate/view_model/single_page/dictionary/dictionary_view_model.dart';

class RecommendedFoodStuffExpansionTile extends StatelessWidget {
  const RecommendedFoodStuffExpansionTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, _) {
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
                    if (data.recommendFoodStuffs.isNotEmpty) {
                      return Column(
                        children: <Widget>[
                          for (int i = 0; i < data.recommendFoodStuffs.length; i++)
                            _recommendFoodWidget(
                              data.recommendFoodStuffs,
                              i,
                            ),
                        ],
                      );
                    } else {
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

  Widget _recommendFoodWidget(
    Map<FiveMajorNutrient, List<DictionaryItemModel>> recommendFoodStuffs,
    int index,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: PaddingSize.normal),
          child: Text(
            '${recommendFoodStuffs.entries.elementAt(index).key.japaneseName}を多く含む食材',
            style: const TextStyle(fontSize: FontSize.heading),
          ),
        ),
        _rankingContents(
          recommendFoodStuffs.entries.elementAt(index),
        ),
      ],
    );
  }

  /* 1食品群のランキング */
  Widget _rankingContents(
    MapEntry<FiveMajorNutrient, List<DictionaryItemModel>> nutrientMap,
  ) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, _) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: PaddingSize.minimum),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List<Widget>.generate(nutrientMap.value.length * 2, (int i) {
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
                              fontSize: FontSize.heading,
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
                              nutrientMap.value[index].name,
                              style: const TextStyle(
                                fontSize: FontSize.subheading,
                              ),
                            ),
                            /* 数値 */
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  ((nutrientMap.value[index].nutrients.getNutrient(nutrientMap.key) * 10).ceil() / 10)
                                          .toString() +
                                      nutrientMap.key.unit.value,
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
                onTap: () async {
                  await ref.read(dictionaryViewModelProvider.notifier).selectItem(nutrientMap.value[index].id);
                  routemaster.push(
                    '/home/dictionary_item/${nutrientMap.value[index].id}',
                  );
                },
              );
            }),
          ),
        );
      },
    );
  }
}
