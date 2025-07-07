import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:hakondate/constant/app_url.dart';
import 'package:hakondate/constant/review_popup_condition.dart';
import 'package:hakondate/state/app_preferences/app_preferences_state.dart';
import 'package:hakondate/state/app_statistics/app_statistics_state.dart';
import 'package:hakondate/view/component/dialog/hakondate_dialog/hakondate_dialog.dart';
import 'package:hakondate/view_model/multi_page/app_preferences/app_preferences_view_model.dart';
import 'package:hakondate/view_model/multi_page/app_statistics/app_statistics_view_model.dart';

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
      await ProviderScope.containerOf(context).read(appStatisticsViewModelProvider.notifier).setLastPopup();
    }
  }

  static Future<void> showReviewPopupIfConditionMet(
    AppStatisticsState appStaticsState,
    AppPreferencesState appPreferencesState,
    BuildContext context,
  ) async {
    if (appPreferencesState.isReviewPopupDenied) {
      debugPrint('Review popup is denied by user preferences');
      return;
    }

    if (appStaticsState.lastPopUp == null) {
      if (appStaticsState.usageTimeInMin >= ReviewPopupCondition.usageTimeInMin) {
        await _showPopup(context);
      }
    } else {
      if (DateTime.now().difference(appStaticsState.lastPopUp!).inDays >= ReviewPopupCondition.dayFromLastPopup &&
          (appStaticsState.usageTimeInMin - (appStaticsState.usageTimeInMinWhenLastPopUp ?? appStaticsState.usageTimeInMin) >=
              ReviewPopupCondition.usageTimeFromLastPopupInMin)) {
        debugPrint('Show review Popup');
        debugPrint(
          'daysAfterLastPopup：${appStaticsState.lastPopUp!.difference(DateTime.now()).inDays}, usageMinAfterLastPopup: ${appStaticsState.usageTimeInMinWhenLastPopUp! - appStaticsState.usageTimeInMin}',
        );
        await _showPopup(context);
      } else {
        debugPrint('Review popup condition not met. Not showing popup.');
        debugPrint(
          'daysAfterLastPopup：${appStaticsState.lastPopUp!.difference(DateTime.now()).inDays}, usageMinAfterLastPopup: ${appStaticsState.usageTimeInMinWhenLastPopUp! - appStaticsState.usageTimeInMin}',
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, _) {
        return HakondateDialog(
          body: const Text('''
はこんだて を気に入っていただけましたか？

レビューで応援していただけると嬉しいです（所要時間約5分）
        '''),
          title: const Text('アプリの評価をお願いします'),
          firstAction: HakondateActionButton(
            text: const Text('評価する'),
            isPrimary: true,
            onTap: () async {
              if (await canLaunchUrl(Uri.parse(AppUrl.reviewFormUrl))) {
                await launchUrl(
                  Uri.parse(AppUrl.reviewFormUrl),
                  mode: LaunchMode.inAppWebView,
                );
              }
              await ref.read(appPreferencesViewModelProvider.notifier).setIsReviewPopupDenied();
            },
          ),
          secondAction: HakondateActionButton(
            text: const Text('今はしない'),
            onTap: () {
              Routemaster.of(context).pop();
              ref.read(appStatisticsViewModelProvider.notifier).setLastPopup();
            },
          ),
          thirdAction: HakondateActionButton(
            text: const Text('二度と表示しない'),
            onTap: () {
              Routemaster.of(context).pop();
              ref.read(appStatisticsViewModelProvider.notifier).setLastPopup();
              ref.read(appPreferencesViewModelProvider.notifier).setIsReviewPopupDenied();
            },
          ),
        );
      },
    );
  }
}

class ReviewPopupObserver extends RoutemasterObserver {
  ReviewPopupObserver(GlobalKey navigationKey) {
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
    final AsyncValue<AppStatisticsState> appStatisticsState = container.read(appStatisticsViewModelProvider);
    final AsyncValue<AppPreferencesState> appPreferencesState = container.read(appPreferencesViewModelProvider);

    if (appStatisticsState.value != null && appPreferencesState.value != null) {
      ReviewPopup.showReviewPopupIfConditionMet(appStatisticsState.value!, appPreferencesState.value!, context);
    } else {
      debugPrint('AppStatistics State or AppPreferences State is not initialized yet');
    }
  }

  @override
  void didChangeRoute(RouteData routeData, Page<dynamic> page) {
    if (routeData.fullPath == '/home/daily') {
      _initTimer();
    } else {
      _disposeTimer();
    }
  }
}
