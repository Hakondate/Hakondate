import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate_v2/model/menu/menu_model.dart';
import 'package:hakondate_v2/model/user/user_model.dart';
import 'package:hakondate_v2/provider/menu/menus_state.dart';
import 'package:hakondate_v2/repository/local/menus_local_repository.dart';

final menusProvider = StateNotifierProvider<MenusViewModel, MenusState>((ref) => MenusViewModel());

class MenusViewModel extends StateNotifier<MenusState> {
  MenusViewModel() : this._localRepository = MenusLocalRepository(), super(const MenusState());

  final MenusLocalRepository _localRepository;

  void _addMenus(dynamic menus) {
    if (menus is! MenuModel && menus is! List<MenuModel>)
      throw UnsupportedError('The menus argument can only be MenuModel or List<MenuModel> type.');
    final List<MenuModel> _newMenus = [
      ...state.menus,
      menus
    ];
    state = state.copyWith(menus: _newMenus);
  }

  Future<void> getLocalMenus(DateTime day, UserModel user) async {
    List<MenuModel> _sortedMenus = state.menus;
    _sortedMenus.sort((a, b) => a.day.compareTo(b.day));
    final DateTime _oldDay = _sortedMenus.last.day;
    if (day.isBefore(_oldDay)) {
      List<MenuModel> _newMenus = await _localRepository.getSelectionPeriodMenus(day, _oldDay, user.school!.parentId);
      _addMenus(_newMenus);
    }
  }

  Future<void> updateLocalMenus(UserModel user) async {
    // TODO: リモートデータの更新をローカルに反映
  }

  Future<bool> checkUpdate() async {
    return true;
  }
}