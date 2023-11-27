import 'package:flutter/material.dart';
import 'package:hakondate/model/dictionary/dictionary_item_model.dart';
import 'package:hakondate/repository/local/sqlite/dictionary_items/dictionary_items_local_repository.dart';
import 'package:hakondate/view_model/multi_page/user/user_view_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:hakondate/model/dish/dish_model.dart';
import 'package:hakondate/model/menu/menu_model.dart';
import 'package:hakondate/model/nutrients/nutrients_model.dart';
import 'package:hakondate/repository/local/sqlite/menus/menus_local_repository.dart';
import 'package:hakondate/state/daily/daily_state.dart';
import 'package:hakondate/util/analytics_controller/analytics_controller.dart';
import 'package:hakondate/util/environment.dart';

part 'daily_view_model.g.dart';

@Riverpod(keepAlive: true)
class DailyViewModel extends _$DailyViewModel {
  late final DictionaryItemsLocalRepositoryAPI _dictionaryItemsLocalRepository;
  late final MenusLocalRepository _menusLocalRepository;
  
  @override
  FutureOr<DailyState> build() {
    _dictionaryItemsLocalRepository =
        ref.watch(dictionaryItemsLocalRepositoryProvider);
    _menusLocalRepository = ref.watch(menusLocalRepositoryProvider);

    return DailyState(
      selectedDay: DateTime.now(),
      focusedDay: DateTime.now(),
      calendarTabFirstDay: DateTime(2019, 8),
      calendarTabLastDay: DateTime(
        DateTime.now().year,
        DateTime.now().month + 2,
      ).add(const Duration(seconds: -1)),
    );
  }

  Future<void> updateSelectedDay({DateTime? selectedDay, DateTime? focusedDay}) async {
    state.whenData((DailyState data) async {
      
      state = const AsyncLoading<DailyState>();

      DateTime? selectedInputDay = selectedDay;
      debugPrint(Environment.flavor.toString());
      switch (Environment.flavor) {
        case Flavor.dev:
          debugPrint(selectedInputDay.toString());
          selectedInputDay ??= DateTime(2022, 5, 16);
          break;
        case Flavor.stg:
        case Flavor.prod:
          selectedInputDay ??= DateTime.now();
          break;
      }
      final MenuModel menu = await _menusLocalRepository.getMenuByDay(selectedInputDay);

      state = AsyncData<DailyState>(
        data.copyWith(
          selectedDay: selectedInputDay,
          focusedDay: focusedDay ?? selectedInputDay,
          menu: menu,
        ),
      );

      if (menu is LunchesDayMenuModel) {
        await ref.read(analyticsControllerProvider.notifier).logViewMenu(menu.id);
      }
      await ref.read(dailyViewModelProvider.notifier).updateRecommendDishes();
    });
  }

  void updateFocusedDay(DateTime day) {
    state.whenData((DailyState data) {
      state = AsyncData<DailyState>(data.copyWith(focusedDay: day));
    });
  }

  void selectDish(DishModel dish) {
    state.whenData((DailyState data) {
      state = AsyncData<DailyState>(data.copyWith(selectedDish: dish));
    });
  }

  Future<void>  updateRecommendDishes() async {
    state.whenData((DailyState data) async => state = AsyncData<DailyState>(data.copyWith(recommendDishes: await _calculateReccomendDishes())));
  }

