import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/model/dictionary/dictionary_item_model.dart';
import 'package:hakondate/model/nutrients/five_major_nutrient.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/view_model/single_page/daily/daily_recommend_foodstuffs_view_model.dart';
import 'package:hakondate/view_model/single_page/dictionary/dictionary_view_model.dart';

class RecommendedFoodStuffExpansionTile extends StatelessWidget {
  const RecommendedFoodStuffExpansionTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, _) {
        return Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
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
              ref.watch(recommendFoodstuffsProvider).maybeWhen(
                    data: (Map<FiveMajorNutrient, List<DictionaryItemModel>> recommendFoodStuffs) {
                      if (recommendFoodStuffs.isNotEmpty) {
                        return Column(
                          children: <Widget>[
                            for (int i = 0; i < recommendFoodStuffs.length; i++)
                              _recommendFoodWidget(
                                recommendFoodStuffs,
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
          ),
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
          child: SizedBox(
            height: PaddingSize.buttonHorizontal * 2,
            child: Row(
              children: <Widget>[
                Text(
                  recommendFoodStuffs.entries.elementAt(index).key.japaneseName,
                  style: TextStyle(
                    fontSize: FontSize.heading,
                    color: AppColor.brand.secondary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'を多く含む食材',
                  style: TextStyle(
                    fontSize: FontSize.label,
                    fontWeight: FontWeight.bold,
                    color: AppColor.text.darkgray,
                  ),
                ),
                const SizedBox(
                  width: PaddingSize.minimum,
                ),
                const Text(
                  '(100g当たり)',
                  style: TextStyle(
                    fontSize: FontSize.annotation,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
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
        return Column(
          children: List<Widget>.generate(nutrientMap.value.length, (int i) {
            return GestureDetector(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: PaddingSize.minimum,
                  horizontal: PaddingSize.normal,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    /* 料理名 */
                    Flexible(
                      child: SizedBox(
                        height: PaddingSize.buttonVerticalLarge,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: PaddingSize.minimum,
                            ),
                            child: Text(
                              nutrientMap.value[i].name,
                              maxLines: 2,
                              style: const TextStyle(
                                fontSize: FontSize.body,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      '${(nutrientMap.value[i].nutrients.getNutrient(nutrientMap.key) * 10).ceil() / 10} ${nutrientMap.key.unit.value}',
                      style: const TextStyle(
                        fontSize: FontSize.subheading,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () async {
                await ref.read(dictionaryViewModelProvider.notifier).selectItem(nutrientMap.value[i].id);
                routemaster.push(
                  '/home/dictionary_item/${nutrientMap.value[i].id}',
                );
              },
            );
          }),
        );
      },
    );
  }
}
