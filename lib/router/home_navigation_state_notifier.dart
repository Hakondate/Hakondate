import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate_v2/state/navigator/home_navigator_state.dart';

final homeRouterProvider =
    StateNotifierProvider<HomeNavigationStateNotifier, HomeNavigatorState>(
        (ref) => HomeNavigationStateNotifier());

class HomeNavigationStateNotifier extends StateNotifier<HomeNavigatorState> {
  HomeNavigationStateNotifier() : super(HomeNavigatorState());

  void initialize(int schoolId) {
    final DateTime _today = DateTime.now();
    final _todayMenuId = _today.year * 1000000
        + _today.month * 10000
        + _today.day * 100
        + schoolId;
    state = state.copyWith(todayMenuId: _todayMenuId);
  }

  void handleFromHome({bool isShowMenuList = false, int? menuId, int? dishId}) =>
      state = state.copyWith(
        isShowMenuList: isShowMenuList,
        selectedMenuId: menuId ?? state.selectedMenuId,
        selectedDishId: dishId,
      );

  void handleFromMenuList({int? menuId}) => state = state.copyWith(
    isShowMenuList: false,
    selectedMenuId: menuId ?? state.todayMenuId,
  );

  void handleFromDish({int? dishId}) => state = state.copyWith(selectedDishId: dishId);
}
