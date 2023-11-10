import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate/router/routes.dart';

import 'package:hakondate/view/component/dialog/hakondate_dialog/hakondate_dialog.dart';
import 'package:hakondate/view_model/multi_page/user/user_view_model.dart';

class UserSwitchDialog extends ConsumerWidget {
  const UserSwitchDialog({required this.id, super.key});

  final int id;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return HakondateDialog(
      title: const Text('ユーザーを変更しますか？'),
      body: const Text('はいを押すとユーザーが変更されます'),
      firstAction: HakondateActionButton.primary(
        text: const Text('はい'),
        onTap: () async {
          await ref.read(userViewModelProvider.notifier).changeCurrentUser(id);
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
