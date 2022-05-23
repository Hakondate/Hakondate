import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:routemaster/routemaster.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/router/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await initializeDateFormatting('ja_JP');
  runApp(const Hakondate());
}

class Hakondate extends StatelessWidget {
  const Hakondate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData(
      appBarTheme: Theme.of(context).appBarTheme.copyWith(
        titleTextStyle: TextStyle(
          color: AppColor.text.appBarTitle,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: IconThemeData(
          color: AppColor.brand.secondary,
        ),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      primaryIconTheme: Theme.of(context).primaryIconTheme.copyWith(
        color: AppColor.brand.secondary,
      ),
      textTheme: Theme.of(context).textTheme.apply(
        fontFamily: 'MPLUSRounded1c',
        displayColor: AppColor.text.primary,
        bodyColor: AppColor.text.primary,
      ),
      colorScheme: Theme.of(context).colorScheme.copyWith(
        primary: AppColor.brand.primary,
        secondary: AppColor.brand.secondary,
      ),
    );

    return ProviderScope(
      child: MaterialApp.router(
        title: 'はこんだて',
        theme: theme,
        routerDelegate: routemaster,
        routeInformationParser: const RoutemasterParser(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
