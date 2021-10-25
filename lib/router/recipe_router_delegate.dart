import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate_v2/router/recipe_navigation_state_notifier.dart';
import 'package:hakondate_v2/view/recipe/recipe_list.dart';

class RecipeRouterDelegate extends RouterDelegate<List<RouteSettings>>
    with PopNavigatorRouterDelegateMixin {
  @override
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  bool _handlePopPage(Route<dynamic> route, dynamic result, WidgetRef ref) {
    if (!route.didPop(result)) return false;

    return true;
  }

  @override
  Widget build(BuildContext context){
    return Consumer(
        builder: (BuildContext context, WidgetRef ref, _) {
          final _router = ref.watch(recipeRouterProvider);

          return Navigator(
            key: navigatorKey,
            onPopPage: (Route<dynamic> route, dynamic result) =>
                _handlePopPage(route, result, ref),
            pages: [
              MaterialPage(
                key: ValueKey('recipe'),
                child: RecipeList(),
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

class RecipeListRouteInformationParser
    extends RouteInformationParser<List<RouteSettings>> {
  @override
  Future<List<RouteSettings>> parseRouteInformation(
      RouteInformation routeInformation) async =>
      [];
}