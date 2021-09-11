import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate_v2/router/app_navigator_state_notifier.dart';

class Signup extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('お子様の新規登録'),
      ),
    );
  }
}