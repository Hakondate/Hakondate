import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:hakondate/model/dish/dish_model.dart';
import 'package:hakondate/model/foodstuff/foodstuff_model.dart';
import 'package:hakondate/model/menu/menu_model.dart';
import 'package:hakondate/repository/local/sqlite/menus/menus_local_repository.dart';
import 'package:hakondate/state/daily/daily_state.dart';
import 'package:hakondate/util/analytics_controller/analytics_controller.dart';
import 'package:hakondate/util/environment.dart';
import 'package:hakondate/view_model/multi_page/user/user_view_model.dart';

part 'daily_view_model.g.dart';

@Riverpod(keepAlive: true)
class DailyViewModel extends _$DailyViewModel {
  @override
  Future<DailyState> build() async {
    final DateTime selectedDay = switch (Environment.flavor) {
      Flavor.dev => await ref.read(menusLocalRepositoryProvider).getLatestDay(),
      Flavor.stg || Flavor.prod => DateTime.now()
    };
    final MenuModel menu;
    final AsyncValue<bool> userAuthorizedState = ref.watch(userAuthorizedProvider);
    if (userAuthorizedState is AsyncData<bool> && userAuthorizedState.value) {
      menu = await ref.read(menusLocalRepositoryProvider).getMenuByDay(selectedDay);
    } else {
      menu = const UnauthorizedMenuModel();
    }

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

  Future<void> updateSelectedDay({required DateTime selectedDay, DateTime? focusedDay}) async {
    state.whenData((DailyState data) async {
      final MenuModel menu;
      final AsyncValue<bool> userAuthorizedState = ref.watch(userAuthorizedProvider);
      if (userAuthorizedState is AsyncData<bool> && userAuthorizedState.value) {
        menu = await ref.read(menusLocalRepositoryProvider).getMenuByDay(selectedDay);
      } else {
        menu = const UnauthorizedMenuModel();
      }

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
      // 桔梗小と巴中で同じ料理の対して異なる食材を使う場合の対応
      // 現在把握している問題はごはんとコッペパンのみ
      // 将来的にはDBを修正して対応する
      DishModel? newDish;
      if (dish.name == 'ごはん' || dish.name == 'ごはん【茶碗なし】') {
        if (dish.foodstuffs.length == 2) {
          final int? currentSchool = ref.watch(userViewModelProvider).currentUser?.schoolId;
          final List<FoodstuffModel> newFoodstuffs = dish.foodstuffs.where((FoodstuffModel foodstuff) {
            if (currentSchool == 1 || currentSchool == 2 || currentSchool == 3) {
              return foodstuff.name == '精白米100';
            } else {
              return foodstuff.name == '精白米70';
            }
          }).toList();
          newDish = dish.copyWith(foodstuffs: newFoodstuffs);
        }
      } else if (dish.name == 'コッペパン') {
        if (dish.foodstuffs.length == 2) {
          final int? currentSchool = ref.watch(userViewModelProvider).currentUser?.schoolId;
          final List<FoodstuffModel> newFoodstuffs = dish.foodstuffs.where((FoodstuffModel foodstuff) {
            if (currentSchool == 1 || currentSchool == 2 || currentSchool == 3) {
              return foodstuff.name == 'コッペパン65';
            } else {
              return foodstuff.name == 'コッペパン50';
            }
          }).toList();
          newDish = dish.copyWith(foodstuffs: newFoodstuffs);
        }
      }
      state = AsyncData<DailyState>(data.copyWith(selectedDish: newDish ?? dish));
    });
  }
}
