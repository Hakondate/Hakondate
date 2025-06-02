import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate/constant/review_popup_condition.dart';

import 'package:hakondate/state/app_statics/app_statics_state.dart';
import 'package:hakondate/view_model/multi_page/app_statics/app_statics_view_model.dart';
import 'package:routemaster/routemaster.dart';

class ReviewPopup extends StatelessWidget {
  const ReviewPopup({super.key});

  static bool _isContextMounted(BuildContext context) {
    if (context.mounted) {
      return true;
    } else {
      debugPrint('Context is not mounted');
      return false;
    }
  }

  static Future<void> _showPopup(BuildContext context) async {
    if (_isContextMounted(context)) {
      await showDialog<ReviewPopup>(
        // mountedのチェックを行っているため
        // ignore: use_build_context_synchronously
        context: context,
        builder: (BuildContext context) {
          return const ReviewPopup();
        },
      );
      // mountedのチェックを行っているため
      // ignore: use_build_context_synchronously
      await ProviderScope.containerOf(context).read(appStaticsViewModelProvider.notifier).setLastPopup();
    }
  }

  static Future<void> showReviewPopupIfConditionMet(AppStaticsState appStaticsState, BuildContext context) async {
    // 条件を満たしているかどうかをチェック
    // if (appStaticsState.openCount >= 5 &&
    //     appStaticsState.usageTimeInMin >= 10 &&
    //     DateTime.now().difference(appStaticsState.lastPopup).inDays >= 30) {
    if (appStaticsState.lastPopup == null) {
      if (appStaticsState.usageTimeInMin >= ReviewPopupCondition.usageTimeInMin) {
        await _showPopup(context);
      }
    } else {
      if (appStaticsState.lastPopup!.difference(DateTime.now()).inDays >= ReviewPopupCondition.dayFromLastPopup &&
          appStaticsState.usageTimeInMin >= ReviewPopupCondition.usageTimeInMin) {
        await _showPopup(context);
      }
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
  late GlobalKey _navigationKey;
  Timer? _timer;

  void _initTimer() {
    _timer = Timer.periodic(ReviewPopupCondition.popupDelay, (Timer timer) {
      _showPopup();
      _disposeTimer();
    });
  }

  void _disposeTimer() {
    _timer?.cancel();
    _timer = null;
  }

  void _showPopup() {
    final BuildContext? context = _navigationKey.currentContext;
    if (context == null || !context.mounted) {
      debugPrint('Context is null or not mounted');
      return;
    }
    final ProviderContainer container = ProviderScope.containerOf(context);
    final AsyncValue<AppStaticsState> appStaticsState = container.read(appStaticsViewModelProvider);
    if (appStaticsState.hasValue) {}
    if (appStaticsState.value != null) {
      ReviewPopup.showReviewPopupIfConditionMet(appStaticsState.value!, context);
    } else {
      debugPrint('AppStatics State is not initialized yet');
    }
  }

  @override
  void didChangeRoute(RouteData routeData, Page<dynamic> page) {
    if (routeData.fullPath == '/home/daily') {
      _initTimer();
    } else {
      _disposeTimer();
    }
    debugPrint('New route: ${routeData.fullPath}');
  }
}
