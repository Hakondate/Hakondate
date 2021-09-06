import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate_v2/router/app_router_delegate.dart';

void main() {
  runApp(Hakondate());
}

class Hakondate extends StatelessWidget {
  final _routeInformationParser = ListRouteInformationParser();
  final _appRouterDelegate = AppRouterDelegate();

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp.router(
        title: 'はこんだて',
        theme: ThemeData(
          fontFamily: 'MPLUSRounded1c',
          primaryColor: Colors.white,
          accentColor: Colors.orangeAccent,
          primaryTextTheme:
              TextTheme(headline6: TextStyle(color: Color(0xFF373737))),
          accentTextTheme:
              TextTheme(bodyText2: TextStyle(color: Colors.blueAccent)),
          primaryIconTheme: IconThemeData(color: Colors.orangeAccent),
          textSelectionTheme: TextSelectionThemeData(
            selectionColor: Colors.blueAccent,
          ),
        ),
        routeInformationParser: _routeInformationParser,
        routerDelegate: _appRouterDelegate,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
