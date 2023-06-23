import 'package:flutter/material.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:hakondate/constant/size.dart';
import 'package:hakondate/model/menu/menu_model.dart';
import 'package:hakondate/repository/local/sqlite/menus/menus_local_repository.dart';
import 'package:hakondate/state/calendar/calendar_state.dart';
import 'package:hakondate/state/daily/daily_state.dart';
import 'package:hakondate/view_model/single_page/daily/daily_view_model.dart';

part 'calendar_view_model.g.dart';

@riverpod
class CalendarViewModel extends _$CalendarViewModel {
  late final MenusLocalRepository _menusLocalRepository;
  late final AsyncValue<DailyState> _daily;
  final double _calendarHeightWithMargin = UiSize.calendarTileHeight + 8.0;

  @override
  CalendarState build() {
    _menusLocalRepository = ref.watch(menusLocalRepositoryProvider);
    _daily = ref.watch(dailyViewModelProvider);
    
    ref.onDispose(() {
      state.scrollController.dispose();
    });

    final AsyncValue<DailyState> dailyStateCache = _daily;

    if (dailyStateCache is! AsyncData) throw StateError('DailyState is not AsyncData');

    return CalendarState(
      oldestDay: dailyStateCache.value!.calendarTabFirstDay,
      latestDay: dailyStateCache.value!.calendarTabLastDay,
      scrollController: ScrollController(),
    );
  }

  ScrollController getScrollController() => state.scrollController;
  int getItemCount() => state.latestDay.difference(state.oldestDay).inDays + 1;

  void initialize(double appHeight) {
    state.scrollController.addListener(() {
      final double maxScrollExtent = state.scrollController.position.maxScrollExtent;
      final double currentPosition = state.scrollController.position.pixels;

      if ((maxScrollExtent - UiSize.calendarTileHeight * 0.5) <= currentPosition) {
        fetchPreviousMonth();
      }
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final AsyncValue<DailyState> dailyStateCache = _daily;

      if (dailyStateCache is! AsyncData) throw StateError('DailyState is not AsyncData');

      state = state.copyWith(
        oldestDay: DateTime(
          dailyStateCache.value!.selectedDay.year,
          dailyStateCache.value!.selectedDay.month - 1,
        ),
      );
      state.scrollController.jumpTo(_getInitialScrollPosition(appHeight));
    });
  }

  void fetchPreviousMonth() {
    final AsyncValue<DailyState> dailyStateCache = _daily;

    if (dailyStateCache is! AsyncData) throw StateError('DailyState is not AsyncData');

    final DateTime limitMonth = dailyStateCache.value!.calendarTabFirstDay.add(const Duration(days: 1));

    if (state.oldestDay.isAfter(limitMonth)) {
      state = state.copyWith(
        oldestDay: DateTime(state.oldestDay.year, state.oldestDay.month - 1),
      );
    }
  }

  double _getInitialScrollPosition(double appHeight) {
    final AsyncValue<DailyState> dailyStateCache = _daily;

    if (dailyStateCache is! AsyncData) throw StateError('DailyState is not AsyncData');

    final int dayDifference = state.latestDay.difference(dailyStateCache.value!.selectedDay).inDays;
    final double scrollPosition = _calendarHeightWithMargin * dayDifference - (appHeight - _calendarHeightWithMargin) / 2.0;

    if (scrollPosition < 0.0) return 0;

    return scrollPosition;
  }

  Future<MenuModel> getDailyMenu(DateTime day) => _menusLocalRepository.getMenuByDay(day);
}
