import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:routemaster/routemaster.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/repository/remote/firebase_options.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/util/app_unique_key/app_unique_key.dart';

Future<void> main() async {
  await runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
      await initializeDateFormatting('ja_JP');
      await AppTrackingTransparency.requestTrackingAuthorization();
      if (Firebase.apps.isEmpty) {
        await Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        );
      }
      FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
      runApp(
        const ProviderScope(
          child: Hakondate(),
        ),
      );
    },
    (Object error, StackTrace stack) => FirebaseCrashlytics.instance.recordError(error, stack, fatal: true),
  );
}

class Hakondate extends StatelessWidget {
  const Hakondate({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData(
      appBarTheme: Theme.of(context).appBarTheme.copyWith(
            titleTextStyle: TextStyle(
              color: AppColor.text.appBarTitle,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'MPLUSRounded1c',
            ),
            iconTheme: IconThemeData(
              color: AppColor.brand.secondary,
            ),
            // elevation: 4,
            // shadowColor: AppColor.ui.shadow,
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
            background: AppColor.ui.white,
            surface: AppColor.ui.white,
            surfaceTint: AppColor.ui.white,
          ),
      scaffoldBackgroundColor: AppColor.ui.white,
    );

    return Consumer(
      builder: (BuildContext context, WidgetRef ref, _) {
        return MaterialApp.router(
          key: key ?? ref.watch(appUniqueKeyProvider),
          title: 'はこんだて',
          theme: theme.copyWith(
            // ignore: deprecated_member_use
            useMaterial3: false,
            colorScheme: theme.colorScheme.copyWith(
              primary: AppColor.brand.primary,
              secondary: AppColor.brand.secondary,
            ),
          ),
          routerDelegate: routemaster,
          routeInformationParser: const RoutemasterParser(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
