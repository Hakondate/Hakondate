import 'package:flutter/material.dart';

import 'package:hakondate/state/drawer/drawer_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'drawer_view_model.g.dart';

// final StateNotifierProvider<DrawerViewModel, DrawerState> drawerProvider =
//     StateNotifierProvider<DrawerViewModel, DrawerState>(
//         (_) => DrawerViewModel(),
// );

// class DrawerViewModel extends StateNotifier<DrawerState> {
  // DrawerViewModel() : super(DrawerState(
  //     scaffoldKey: GlobalKey<ScaffoldState>(),
  //   ),
//   );

//   void openDrawer() => state.scaffoldKey.currentState!.openDrawer();
// }

@Riverpod(keepAlive: true)
class DrawerViewModel extends _$DrawerViewModel {
  @override
  DrawerState build() => DrawerState(
    scaffoldKey: GlobalKey<ScaffoldState>(),
  );

  void openDrawer() => state.scaffoldKey.currentState!.openDrawer();
}
