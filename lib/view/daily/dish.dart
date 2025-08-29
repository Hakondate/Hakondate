import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/model/dish/dish_model.dart';
import 'package:hakondate/model/foodstuff/foodstuff_model.dart';
import 'package:hakondate/model/nutrients/nutrient_unit.dart';
import 'package:hakondate/model/nutrients/nutrients_model.dart';
import 'package:hakondate/state/daily/daily_state.dart';
import 'package:hakondate/view/component/label/nutrient_label.dart';
import 'package:hakondate/view/component/label/nutrients_list.dart';
import 'package:hakondate/view/component/graph/dictionary_nutrients_radar_chart.dart';
import 'package:hakondate/view_model/single_page/daily/daily_view_model.dart';
import 'package:hakondate/view_model/multi_page/user/user_view_model.dart';
import 'package:hakondate/util/nutrients/radar_chart_values.dart';

class Dish extends ConsumerWidget {
  const Dish({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<DailyState> state = ref.watch(dailyViewModelProvider);

    return state.maybeWhen(
      data: (DailyState data) {
        final DishModel? dish = data.selectedDish;

        if (dish == null) {
          return const Scaffold();
        }

        return Scaffold(
          appBar: AppBar(
            title: Text(dish.name),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/images/label/foodLabel.png'),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: dish.foodstuffs.length,
                        itemBuilder: (BuildContext context, int index) {
                          final FoodstuffModel foodstuff = dish.foodstuffs[index];

                          return NutrientLabel(
                            name: foodstuff.name,
                            value: foodstuff.quantity.gram,
                            unit: NutrientUnit.gram,
                            backgroundColor: (index.isEven) ? null : AppColor.ui.secondaryUltraLight,
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/images/label/nutrientsLabel.png'),
                      // レーダーチャート（実数ラベル、SLNS比で正規化）
                      Consumer(
                        builder: (BuildContext context, WidgetRef ref, _) {
                          final NutrientsModel? slns = ref.watch(userViewModelProvider).currentUser?.slns;
                          if (slns == null) return const SizedBox.shrink();

                          const double maxValue = 120;
                          final List<double> values = computeSixAxisPercentFromSlns(
                            energy: dish.energy,
                            protein: dish.protein,
                            retinol: dish.retinol,
                            vitaminB1: dish.vitaminB1,
                            vitaminB2: dish.vitaminB2,
                            vitaminC: dish.vitaminC,
                            calcium: dish.calcium,
                            magnesium: dish.magnesium,
                            iron: dish.iron,
                            zinc: dish.zinc,
                            carbohydrate: dish.carbohydrate,
                            lipid: dish.lipid,
                            slns: slns,
                          );

                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: DictionaryNutrientsRadarChart(
                              values: values,
                              rawValues: sixAxisRaw(
                                energy: dish.energy,
                                protein: dish.protein,
                                vitamin: dish.vitamin,
                                mineral: dish.mineral,
                                carbohydrate: dish.carbohydrate,
                                lipid: dish.lipid,
                              ),
                              maxValue: maxValue,
                              size: 0.7,
                            ),
                          );
                        },
                      ),
                      NutrientsList(
                        nutrients: dish,
                        backgroundColor: AppColor.ui.secondaryUltraLight,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
      orElse: () => const Scaffold(),
    );
  }
}
