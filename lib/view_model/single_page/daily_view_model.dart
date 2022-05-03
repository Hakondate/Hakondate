import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/model/menu/menu_model.dart';
import 'package:hakondate/repository/local/menus_local_repository.dart';
import 'package:hakondate/model/nutrients/nutrients_model.dart';
import 'package:hakondate/state/daily/daily_state.dart';
import 'package:hakondate/view_model/multi_page/linking_daily_calendar_view_model.dart';

final dailyProvider = StateNotifierProvider.autoDispose<DailyViewModel, DailyState>((ref) {
  final MenusLocalRepository menusLocalRepository = ref.read(menusLocalRepositoryProvider);
  final LinkingDailyCalendarViewModel linkingDailyCalendarProviderReader = ref.read(linkingDailyCalendarProvider.notifier);
  return DailyViewModel(menusLocalRepository, linkingDailyCalendarProviderReader);
});

class DailyViewModel extends StateNotifier<DailyState> {
  DailyViewModel(this._menusLocalRepository, this._linkingCalendarProviderReader) : super(DailyState(
    focusedDay: _linkingCalendarProviderReader.state.selectedDay,
  ));

  final MenusLocalRepository _menusLocalRepository;
  final LinkingDailyCalendarViewModel _linkingCalendarProviderReader;

  Future<void> updateSelectedDay(DateTime day) async {
    state = state.copyWith(isFetching: true);

    _linkingCalendarProviderReader.updateSelectedDay(day);
    state = state.copyWith(
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
