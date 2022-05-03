import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/size.dart';
import 'package:hakondate/model/menu/menu_model.dart';
import 'package:hakondate/repository/local/menus_local_repository.dart';
import 'package:hakondate/state/calendar/calendar_state.dart';
import 'package:hakondate/view_model/multi_page/linking_daily_calendar_view_model.dart';

final calendarProvider = StateNotifierProvider<CalendarViewModel, CalendarState>((ref) {
  final MenusLocalRepository menusLocalRepository = ref.read(menusLocalRepositoryProvider);
  final LinkingDailyCalendarViewModel linkingDailyCalendarProviderReader = ref.read(linkingDailyCalendarProvider.notifier);
  return CalendarViewModel(
    menusLocalRepository,
    linkingDailyCalendarProviderReader,
  );
});

class CalendarViewModel extends StateNotifier<CalendarState> {
  CalendarViewModel(
    this._menusLocalRepository,
    this._linkingDailyReader,
  ) : super(CalendarState(
    oldestDay: _linkingDailyReader.state.calendarOldestDay,
    latestDay: _linkingDailyReader.state.calendarLatestDay,
    scrollController: ScrollController(),
  ));

  final MenusLocalRepository _menusLocalRepository;
  final LinkingDailyCalendarViewModel _linkingDailyReader;
  final double _calendarHeightWithMargin = UiSize.calendarTileHeight + 8.0;

  ScrollController get scrollController => state.scrollController;
  int get itemCount => state.latestDay.difference(state.oldestDay).inDays + 1;

  void initialize(double appHeight) {
    state.scrollController.addListener(() {
      final double maxScrollExtent = state.scrollController.position.maxScrollExtent;
      final double currentPosition = state.scrollController.position.pixels;

      if ((maxScrollExtent - UiSize.calendarTileHeight * 0.5) <= currentPosition) {
        fetchPreviousMonth();
      }
    });
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      state = state.copyWith(
        oldestDay: DateTime(
          _linkingDailyReader.state.selectedDay.year,
          _linkingDailyReader.state.selectedDay.month - 1,
          1,
        ),
      );
      state.scrollController.jumpTo(_getInitialScrollPosition(appHeight));
    });
  }

  void fetchPreviousMonth() {
    final DateTime limitMonth = state.oldestDay.add(const Duration(days: 1));
    if (state.oldestDay.isAfter(limitMonth)) {
      state = state.copyWith(
        oldestDay: DateTime(state.oldestDay.year, state.oldestDay.month - 1, 1),
      );
    }
  }

  double _getInitialScrollPosition(double appHeight) {
    final int dayDifference = state.latestDay.difference(_linkingDailyReader.state.selectedDay).inDays;
    final double scrollPosition = _calendarHeightWithMargin * dayDifference - (appHeight - _calendarHeightWithMargin) / 2.0;

    if (scrollPosition < 0.0) return 0.0;

    return scrollPosition;
  }

  Future<MenuModel> getDailyMenu(DateTime day) => _menusLocalRepository.getMenuByDay(day);

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
