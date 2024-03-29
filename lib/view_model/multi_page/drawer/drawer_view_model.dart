import 'package:flutter/material.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:hakondate/state/drawer/drawer_state.dart';

part 'drawer_view_model.g.dart';

@Riverpod(keepAlive: true)
class DrawerViewModel extends _$DrawerViewModel {
  @override
  DrawerState build() {
    ref.onDispose(() {
      state.scaffoldKey.currentState?.dispose();
    });

    return DrawerState(
      scaffoldKey: GlobalKey<ScaffoldState>(),
    );
  }

  void openDrawer() => state.scaffoldKey.currentState!.openDrawer();
}
