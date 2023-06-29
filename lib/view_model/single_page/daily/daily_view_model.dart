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
  late final MenusLocalRepository _menusLocalRepository;

  @override
  FutureOr<DailyState> build() {
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
    final AsyncValue<DailyState> store = state;

    state = const AsyncLoading<DailyState>();

    DateTime? selectedInputDay = selectedDay;
    switch (Environment.flavor) {
      case Flavor.dev:
        selectedInputDay ??= DateTime(2022, 5, 16);
        break;
      case Flavor.stg:
      case Flavor.prod:
      selectedInputDay ??= DateTime.now();
        break;
    }
    final MenuModel menu = await _menusLocalRepository.getMenuByDay(selectedInputDay);

    if (menu is LunchesDayMenuModel) {
      await ref.read(analyticsControllerProvider.notifier).logViewMenu(menu.id);
    }

    state = AsyncData<DailyState>(
      store.value!.copyWith(
        selectedDay: selectedInputDay,
        focusedDay: focusedDay ?? selectedInputDay,
        menu: menu,
      ),
    );
  }

  void updateFocusedDay(DateTime day) => state = AsyncData<DailyState>(state.value!.copyWith(focusedDay: day));

  void selectDish(DishModel dish) => state = AsyncData<DailyState>(state.value!.copyWith(selectedDish: dish));

  List<double> getGraphValues({
    required double graphMaxValue,
    NutrientsModel? slns,
  }) {
    return state.maybeWhen(
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
      orElse: () => <double>[0, 0, 0, 0, 0, 0],
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
