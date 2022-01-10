import 'package:intl/intl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate_v2/model/menu/menu_model.dart';

import 'package:hakondate_v2/repository/local/menus_local_repository.dart';
import 'package:hakondate_v2/state/home/home_state.dart';

final homeProvider = StateNotifierProvider<HomeViewModel, HomeState>((ref) =>
    HomeViewModel());

class HomeViewModel extends StateNotifier<HomeState> {
  HomeViewModel()
      : _menusLocalRepository = MenusLocalRepository(),
        super(const HomeState());

  final MenusLocalRepository _menusLocalRepository;

  Future<void> initialize(int schoolId) async {
    state = state.copyWith(isFetching: true);
    // final DateTime _today = DateTime.now();
    final DateTime _today = DateTime(2021, 7, 1); // FOR DEBUG
    final int _todayId = _today.year * 1000000 +
        _today.month * 10000 +
        _today.day * 100 +
        schoolId;

    MenuModel? _selected = await _menusLocalRepository.getById(_todayId);

    if (_selected == null) {
      final int _status = await _menusLocalRepository.getStatusByDate(_today);
      state = state.copyWith(
        selectedDay: _today,
        menu: _selected,
        status: _status,
        isFetching: false,
      );
    } else {
      state = state.copyWith(
        selectedDay: _today,
        menu: _selected,
        status: 1,
        isFetching: false,
      );
    }
  }

  String dateText() {
    if (state.selectedDay == null) return '';

    final DateTime _today = DateTime.now();
    if (state.selectedDay!.year == _today.year
        && state.selectedDay!.month == _today.month
        && state.selectedDay!.day == _today.day) {
      return '今日';
    } else {
      return DateFormat('M月d日').format(state.selectedDay!);
    }
  }
}