  Future<Map<String, List<DictionaryItemModel>>> _calculateReccomendDishes() async{
    final NutrientsModel? slns =
        ref.watch(userViewModelProvider).currentUser!.slns;
    final List<double> nutrientsPercentage =
        ref.read(dailyViewModelProvider.notifier).getGraphValues(
              graphMaxValue: 120,
              slns: slns,
            );

    final Map<String, double> nutrientsMap = <String, double>{}..addAll(<String, double>{
        'protein': nutrientsPercentage[1],
        'vitamin': nutrientsPercentage[2],
        'mineral': nutrientsPercentage[3],
        'carbohydrate': nutrientsPercentage[4],
        'lipid': nutrientsPercentage[5],
      });
      MapEntry<String, double> minValue = nutrientsMap.entries.elementAt(0);
      MapEntry<String, double> secondMinValue = nutrientsMap.entries.elementAt(1);
      MapEntry<String, double> temp;

      nutrientsMap.forEach((String key, double value) {debugPrint('$key: $value');});

      for (int i = 1; i < nutrientsMap.length; i++) {
        temp = nutrientsMap.entries.elementAt(i);
        if (minValue.value > temp.value) {
          secondMinValue = minValue;
          minValue = temp;
        } else if (secondMinValue.value > temp.value) {
          secondMinValue = temp;
        }
      }
      final Map<String, List<DictionaryItemModel>> recommendDishes = <String, List<DictionaryItemModel>>{
        minValue.key: await _dictionaryItemsLocalRepository.getRanking(
          nutrient: minValue.key,
        ),
        secondMinValue.key: await _dictionaryItemsLocalRepository.getRanking(
          nutrient: secondMinValue.key,
        ),
      };
      return recommendDishes;
  }

  List<double> getGraphValues({
    required double graphMaxValue,
    NutrientsModel? slns,
  }) {
    return state.maybeWhen
    (
      data: (DailyState data) {
        final MenuModel menu = data.menu;

        if (slns == null || menu is! LunchesDayMenuModel) {
          return <double>[0, 0, 0, 0, 0, 0];
        }

        return <double>[
          menu.energy / slns.energy * 100.0,
          menu.protein / slns.protein * 100.0,
          _calcVitaminSufficiency(slns.retinol, slns.vitaminB1, slns.vitaminB2, slns.vitaminC),
          _calcMineralSufficiency(slns.calcium, slns.magnesium, slns.iron, slns.zinc),
          menu.carbohydrate / slns.carbohydrate * 100.0,
          menu.lipid / slns.lipid * 100.0,
        ].map((double element) => (element > graphMaxValue) ? graphMaxValue : element).toList();
      },
      orElse: () {
        return <double>[0, 0, 0, 0, 0, 0];
      },
    );
  }

  List<double> getGraphRowValues() {
    return state.maybeWhen(
      data: (DailyState data) {
        final MenuModel menu = data.menu;

        if (menu is! LunchesDayMenuModel) {
          return <double>[0, 0, 0, 0, 0, 0];
        }

        return <double>[
          menu.energy,
          menu.protein,
          menu.vitamin,
          menu.mineral,
          menu.carbohydrate,
          menu.lipid,
        ];
      },
      orElse: () => <double>[0, 0, 0, 0, 0],
    );
  }

  double _calcVitaminSufficiency(
      double retinolRef,
      double vitaminB1Ref,
      double vitaminB2Ref,
      double vitaminCRef,
      ) {
    return state.maybeWhen(
      data: (DailyState data) {
        final MenuModel menu = data.menu;

        if (menu is! LunchesDayMenuModel) return 0;

        return (menu.retinol / retinolRef +
                menu.vitaminB1 / vitaminB1Ref +
                menu.vitaminB2 / vitaminB2Ref +
                menu.vitaminC / vitaminCRef) / 4 * 100.0;
      },
      orElse: () => 0,
    );
  }

  double _calcMineralSufficiency(
      double calciumRef,
      double magnesiumRef,
      double ironRef,
      double zincRef,
      ) {
    return state.maybeWhen(
      data: (DailyState data) {
        final MenuModel menu = data.menu;

        if (menu is! LunchesDayMenuModel) return 0;

        return (menu.calcium / calciumRef +
                menu.magnesium / magnesiumRef +
                menu.iron / ironRef +
                menu.zinc / zincRef) / 4 * 100.0;
      },
      orElse: () => 0,
    );
  }
}
