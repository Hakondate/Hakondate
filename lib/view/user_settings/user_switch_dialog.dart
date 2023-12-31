import 'package:flutter/widgets.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/router/routes.dart';
import 'package:hakondate/view/component/dialog/hakondate_dialog/hakondate_dialog.dart';
import 'package:hakondate/view_model/multi_page/user/user_view_model.dart';
import 'package:hakondate/view_model/single_page/daily/daily_view_model.dart';

class UserSwitchDialog extends ConsumerWidget {
  const UserSwitchDialog({required this.id, super.key});

  final int id;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return HakondateDialog(
      title: const Text('選択中のお子様の切り替え'),
      body: const Text('選択中のお子様を切り替えますか'),
      firstAction: HakondateActionButton.primary(
        text: const Text('はい'),
        onTap: () async {
          await ref.read(userViewModelProvider.notifier).changeCurrentUser(id);
          await ref.read(dailyViewModelProvider.notifier).updateMenu();
          routemaster.replace('/home');
        },
      ),
      secondAction: HakondateActionButton(
        text: const Text('いいえ'),
        onTap: () {
          routemaster.pop(context);
        },
      ),
    );
  }
}
