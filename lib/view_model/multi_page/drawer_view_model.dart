import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/state/drawer/drawer_state.dart';

final StateNotifierProvider<DrawerViewModel, DrawerState> drawerProvider =
    StateNotifierProvider<DrawerViewModel, DrawerState>(
        (_) => DrawerViewModel(),
);

class DrawerViewModel extends StateNotifier<DrawerState> {
  DrawerViewModel() : super(DrawerState(
      scaffoldKey: GlobalKey<ScaffoldState>(),
    ),
  );

  void openDrawer() => state.scaffoldKey.currentState!.openDrawer();
}
