import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/model/menu/menu_model.dart';
import 'package:hakondate/model/nutrients/nutrients_model.dart';
import 'package:hakondate/repository/local/menus_local_repository.dart';
import 'package:hakondate/state/daily/daily_state.dart';
import 'package:hakondate/util/environment.dart';

final dailyProvider = StateNotifierProvider<DailyViewModel, DailyState>((ref) {
  final MenusLocalRepository menusLocalRepository = ref.read(menusLocalRepositoryProvider);
  return DailyViewModel(menusLocalRepository);
});

class DailyViewModel extends StateNotifier<DailyState> {
  DailyViewModel(this._menusLocalRepository)
      : super(DailyState(
          selectedDay: DateTime.now(),
          focusedDay: DateTime.now(),
          calendarTabFirstDay: DateTime(2019, 8, 1),
          calendarTabLastDay: DateTime(
            DateTime.now().year,
            DateTime.now().month + 2,
            1,
          ).add(const Duration(seconds: -1)),
        ));

  final MenusLocalRepository _menusLocalRepository;

  Future<void> updateSelectedDay({DateTime? day}) async {
    switch (Environment.flavor) {
      case Flavor.dev:
        day ??= DateTime(2021, 7, 1);
        break;
      case Flavor.stg:
      case Flavor.prod:
        day ??= DateTime.now();
        break;
    }
    state = state.copyWith(isFetching: true);

    state = state.copyWith(
      selectedDay: day,
      menu: await _menusLocalRepository.getMenuByDay(day),
      isFetching: false,
    );
  }

  void updateFocusedDay(DateTime day) => state = state.copyWith(focusedDay: day);

  List<double> getGraphValues({
    NutrientsModel? slns,
    required double graphMaxValue,
  }) {
    final MenuModel menu = state.menu;

    if (slns == null || menu is! LunchesDayMenuModel) {
      return [0, 0, 0, 0, 0, 0];
    }

    return [
      menu.energy / slns.energy * 100.0,
      menu.protein / slns.protein * 100.0,
      _calcVitaminSufficiency(slns.retinol, slns.vitaminB1, slns.vitaminB2, slns.vitaminC),
      _calcMineralSufficiency(slns.calcium, slns.magnesium, slns.iron, slns.zinc),
      menu.carbohydrate / slns.carbohydrate * 100.0,
      menu.lipid / slns.lipid * 100.0,
    ].map((element) => (element > graphMaxValue) ? graphMaxValue : element).toList();
  }

  double _calcVitaminSufficiency(
      double retinolRef,
      double vitaminB1Ref,
      double vitaminB2Ref,
      double vitaminCRef,
      ) {
    final MenuModel menu = state.menu;

    if (menu is! LunchesDayMenuModel) return 0;

    return (menu.retinol / retinolRef + menu.vitaminB1 / vitaminB1Ref
        + menu.vitaminB2 / vitaminB2Ref + menu.vitaminC / vitaminCRef) / 4 * 100.0;
  }

  double _calcMineralSufficiency(
      double calciumRef,
      double magnesiumRef,
      double ironRef,
      double zincRef,
      ) {
    final MenuModel menu = state.menu;

    if (menu is! LunchesDayMenuModel) return 0;

    return (menu.calcium / calciumRef + menu.magnesium / magnesiumRef
        + menu.iron / ironRef + menu.zinc / zincRef) / 4 * 100.0;
  }
}
