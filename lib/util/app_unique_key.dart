import 'package:flutter/widgets.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final appUniqueKeyProvider = StateNotifierProvider<AppUniqueKey, UniqueKey>((_) => AppUniqueKey());

class AppUniqueKey extends StateNotifier<UniqueKey> {
  AppUniqueKey() : super(UniqueKey());

  void restartApp() => state = UniqueKey();
}
