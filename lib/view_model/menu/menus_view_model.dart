import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate_v2/model/menu/menu_model.dart';
import 'package:hakondate_v2/provider/menu/menus_state.dart';

final menusProvider = StateNotifierProvider<MenusViewModel, MenusState>((ref) => MenusViewModel());

class MenusViewModel extends StateNotifier<MenusState> {
  MenusViewModel() : super(const MenusState());

  void _addMenus(dynamic menus) {
    if (menus is! MenuModel && menus is! List<MenuModel>)
      throw UnsupportedError('The menus argument can only be MenuModel or List<MenuModel> type.');
    final List<MenuModel> _newMenus = [
      ...state.menus,
      menus
    ];
    state = state.copyWith(menus: _newMenus);
  }

  Future<void> updateLocalMenus() async {
    // TODO: リモートデータの更新をローカルに反映
  }

  Future<void> getLocalMenus(DateTime day) async {
    // TODO: day以降の献立をmenusに格納
    //  1. menusの最も古いデータの日付とdayの差分を算出
    //  2. ローカルデータにアクセス
    //  3. 差分の日付の献立を取得
    //  4. 取得データを_addMenus()で追加
  }
}