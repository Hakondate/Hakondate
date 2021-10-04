import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate_v2/router/app_router_delegate.dart';

void main() {
  // 画面の縦固定
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);

  runApp(Hakondate());
}

class Hakondate extends StatelessWidget {
  final _routeInformationParser = ListRouteInformationParser();
  final _appRouterDelegate = AppRouterDelegate();

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData(
      fontFamily: 'MPLUSRounded1c',
      appBarTheme: AppBarTheme(
        foregroundColor: Color(0xFF373737),
        backgroundColor: Colors.white,
      ),
      textSelectionTheme: TextSelectionThemeData(selectionColor: Colors.blueAccent),
      primaryIconTheme: IconThemeData(color: Colors.orangeAccent)
    );

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
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
