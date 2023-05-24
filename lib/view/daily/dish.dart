import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/model/dish/dish_model.dart';
import 'package:hakondate/model/foodstuff/foodstuff_model.dart';
import 'package:hakondate/model/nutrients/nutrient_unit.dart';
import 'package:hakondate/view/component/label/nutrient_label.dart';
import 'package:hakondate/view/component/label/nutrients_list.dart';
import 'package:hakondate/view_model/single_page/daily_view_model.dart';

class Dish extends ConsumerWidget {
  const Dish({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final DishModel? dish = ref.watch(dailyProvider).selectedDish;

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
                    itemBuilder:(BuildContext context, int index) {
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
  }
}
