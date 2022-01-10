import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate_v2/state/navigator/home_navigator_state.dart';

final homeRouterProvider =
    StateNotifierProvider<HomeNavigationStateNotifier, HomeNavigatorState>(
        (ref) => HomeNavigationStateNotifier());

class HomeNavigationStateNotifier extends StateNotifier<HomeNavigatorState> {
  HomeNavigationStateNotifier() : super(const HomeNavigatorState());

  void handleFromHome({bool isShowMenuList = false, int? dishId}) =>
      state = state.copyWith(
        isShowMenuList: isShowMenuList,
        selectedDishId: dishId,
      );

  void handleFromMenuList() => state = state.copyWith(isShowMenuList: false);

  void handleFromDish({int? dishId}) =>
      state = state.copyWith(selectedDishId: dishId);
}
