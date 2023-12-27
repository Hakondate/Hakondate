import 'package:flutter/widgets.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/router/routes.dart';
import 'package:hakondate/view/component/dialog/hakondate_dialog/hakondate_dialog.dart';
import 'package:hakondate/view_model/single_page/user_settings/user_settings_view_model.dart';

class UserDeleteDialog extends ConsumerWidget {
  const UserDeleteDialog({required this.id, super.key});

  final int id;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return HakondateDialog(
      title: const Text('お子様の削除'),
      body: const Text('お子様を削除しますか？'),
      firstAction: HakondateActionButton.primary(
        text: const Text('はい'),
        onTap: () async {
          await ref.read(userSettingsViewModelProvider.notifier).deleteUser(id);
          await routemaster.pop();
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
