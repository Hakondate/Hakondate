import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'drawer_state.freezed.dart';

@freezed
class DrawerState with _$DrawerState {
  const factory DrawerState({
    required GlobalKey<ScaffoldState> scaffoldKey,
  }) = _DrawerState;
}
