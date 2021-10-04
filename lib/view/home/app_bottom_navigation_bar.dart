import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate_v2/router/home_router_delegate.dart';
import 'package:hakondate_v2/unit/size.dart';

class AppBottomNavigationBar extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _backButtonDispatcher = ChildBackButtonDispatcher(Router.of(context).backButtonDispatcher!);

    return WillPopScope(
      onWillPop: () => Future<bool>.value(true),
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          activeColor: Theme.of(context).colorScheme.secondary,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.local_dining,
                size: IconSize.navigationItem,
              ),
              label: 'こんだて',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.restaurant,
                size: IconSize.navigationItem,
              ),
              label: 'レシピ',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.book,
                size: IconSize.navigationItem,
              ),
              label: 'ずかん',
            ),
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) {
                  final _homeRouteInformationParser = HomeListRouteInformationParser();
                  final _homeRouterDelegate = HomeRouterDelegate();

                  return Router(
                    routeInformationParser: _homeRouteInformationParser,
                    routerDelegate: _homeRouterDelegate,
                    backButtonDispatcher: _backButtonDispatcher,
                  );
                },
              );
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) {
                  return Scaffold();
                },
              );
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) {
                  return Scaffold();
                },
              );
          }
          return Container();
        },
      ),
    );
  }
}
