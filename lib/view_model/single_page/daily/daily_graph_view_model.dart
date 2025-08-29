import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:hakondate/model/menu/menu_model.dart';
import 'package:hakondate/model/nutrients/nutrients_model.dart';
import 'package:hakondate/state/daily/daily_state.dart';
import 'package:hakondate/view_model/multi_page/user/user_view_model.dart';
import 'package:hakondate/view_model/single_page/daily/daily_view_model.dart';
import 'package:hakondate/util/nutrients/radar_chart_values.dart';

part 'daily_graph_view_model.g.dart';

@riverpod
Future<List<double>> graphValues(Ref ref) async {
  final NutrientsModel? slns = ref.watch(userViewModelProvider).currentUser!.slns;
  final AsyncValue<DailyState> data = ref.watch(dailyViewModelProvider);

  if (data is! AsyncData<DailyState>) {
    return <double>[0, 0, 0, 0, 0, 0];
  }

  final MenuModel menu = data.value.menu;

  if (slns == null || menu is! LunchesDayMenuModel) {
    return <double>[0, 0, 0, 0, 0, 0];
  }

  return computeSixAxisPercentFromSlns(
    energy: menu.energy,
    protein: menu.protein,
    retinol: menu.retinol,
    vitaminB1: menu.vitaminB1,
    vitaminB2: menu.vitaminB2,
    vitaminC: menu.vitaminC,
    calcium: menu.calcium,
    magnesium: menu.magnesium,
    iron: menu.iron,
    zinc: menu.zinc,
    carbohydrate: menu.carbohydrate,
    lipid: menu.lipid,
    slns: slns,
    cap: 120,
  );
}

@riverpod
List<double> graphRawValues(Ref ref) {
  final AsyncValue<DailyState> data = ref.watch(dailyViewModelProvider);

  if (data is! AsyncData<DailyState>) {
    return <double>[0, 0, 0, 0, 0, 0];
  }

  final MenuModel menu = data.value.menu;

  if (menu is! LunchesDayMenuModel) {
    return <double>[0, 0, 0, 0, 0, 0];
  }

  return sixAxisRaw(
    energy: menu.energy,
    protein: menu.protein,
    vitamin: menu.vitamin,
    mineral: menu.mineral,
    carbohydrate: menu.carbohydrate,
    lipid: menu.lipid,
  );
}
