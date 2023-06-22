import 'package:hakondate/model/menu/menu_model.dart';
import 'package:hakondate/model/nutrients/nutrients_model.dart';
import 'package:hakondate/repository/local/sqlite/menus/menus_local_repository.dart';
import 'package:hakondate/state/daily/daily_state.dart';
import 'package:hakondate/util/analytics_controller/analytics_controller.dart';
import 'package:hakondate/util/environment.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'daily_view_model.g.dart';

@Riverpod(keepAlive: true)
class DailyViewModel extends _$DailyViewModel {
  late final MenusLocalRepository _menusLocalRepository;

  @override
  FutureOr<DailyState> build() {
    _menusLocalRepository = ref.watch(menusLocalRepositoryProvider);
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
    final AsyncValue<DailyState> store = state;

    state = const AsyncLoading<DailyState>();

    DateTime? selectedInputDay = selectedDay;
    switch (Environment.flavor) {
      case Flavor.dev:
        selectedInputDay ??= DateTime(2022, 5, 16);
        break;
      case Flavor.stg:
      case Flavor.prod:
      selectedInputDay ??= DateTime.now();
        break;
    }
    final MenuModel menu = await _menusLocalRepository.getMenuByDay(selectedInputDay);

    if (menu is LunchesDayMenuModel) {
      await ref.read(analyticsControllerProvider.notifier).logViewMenu(menu.id);
    }

    state = AsyncData<DailyState>(
      store.value!.copyWith(
        selectedDay: selectedInputDay,
        focusedDay: focusedDay ?? selectedInputDay,
        menu: menu,
      ),
    );
  }

  void updateFocusedDay(DateTime day) => state = AsyncData<DailyState>(state.value!.copyWith(focusedDay: day));

  List<double> getGraphValues({
    required double graphMaxValue,
    NutrientsModel? slns,
  }) {
    final AsyncValue<DailyState> store = state;

    if (store is! AsyncData) return <double>[0, 0, 0, 0, 0, 0];

    final MenuModel menu = store.value!.menu;

    if (slns == null || menu is! LunchesDayMenuModel) {
      return <double>[0, 0, 0, 0, 0, 0];
    }

    return <double>[
      menu.energy / slns.energy * 100.0,
      menu.protein / slns.protein * 100.0,
      _calcVitaminSufficiency(slns.retinol, slns.vitaminB1, slns.vitaminB2, slns.vitaminC),
      _calcMineralSufficiency(slns.calcium, slns.magnesium, slns.iron, slns.zinc),
      menu.carbohydrate / slns.carbohydrate * 100.0,
      menu.lipid / slns.lipid * 100.0,
    ].map((double element) => (element > graphMaxValue) ? graphMaxValue : element).toList();
  }

  double _calcVitaminSufficiency(
      double retinolRef,
      double vitaminB1Ref,
      double vitaminB2Ref,
      double vitaminCRef,
      ) {
    final AsyncValue<DailyState> store = state;

    if (store is! AsyncData) return 0;

    final MenuModel menu = store.value!.menu;

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
    final AsyncValue<DailyState> store = state;

    if (store is! AsyncData) return 0;

    final MenuModel menu = store.value!.menu;

    if (menu is! LunchesDayMenuModel) return 0;

    return (menu.calcium / calciumRef + menu.magnesium / magnesiumRef
        + menu.iron / ironRef + menu.zinc / zincRef) / 4 * 100.0;
  }
}


// @Riverpod(keepAlive: true)
// class DailyViewModel extends _$DailyViewModel {
//   late final MenusLocalRepository _menusLocalRepository;

//   @override
//   DailyState build() {
//     _menusLocalRepository = ref.watch(menusLocalRepositoryProvider);
//     return DailyState(
//       selectedDay: DateTime.now(),
//       focusedDay: DateTime.now(),
//       calendarTabFirstDay: DateTime(2019, 8),
//       calendarTabLastDay: DateTime(
//         DateTime.now().year,
//         DateTime.now().month + 2,
//       ).add(const Duration(seconds: -1)),
//     );
//   }

//   Future<void> updateSelectedDay({DateTime? selectedDay, DateTime? focusedDay}) async {
//     DateTime? selectedInputDay = selectedDay;
//     switch (Environment.flavor) {
//       case Flavor.dev:
//         selectedInputDay ??= DateTime(2022, 5, 16);
//         break;
//       case Flavor.stg:
//       case Flavor.prod:
//       selectedInputDay ??= DateTime.now();
//         break;
//     }
//     state = state.copyWith(isFetching: true);

//     state = state.copyWith(
//       selectedDay: selectedInputDay,
//       focusedDay: focusedDay ?? selectedInputDay,
//       menu: await _menusLocalRepository.getMenuByDay(selectedInputDay),
//     );

//     final MenuModel menu = state.menu;
//     if (menu is LunchesDayMenuModel) {
//       await ref.read(analyticsControllerProvider.notifier).logViewMenu(menu.id);
//     }

//     state = state.copyWith(isFetching: false);
//   }

//   void updateFocusedDay(DateTime day) => state = state.copyWith(focusedDay: day);

//   List<double> getGraphValues({
//     required double graphMaxValue,
//     NutrientsModel? slns,
//   }) {
//     final MenuModel menu = state.menu;

//     if (slns == null || menu is! LunchesDayMenuModel) {
//       return <double>[0, 0, 0, 0, 0, 0];
//     }

//     return <double>[
//       menu.energy / slns.energy * 100.0,
//       menu.protein / slns.protein * 100.0,
//       _calcVitaminSufficiency(slns.retinol, slns.vitaminB1, slns.vitaminB2, slns.vitaminC),
//       _calcMineralSufficiency(slns.calcium, slns.magnesium, slns.iron, slns.zinc),
//       menu.carbohydrate / slns.carbohydrate * 100.0,
//       menu.lipid / slns.lipid * 100.0,
//     ].map((double element) => (element > graphMaxValue) ? graphMaxValue : element).toList();
//   }

//   double _calcVitaminSufficiency(
//       double retinolRef,
//       double vitaminB1Ref,
//       double vitaminB2Ref,
//       double vitaminCRef,
//       ) {
//     final MenuModel menu = state.menu;

//     if (menu is! LunchesDayMenuModel) return 0;

//     return (menu.retinol / retinolRef + menu.vitaminB1 / vitaminB1Ref
//         + menu.vitaminB2 / vitaminB2Ref + menu.vitaminC / vitaminCRef) / 4 * 100.0;
//   }

//   double _calcMineralSufficiency(
//       double calciumRef,
//       double magnesiumRef,
//       double ironRef,
//       double zincRef,
//       ) {
//     final MenuModel menu = state.menu;

//     if (menu is! LunchesDayMenuModel) return 0;

//     return (menu.calcium / calciumRef + menu.magnesium / magnesiumRef
//         + menu.iron / ironRef + menu.zinc / zincRef) / 4 * 100.0;
//   }
// }
