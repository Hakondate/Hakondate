import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(Hakondate());
}

class Hakondate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
        child: MaterialApp(
          title: 'はこんだて',
          theme: ThemeData(
            fontFamily: 'MPLUSRounded1c',
            primaryColor: Colors.white,
            accentColor: Colors.orangeAccent,
            primaryTextTheme: TextTheme(headline6: TextStyle(color: Color(0xFF373737))),
            accentTextTheme: TextTheme(bodyText2: TextStyle(color: Colors.blueAccent)),
            primaryIconTheme: IconThemeData(color: Colors.orangeAccent),
            textSelectionTheme: TextSelectionThemeData(
                selectionColor: Colors.blueAccent,
            ),
          ),
          home: null,
          debugShowCheckedModeBanner: false,
        ),
    );
  }
}
