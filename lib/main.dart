import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate_v2/router/app_router_delegate.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(const Hakondate());
}

class Hakondate extends StatelessWidget {
  const Hakondate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _routeInformationParser = ListRouteInformationParser();
    final _appRouterDelegate = AppRouterDelegate();
    final _backButtonDispatcher = RootBackButtonDispatcher();
    final ThemeData theme = ThemeData(
        fontFamily: 'MPLUSRounded1c',
        appBarTheme: const AppBarTheme(
          foregroundColor: Color(0xFF373737),
          backgroundColor: Colors.white,
        ),
        textSelectionTheme:
            const TextSelectionThemeData(selectionColor: Colors.blueAccent),
        primaryIconTheme: const IconThemeData(color: Colors.orangeAccent));

    return ProviderScope(
      child: MaterialApp.router(
        title: 'はこんだて',
        theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(
            primary: Colors.white,
            secondary: Colors.orangeAccent,
          ),
        ),
        routeInformationParser: _routeInformationParser,
        routerDelegate: _appRouterDelegate,
        backButtonDispatcher: _backButtonDispatcher,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
