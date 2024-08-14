import 'package:hakondate/view_model/multi_page/user/user_view_model.dart';
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
  FutureOr<DailyState> build() {
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
    state.whenData((DailyState data) async {
      DateTime? selectedInputDay = selectedDay;

      switch (Environment.flavor) {
        case Flavor.dev:
          selectedInputDay ??= DateTime(2022, 5, 16);
        case Flavor.stg || Flavor.prod:
          selectedInputDay ??= DateTime.now();
      }

      final bool isAuthorized = await ref.read(userViewModelProvider.notifier).isAuthorized();

      late MenuModel menu;
      if (!isAuthorized) {
        menu = const MenuModel.notAuthorized();
      } else {
        menu = await ref.read(menusLocalRepositoryProvider).getMenuByDay(selectedInputDay);
      }

      state = AsyncData<DailyState>(
        data.copyWith(
          selectedDay: selectedInputDay,
          focusedDay: focusedDay ?? selectedInputDay,
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
