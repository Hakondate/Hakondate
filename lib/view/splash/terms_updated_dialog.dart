import 'package:flutter/material.dart';

import 'package:hakondate/view/component/dialog/hakondate_dialog/hakondate_dialog.dart';

class TermsUpdatedDialog extends StatelessWidget {
  const TermsUpdatedDialog({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return HakondateDialog(
      title: const Text('お知らせ'),
      body: const Text('利用規約が更新されました\n本サービスを利用するためには再度同意していただく必要があります'),
      firstAction: HakondateActionButton.primary(
        text: const Text('利用規約を見る'),
        onTap: onTap,
      ),
    );
  }
}
