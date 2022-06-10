import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/size.dart';
import 'package:hakondate/model/menu/menu_model.dart';
import 'package:hakondate/repository/local/menus_local_repository.dart';
import 'package:hakondate/state/calendar/calendar_state.dart';
import 'package:hakondate/view_model/single_page/daily_view_model.dart';

final calendarProvider = StateNotifierProvider<CalendarViewModel, CalendarState>((ref) {
  final MenusLocalRepository menusLocalRepository = ref.read(menusLocalRepositoryProvider);
  final DailyViewModel dailyProviderReader = ref.read(dailyProvider.notifier);
  return CalendarViewModel(
    menusLocalRepository,
    dailyProviderReader,
  );
});

class CalendarViewModel extends StateNotifier<CalendarState> {
  CalendarViewModel(
    this._menusLocalRepository,
    this._dailyProviderReader,
  ) : super(CalendarState(
    oldestDay: _dailyProviderReader.state.calendarTabFirstDay,
    latestDay: _dailyProviderReader.state.calendarTabLastDay,
    scrollController: ScrollController(),
  ));

  final MenusLocalRepository _menusLocalRepository;
  final DailyViewModel _dailyProviderReader;
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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      state = state.copyWith(
        oldestDay: DateTime(
          _dailyProviderReader.state.selectedDay.year,
          _dailyProviderReader.state.selectedDay.month - 1,
          1,
        ),
      );
      state.scrollController.jumpTo(_getInitialScrollPosition(appHeight));
    });
  }

  void fetchPreviousMonth() {
    final DateTime limitMonth = _dailyProviderReader.state.calendarTabFirstDay.add(const Duration(days: 1));
    if (state.oldestDay.isAfter(limitMonth)) {
      state = state.copyWith(
        oldestDay: DateTime(state.oldestDay.year, state.oldestDay.month - 1, 1),
      );
    }
  }

  double _getInitialScrollPosition(double appHeight) {
    final int dayDifference = state.latestDay.difference(_dailyProviderReader.state.selectedDay).inDays;
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
