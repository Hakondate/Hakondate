import 'package:flutter/material.dart';

import 'package:hakondate/view/component/dialog/hakondate_dialog/hakondate_dialog.dart';

class LocalDatabaseExceptionDialog extends StatelessWidget {
  const LocalDatabaseExceptionDialog({
    super.key,
    this.onTapRetry,
  });

  final void Function()? onTapRetry;

  @override
  Widget build(BuildContext context) {
    return HakondateDialog(
      title: const Text('端末データエラー'),
      body: const Text('端末内のデータの通信に失敗しました'),
      firstAction: HakondateActionButton.primary(
        text: const Text('リトライ'),
        onTap: onTapRetry,
      ),
    );
  }
}
