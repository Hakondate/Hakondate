import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate_v2/model/menu/menu_model.dart';
import 'package:hakondate_v2/provider/menu/menu_state.dart';

class MenuViewModel extends StateNotifier<MenuState> {
  MenuViewModel() : super(const MenuState());

  Future<void> getMenus() async {}
}