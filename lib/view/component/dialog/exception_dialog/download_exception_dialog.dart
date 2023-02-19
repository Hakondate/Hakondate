import 'package:flutter/material.dart';

import 'package:hakondate/view/component/dialog/hakondate_dialog/hakondate_dialog.dart';

class DownloadExceptionDialog extends StatelessWidget {
  const DownloadExceptionDialog({
    Key? key,
    this.onTapRetry,
    this.onTapPop,
  }) : super(key: key);

  final Function()? onTapRetry;
  final Function()? onTapPop;

  @override
  Widget build(BuildContext context) {
    return HakondateDialog(
      title: const Text('通信エラー'),
      body: const Text('データの通信に失敗しました'),
      firstAction: HakondateActionButton.primary(
        text: const Text('リトライ'),
        onTap: onTapRetry,
      ),
      secondAction: HakondateActionButton(
        text: const Text('戻る'),
        onTap: onTapPop,
      ),
    );
  }
}
