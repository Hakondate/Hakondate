import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate_v2/model/menu/menu_model.dart';
import 'package:hakondate_v2/state/menu/menus_state.dart';
import 'package:hakondate_v2/repository/local/menus_local_repository.dart';
import 'package:hakondate_v2/repository/remote/menus_remote_repository.dart';
import 'package:hakondate_v2/unit/enum.dart';

final menusProvider = StateNotifierProvider<MenusViewModel, MenusState>(
    (ref) => MenusViewModel());

class MenusViewModel extends StateNotifier<MenusState> {
  MenusViewModel()
      : _localRepository = MenusLocalRepository(),
        _remoteRepository = MenusRemoteRepository(),
        super(const MenusState());

  final MenusLocalRepository _localRepository;
  final MenusRemoteRepository _remoteRepository;

  Stream<LoadingStatus> initialize(int schoolId) async* {
    yield LoadingStatus.checkingUpdate;
    if (await _checkUpdate()) {
      yield LoadingStatus.updating;
      await _updateLocalMenus(schoolId);
    }
    yield LoadingStatus.reading;
    final DateTime _loadingDay =
        DateTime(DateTime.now().year, DateTime.now().month);
    await getLocalMenus(_loadingDay, schoolId);
  }

  Future<void> getLocalMenus(DateTime day, int schoolId) async {
    DateTime _referenceDay =
        DateTime(DateTime.now().year, DateTime.now().month + 1)
            .add(const Duration(days: -1)); // 今月末
    if (state.menus.isNotEmpty) {
      List<MenuModel> _copiedMenus = state.menus;
      _copiedMenus.sort((a, b) => a.day.compareTo(b.day));
      _referenceDay = _copiedMenus.last.day;
    }
    if (day.isBefore(_referenceDay)) {
      try {
        List<MenuModel> _newMenus = await _localRepository.getSelectionPeriod(
            day, _referenceDay, schoolId);
        _addMenus(_newMenus);
      } catch (error) {
        throw Exception(error);
      }
    }
  }

  Future<bool> _checkUpdate() async {
    return true;
  }

  Future<void> _updateLocalMenus(int schoolId) async {
    // TODO: リモートデータの更新をローカルに反映
    final List<dynamic> _newMenus = await _remoteRepository.downloadMenus();
    await Future.forEach(_newMenus, (dynamic menu) async {
      await _localRepository.add(menu);
    });
  }

  void _addMenus(dynamic menus) {
    if (menus is! MenuModel && menus is! List<MenuModel>) {
      throw UnsupportedError(
          'The menus argument can only be MenuModel or List<MenuModel> type.');
    }
    final List<MenuModel> _newMenus = (menus is MenuModel)
        ? [...state.menus, menus]
        : [...state.menus, ...menus];
    state = state.copyWith(menus: _newMenus);
  }
}
