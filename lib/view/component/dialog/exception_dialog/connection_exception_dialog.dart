import 'package:flutter/material.dart';

import 'package:hakondate/view/component/dialog/hakondate_dialog/hakondate_dialog.dart';

class ConnectionExceptionDialog extends StatelessWidget {
  const ConnectionExceptionDialog({
    Key? key,
    this.onTapRetry,
    this.onTapContinue,
  }) : super(key: key);

  final Function()? onTapRetry;
  final Function()? onTapContinue;

  @override
  Widget build(BuildContext context) {
    if (onTapContinue == null) {
      return HakondateDialog(
        title: const Text('通信エラー'),
        body: const Text('データの通信に失敗しました'),
        firstAction: HakondateActionButton.primary(
          text: const Text('リトライ'),
          onTap: onTapRetry,
        ),
      );
    }

    return HakondateDialog(
      title: const Text('通信エラー'),
      body: const Text('データの通信に失敗しました\nデータの通信をせず利用する場合は"このまま利用"を選択してください'),
      firstAction: HakondateActionButton.primary(
        text: const Text('リトライ'),
        onTap: onTapRetry,
      ),
      secondAction: HakondateActionButton(
        text: const Text('このまま利用'),
        onTap: onTapContinue,
      ),
    );
  }
}
