import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/model/dish/dish_model.dart';
import 'package:hakondate/model/foodstuff/foodstuff_model.dart';
import 'package:hakondate/model/nutrients/nutrient_unit.dart';
import 'package:hakondate/model/nutrients/nutrients_model.dart';
import 'package:hakondate/state/daily/daily_state.dart';
import 'package:hakondate/util/nutrients/radar_chart_values.dart';
import 'package:hakondate/view/component/graph/dictionary_nutrients_radar_chart.dart';
import 'package:hakondate/view/component/label/nutrient_label.dart';
import 'package:hakondate/view/component/label/nutrients_list.dart';
import 'package:hakondate/view_model/multi_page/user/user_view_model.dart';
import 'package:hakondate/view_model/single_page/daily/daily_view_model.dart';

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
                          final double energy = dish.energy;
                          final double protein = dish.protein;
                          final double retinol = dish.retinol;
                          final double vitaminB1 = dish.vitaminB1;
                          final double vitaminB2 = dish.vitaminB2;
                          final double vitaminC = dish.vitaminC;
                          final double calcium = dish.calcium;
                          final double magnesium = dish.magnesium;
                          final double iron = dish.iron;
                          final double zinc = dish.zinc;
                          final double carbohydrate = dish.carbohydrate;
                          final double lipid = dish.lipid;
                          final double vitamin = dish.vitamin;
                          final double mineral = dish.mineral;
                          final List<double> rawValues = sixAxisRaw(
                            energy: energy,
                            protein: protein,
                            vitamin: vitamin,
                            mineral: mineral,
                            carbohydrate: carbohydrate,
                            lipid: lipid,
                          );
                          final List<double> values = computeSixAxisPercentFromSlns(
                            energy: energy,
                            protein: protein,
                            retinol: retinol,
                            vitaminB1: vitaminB1,
                            vitaminB2: vitaminB2,
                            vitaminC: vitaminC,
                            calcium: calcium,
                            magnesium: magnesium,
                            iron: iron,
                            zinc: zinc,
                            carbohydrate: carbohydrate,
                            lipid: lipid,
                            slns: slns,
                          );

                          return Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: PaddingSize.contentLarge,
                            ),
                            child: DictionaryNutrientsRadarChart(
                              values: values,
                              rawValues: rawValues,
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
