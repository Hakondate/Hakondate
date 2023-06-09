import 'package:flutter/material.dart';

import 'package:hakondate/constant/size.dart';
import 'package:hakondate/model/menu/menu_model.dart';
import 'package:hakondate/repository/local/sqlite/menus/menus_local_repository.dart';
import 'package:hakondate/state/calendar/calendar_state.dart';
import 'package:hakondate/state/daily/daily_state.dart';
import 'package:hakondate/view_model/single_page/daily/daily_view_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'calendar_view_model.g.dart';

@riverpod
class CalendarViewModel extends _$CalendarViewModel {
  late final MenusLocalRepository _menusLocalRepository;
  late final DailyState _daily;
  final double _calendarHeightWithMargin = UiSize.calendarTileHeight + 8.0;

  @override
  CalendarState build() {
    _menusLocalRepository = ref.watch(menusLocalRepositoryProvider);
    _daily = ref.watch(dailyViewModelProvider);
    
    ref.onDispose(() {
      state.scrollController.dispose();
    });

    return CalendarState(
      oldestDay: _daily.calendarTabFirstDay,
      latestDay: _daily.calendarTabLastDay,
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
      state = state.copyWith(
        oldestDay: DateTime(
          _daily.selectedDay.year,
          _daily.selectedDay.month - 1,
        ),
      );
      state.scrollController.jumpTo(_getInitialScrollPosition(appHeight));
    });
  }

  void fetchPreviousMonth() {
    final DateTime limitMonth = _daily.calendarTabFirstDay.add(const Duration(days: 1));
    if (state.oldestDay.isAfter(limitMonth)) {
      state = state.copyWith(
        oldestDay: DateTime(state.oldestDay.year, state.oldestDay.month - 1),
      );
    }
  }

  double _getInitialScrollPosition(double appHeight) {
    final int dayDifference = state.latestDay.difference(_daily.selectedDay).inDays;
    final double scrollPosition = _calendarHeightWithMargin * dayDifference - (appHeight - _calendarHeightWithMargin) / 2.0;

    if (scrollPosition < 0.0) return 0;

    return scrollPosition;
  }

  Future<MenuModel> getDailyMenu(DateTime day) => _menusLocalRepository.getMenuByDay(day);
}
