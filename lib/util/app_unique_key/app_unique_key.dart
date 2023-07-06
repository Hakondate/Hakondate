import 'package:flutter/widgets.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_unique_key.g.dart';

@riverpod
class AppUniqueKey extends _$AppUniqueKey {
  @override
  UniqueKey build() => UniqueKey();

  void restartApp() => state = UniqueKey();
}
