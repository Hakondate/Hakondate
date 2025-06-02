import 'package:flutter/material.dart';

import 'package:hakondate/state/app_statics/app_statics_state.dart';
import 'package:path/path.dart';
import 'package:routemaster/routemaster.dart';

class ReviewPopup extends StatelessWidget {
  const ReviewPopup({super.key});

  static Future<void> showReviewPopupIfConditionMet(AppStaticsState appStaticsState, BuildContext context) async {
    // 条件を満たしているかどうかをチェック
    // if (appStaticsState.openCount >= 5 &&
    //     appStaticsState.usageTimeInMin >= 10 &&
    //     DateTime.now().difference(appStaticsState.lastPopup).inDays >= 30) {
    if (false) {
      // ポップアップを表示する処理をここに追加
      // 例えば、ダイアログを表示するなど
      await showDialog<ReviewPopup>(
        context: context,
        builder: (BuildContext context) {
          return const ReviewPopup();
        },
      );
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

class MyObserver extends RoutemasterObserver {
  MyObserver(GlobalKey navigationKey) {
    _navigationKey = navigationKey;
  }
  RouteData? _previousRoute;
  late GlobalKey _navigationKey;

  // このページからDailyページに戻ってきたときに，条件が合えば意見を求めるポップアップを表示する
  final List<String> _validPreviousRoutePathList = <String>[
    '/terms',
    '/home/daily',
    '/home/daily/dish',
    '/home/calendar',
    '/home/recipes',
    '/home/recipes_pdf/:id',
    '/home/dictionary',
    '/home/dictionary/search',
    '/home/letter',
    '/home/letter/pdf/:id',
    '/home/information',
    '/home/origin',
    '/home/license',
    '/home/license/detail/:id',
  ];

  @override
  void didChangeRoute(RouteData routeData, Page page) {
    if (_previousRoute != null) {
      if (_previousRoute!.fullPath == routeData.fullPath) {
        return;
      } else if (_validPreviousRoutePathList.contains(_previousRoute!.fullPath) && routeData.fullPath == '/home/daily') {
        BuildContext? context = _navigationKey.currentContext;
        if (context == null || !context.mounted) {
          return;
        }
        AppStaticsState appStaticsState = ReviewPopup.showReviewPopupIfConditionMet();
      }
    }
    _previousRoute = routeData;
    print('New route: ${routeData.fullPath}');
  }
}
