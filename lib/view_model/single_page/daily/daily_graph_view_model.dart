import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:hakondate/model/menu/menu_model.dart';
import 'package:hakondate/model/nutrients/nutrients_model.dart';
import 'package:hakondate/state/daily/daily_state.dart';
import 'package:hakondate/view_model/multi_page/user/user_view_model.dart';
import 'package:hakondate/view_model/single_page/daily/daily_view_model.dart';

part 'daily_graph_view_model.g.dart';

@riverpod
Future<List<double>> graphValues(GraphValuesRef ref) async {
  const double graphMaxValue = 120;
  final NutrientsModel? slns = ref.watch(userViewModelProvider).currentUser!.slns;
  final AsyncValue<DailyState> data = ref.watch(dailyViewModelProvider);

  if (data is! AsyncData<DailyState>) {
    return <double>[0, 0, 0, 0, 0, 0];
  }

  final MenuModel menu = data.value.menu;

  if (slns == null || menu is! LunchesDayMenuModel) {
    return <double>[0, 0, 0, 0, 0, 0];
  }

  return <double>[
    menu.energy / slns.energy * 100.0,
    menu.protein / slns.protein * 100.0,
    _calcVitaminSufficiency(slns.retinol, slns.vitaminB1, slns.vitaminB2, slns.vitaminC, menu),
    _calcMineralSufficiency(slns.calcium, slns.magnesium, slns.iron, slns.zinc, menu),
    menu.carbohydrate / slns.carbohydrate * 100.0,
    menu.lipid / slns.lipid * 100.0,
  ].map((double element) => (element > graphMaxValue) ? graphMaxValue : element).toList();
}

@riverpod
List<double> graphRawValues(GraphRawValuesRef ref) {
  final AsyncValue<DailyState> data = ref.watch(dailyViewModelProvider);

  if (data is! AsyncData<DailyState>) {
    return <double>[0, 0, 0, 0, 0, 0];
  }

  final MenuModel menu = data.value.menu;

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
}

double _calcVitaminSufficiency(
  double retinolRef,
  double vitaminB1Ref,
  double vitaminB2Ref,
  double vitaminCRef,
  MenuModel menu,
) {
  if (menu is! LunchesDayMenuModel) return 0;

  return (menu.retinol / retinolRef + menu.vitaminB1 / vitaminB1Ref + menu.vitaminB2 / vitaminB2Ref + menu.vitaminC / vitaminCRef) /
      4 *
      100.0;
}

double _calcMineralSufficiency(
  double calciumRef,
  double magnesiumRef,
  double ironRef,
  double zincRef,
  MenuModel menu,
) {
  if (menu is! LunchesDayMenuModel) return 0;

  return (menu.calcium / calciumRef + menu.magnesium / magnesiumRef + menu.iron / ironRef + menu.zinc / zincRef) / 4 * 100.0;
}
