import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate_v2/router/home_navigation_state_notifier.dart';

class HomeRouterDelegate extends RouterDelegate<List<RouteSettings>>
    with PopNavigatorRouterDelegateMixin {
  @override
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  bool _handlePopPage(Route<dynamic> route, dynamic result, WidgetRef ref) {
    final store = ref.watch(homeRouterProvider);

    if (!route.didPop(result)) {
      if (store.selectedMenuId != store.todayMenuId)
        ref.read(homeRouterProvider.notifier)
            .handleFromHome(menuId: store.todayMenuId);

      return false;
    }

    if (store.selectedDishId != null)
      ref.read(homeRouterProvider.notifier).handleFromDish();
    else if (store.isShowMenuList)
      ref.read(homeRouterProvider.notifier).handleFromMenuList();

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, _) {
        final _router = ref.watch(homeRouterProvider);

        return Navigator(
          key: navigatorKey,
          onPopPage:(Route<dynamic> route, dynamic result) =>
              _handlePopPage(route, result, ref),
          pages: [
            MaterialPage(
              key: ValueKey('home'),
              child: Scaffold(),
            ),
            if (_router.isShowMenuList)
              MaterialPage(
                key: ValueKey('menuList'),
                child: Scaffold(),
              ),
            if (_router.selectedDishId != null)
              MaterialPage(
                key: ValueKey('dish${_router.selectedDishId.toString()}'),
                child: Scaffold(),
              ),
          ],
        );
      },
    );
  }

  @override
  void addListener(VoidCallback listener) {}
  @override
  void removeListener(VoidCallback listener) {}
  @override
  Future<void> setNewRoutePath(List<RouteSettings> configuration) async {}
}

class HomeListRouteInformationParser extends RouteInformationParser<List<RouteSettings>> {
  @override
  Future<List<RouteSettings>> parseRouteInformation(RouteInformation routeInformation) async => [];
}
