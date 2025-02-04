import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:hakondate/model/dictionary/dictionary_item_model.dart';
import 'package:hakondate/model/nutrients/five_major_nutrient.dart';
import 'package:hakondate/repository/local/sqlite/dictionary_items/dictionary_items_local_repository.dart';
import 'package:hakondate/view_model/single_page/daily/daily_graph_view_model.dart';

part 'daily_recommend_foodstuffs_view_model.g.dart';

@riverpod
//　説明
// ignore: deprecated_member_use_from_same_package
Future<Map<FiveMajorNutrient, List<DictionaryItemModel>>> recommendFoodstuffs(RecommendFoodstuffsRef ref) async {
  final AsyncValue<List<double>> nutrientsPercentage = ref.watch(graphValuesProvider);

  return nutrientsPercentage.maybeWhen(
    data: (List<double> nutrientsPercentage) async {
      final Map<FiveMajorNutrient, double> nutrientsMap = <FiveMajorNutrient, double>{}..addAll(<FiveMajorNutrient, double>{
          FiveMajorNutrient.protein: nutrientsPercentage[1],
          FiveMajorNutrient.vitamin: nutrientsPercentage[2],
          FiveMajorNutrient.mineral: nutrientsPercentage[3],
          FiveMajorNutrient.carbohydrate: nutrientsPercentage[4],
          FiveMajorNutrient.lipid: nutrientsPercentage[5],
        });
      MapEntry<FiveMajorNutrient, double> minValue = nutrientsMap.entries.elementAt(0);
      MapEntry<FiveMajorNutrient, double> secondMinValue = nutrientsMap.entries.elementAt(1);
      MapEntry<FiveMajorNutrient, double> temp;

      for (int i = 1; i < nutrientsMap.length; i++) {
        temp = nutrientsMap.entries.elementAt(i);
        if (minValue.value > temp.value) {
          secondMinValue = minValue;
          minValue = temp;
        } else if (secondMinValue.value > temp.value) {
          secondMinValue = temp;
        }
      }

      final Map<FiveMajorNutrient, List<DictionaryItemModel>> recommendFoodstuffs = <FiveMajorNutrient, List<DictionaryItemModel>>{
        minValue.key: await ref.read(dictionaryItemsLocalRepositoryProvider).getRanking(
              nutrient: minValue.key.name,
            ),
        secondMinValue.key: await ref.read(dictionaryItemsLocalRepositoryProvider).getRanking(
              nutrient: secondMinValue.key.name,
            ),
      };

      return recommendFoodstuffs;
    },
    orElse: () => <FiveMajorNutrient, List<DictionaryItemModel>>{},
  );
}
