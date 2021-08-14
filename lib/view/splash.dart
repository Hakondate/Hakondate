import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate_v2/view_model/menu/menus_view_model.dart';
import 'package:hakondate_v2/view_model/user/user_view_model.dart';

class Splash extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);
    final menus = ref.watch(menusProvider);

    return Container();
  }
}