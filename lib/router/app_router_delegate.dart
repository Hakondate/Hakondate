import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate_v2/router/app_navigator_state_notifier.dart';
import 'package:hakondate_v2/view/bottom_bar/app_bottom_navigation_bar.dart';
import 'package:hakondate_v2/view/signup/signup.dart';
import 'package:hakondate_v2/view/splash/splash.dart';
import 'package:hakondate_v2/view/terms/terms.dart';

class AppRouterDelegate extends RouterDelegate<List<RouteSettings>>
    with PopNavigatorRouterDelegateMixin {
  @override
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  bool _handlePopPage(Route<dynamic> route, dynamic result, WidgetRef ref) {
    if (!route.didPop(result)) return false;

    final _router = ref.watch(appRouterProvider);
    if (_router.isShowSetting || _router.isShowAboutUs || _router.isShowHelp) {
      ref.read(appRouterProvider.notifier).handleToHome();
    }

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (BuildContext context, WidgetRef ref, _) {
      final _router = ref.watch(appRouterProvider);

      return Navigator(
        key: navigatorKey,
        onPopPage: (Route<dynamic> route, dynamic result) =>
            _handlePopPage(route, result, ref),
        pages: [
          if (_router.isInitialLoading) ...[
            const MaterialPage(
              key: ValueKey('splash'),
              child: Splash(),
            ),
          ] else if (_router.isShowTerms) ...[
            const MaterialPage(
              key: ValueKey('terms'),
              child: Terms(),
            ),
          ] else if (_router.isShowSignup) ...[
            MaterialPage(
              key: const ValueKey('signup'),
              child: Signup(),
            ),
          ] else ...[
            const MaterialPage(
              key: ValueKey('bottomBar'),
              child: AppBottomNavigationBar(),
            ),
            if (_router.isShowSetting)
              const MaterialPage(
                key: ValueKey('setting'),
                child: Scaffold(),
              ),
            if (_router.isShowAboutUs)
              const MaterialPage(
                key: ValueKey('aboutUs'),
                child: Scaffold(),
              ),
            if (_router.isShowHelp)
              const MaterialPage(
                key: ValueKey('help'),
                child: Scaffold(),
              ),
          ],
        ],
      );
    });
  }

  /*
  * 主にWebやディープリンク(OSからの通知で起動など)用
  * 使わなくても宣言しなくてはいけないので記述
  */
  @override
  void addListener(VoidCallback listener) {}
  @override
  void removeListener(VoidCallback listener) {}
  @override
  Future<void> setNewRoutePath(List<RouteSettings> configuration) async {}
}

/*
* WebのURL制御などに使う
* はこんだてはモバイル限定なので空のものを宣言
*/
class ListRouteInformationParser
    extends RouteInformationParser<List<RouteSettings>> {
  @override
  Future<List<RouteSettings>> parseRouteInformation(
          RouteInformation routeInformation) async =>
      [];
}
