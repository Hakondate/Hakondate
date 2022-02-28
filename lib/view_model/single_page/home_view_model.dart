import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate_v2/model/menu/menu_model.dart';

import 'package:hakondate_v2/repository/local/menus_local_repository.dart';
import 'package:hakondate_v2/model/nutrients/nutrients_model.dart';
import 'package:hakondate_v2/state/daily/daily_state.dart';

final homeProvider = StateNotifierProvider<DailyViewModel, DailyState>(
    (ref) => DailyViewModel());

class DailyViewModel extends StateNotifier<DailyState> {
  DailyViewModel()
      : _menusLocalRepository = MenusLocalRepository(),
        super(DailyState(
          selectedDay: DateTime.now(),
          focusedDay: DateTime.now(),
          calendarTabFirstDay: DateTime(2019, 8, 1),
          calendarTabLastDay:
              DateTime(DateTime.now().year, DateTime.now().month + 2, 1)
                  .add(const Duration(seconds: -1)),
        ));

  final MenusLocalRepository _menusLocalRepository;

  Future<void> updateSelectedDay({DateTime? day, required int schoolId}) async {
    // day ??= DateTime.now();
    day ??= DateTime(2021, 7, 1); // For Debug
    state = state.copyWith(isFetching: true);
    MenuModel? _selected = await _menusLocalRepository.getById(_parseToId(day, schoolId));

    if (_selected == null) {
      final int _status = await _menusLocalRepository.getStatusByDate(day);
      state = state.copyWith(
        selectedDay: day,
        menu: _selected,
        status: _status,
        isFetching: false,
      );
    } else {
      state = state.copyWith(
        selectedDay: day,
        menu: _selected,
        status: 1,
        isFetching: false,
      );
    }
  }

  void updateFocusedDay(DateTime day) => state = state.copyWith(focusedDay: day);

  int _parseToId(DateTime day, int schoolId) =>
      day.year * 1000000 + day.month * 10000 + day.day * 100 + schoolId;

  bool isSameDay(DateTime day, DateTime other) =>
      day.year == other.year && day.month == other.month && day.day == other.day;

  List<double> getGraphValues({
    NutrientsModel? slns,
    required double graphMaxValue,
  }) {
    if (slns == null) {
      return [0, 0, 0, 0, 0, 0];
    }

    return [
      state.menu!.energy / slns.energy * 100.0,
      state.menu!.protein / slns.protein * 100.0,
      _calcVitaminSufficiency(slns.retinol, slns.vitaminB1, slns.vitaminB2, slns.vitaminC),
      _calcMineralSufficiency(slns.calcium, slns.magnesium, slns.iron, slns.zinc),
      state.menu!.carbohydrate / slns.carbohydrate * 100.0,
      state.menu!.lipid / slns.lipid * 100.0,
    ].map((element) => (element > graphMaxValue) ? graphMaxValue : element).toList();
  }

  double _calcVitaminSufficiency(
      double retinolRef,
      double vitaminB1Ref,
      double vitaminB2Ref,
      double vitaminCRef
      ) {
    return (state.menu!.retinol / retinolRef
        + state.menu!.vitaminB1 / vitaminB1Ref
        + state.menu!.vitaminB2 / vitaminB2Ref
        + state.menu!.vitaminC / vitaminCRef) / 4 * 100.0;
  }

  double _calcMineralSufficiency(
      double calciumRef,
      double magnesiumRef,
      double ironRef,
      double zincRef
      ) {
    return (state.menu!.calcium / calciumRef
        + state.menu!.magnesium / magnesiumRef
        + state.menu!.iron / ironRef
        + state.menu!.zinc / zincRef) / 4 * 100.0;
  }
}
