import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:hakondate/model/dish/dish_model.dart';
import 'package:hakondate/model/menu/menu_model.dart';
import 'package:hakondate/repository/local/sqlite/menus/menus_local_repository.dart';
import 'package:hakondate/state/daily/daily_state.dart';
import 'package:hakondate/util/analytics_controller/analytics_controller.dart';
import 'package:hakondate/util/environment.dart';

part 'daily_view_model.g.dart';

@Riverpod(keepAlive: true)
class DailyViewModel extends _$DailyViewModel {
  @override
  Future<DailyState> build() async {
    DateTime? selectedDay;
    switch (Environment.flavor) {
      case Flavor.dev:
        selectedDay ??= await ref.read(menusLocalRepositoryProvider).getLatestDay();
      case Flavor.stg || Flavor.prod:
        selectedDay ??= DateTime.now();
    }
    final MenuModel menu = await ref.read(menusLocalRepositoryProvider).getMenuByDay(selectedDay);

    return DailyState(
      selectedDay: selectedDay,
      focusedDay: selectedDay,
      calendarTabFirstDay: await ref.read(menusLocalRepositoryProvider).getOldestDay(),
      calendarTabLastDay: DateTime(
        DateTime.now().year,
        DateTime.now().month + 2,
      ).add(const Duration(seconds: -1)),
      menu: menu,
    );
  }

  Future<void> updateSelectedDay(DateTime selectedDay, {DateTime? focusedDay}) async {
    state.whenData((DailyState data) async {
      final MenuModel menu = await ref.read(menusLocalRepositoryProvider).getMenuByDay(selectedDay);

      state = AsyncData<DailyState>(
        data.copyWith(
          selectedDay: selectedDay,
          focusedDay: focusedDay ?? selectedDay,
          menu: menu,
        ),
      ).copyWithPrevious(state);

      if (menu is LunchesDayMenuModel) {
        await ref.read(analyticsControllerProvider.notifier).logViewMenu(menu.id);
      }
    });
  }

  Future<void> updateMenu() async {
    state.whenData((DailyState data) async {
      state = const AsyncLoading<DailyState>();

      final MenuModel menu = await ref.read(menusLocalRepositoryProvider).getMenuByDay(data.selectedDay);

      state = AsyncData<DailyState>(
        data.copyWith(
          menu: menu,
        ),
      );

      if (menu is LunchesDayMenuModel) {
        await ref.read(analyticsControllerProvider.notifier).logViewMenu(menu.id);
      }
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
}
