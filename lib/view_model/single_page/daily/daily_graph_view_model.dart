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

  final double vitaminSufficiency =
      (menu.retinol / slns.retinol + menu.vitaminB1 / slns.vitaminB1 + menu.vitaminB2 / slns.vitaminB2 + menu.vitaminC / slns.vitaminC) /
          4 *
          100.0;
  final double mineralSufficiency =
      (menu.calcium / slns.calcium + menu.magnesium / slns.magnesium + menu.iron / slns.iron + menu.zinc / slns.zinc) / 4 * 100.0;

  return <double>[
    menu.energy / slns.energy * 100.0,
    menu.protein / slns.protein * 100.0,
    vitaminSufficiency,
    mineralSufficiency,
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
