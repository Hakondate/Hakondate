import 'package:flutter/material.dart';
import 'package:hakondate/state/app_statics/app_statics_state.dart';

class ReviewPopup extends StatelessWidget {
  const ReviewPopup({super.key});

  static void showReviewPopupIfConditionMet(AppStaticsState appStaticsState, BuildContext context) {
    // 条件を満たしているかどうかをチェック
    if (appStaticsState.openCount >= 5 &&
        appStaticsState.usageTimeInMin >= 10 &&
        DateTime.now().difference(appStaticsState.lastPopup).inDays >= 30) {
      // ポップアップを表示する処理をここに追加
      // 例えば、ダイアログを表示するなど
    } else {
      debugPrint('条件を満たしていません。ポップアップは表示されません。');
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('レビューのお願い'),
      content: const Text('アプリを気に入っていただけましたか？\nぜひレビューをお願いします！'),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // ダイアログを閉じる
          },
          child: const Text('閉じる'),
        ),
        TextButton(
          onPressed: () {
            // レビューのリンクを開く処理をここに追加
            debugPrint('レビューリンクを開きます。');
            Navigator.of(context).pop(); // ダイアログを閉じる
          },
          child: const Text('レビューを書く'),
        ),
      ],
    );
  }
}
