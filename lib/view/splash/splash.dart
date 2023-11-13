import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/state/splash/splash_state.dart';
import 'package:hakondate/util/app_unique_key/app_unique_key.dart';
import 'package:hakondate/util/exception/connection_exception.dart';
import 'package:hakondate/view/component/dialog/exception_dialog/connection_exception_dialog.dart';
import 'package:hakondate/view/component/dialog/exception_dialog/local_database_exception_dialog.dart';
import 'package:hakondate/view/component/frame/stateful_wrapper.dart';
import 'package:hakondate/view/splash/terms_updated_dialog.dart';
import 'package:hakondate/view_model/single_page/splash/splash_view_model.dart';

class Splash extends ConsumerWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColor.brand.secondaryLight,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/splash.png',
              width: screenWidth / 6.0,
            ),
            StatefulWrapper(
              onInit: () => ref.read(splashViewModelProvider.notifier).initialize(
                    termsUpdated: () async => showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (_) => TermsUpdatedDialog(
                        onTap: () {
                          routemaster..pop()..replace('/terms');
                        },
                      ),
                    ),
                    errorOccurred: (Exception error, _) async => showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        if (error is ConnectionException) {
                          return ConnectionExceptionDialog(
                            onTapRetry: () => routemaster.pop().whenComplete(() =>
                            ref.read(appUniqueKeyProvider.notifier).restartApp(),
                                ),
                          );
                        }

                        return LocalDatabaseExceptionDialog(
                          onTapRetry: () => routemaster.pop().whenComplete(() =>
                          ref.read(appUniqueKeyProvider.notifier).restartApp(),
                              ),
                        );
                      },
                    ),
                  ),
              child: SizedBox(
                width: screenWidth * 2.0 / 3.0,
                child: Builder(
                  builder: (BuildContext context) {
                    final SplashState state = ref.watch(splashViewModelProvider);
                    if (state is SplashStateLoad) return Image.asset(state.status.imagePath);
                                        return Image.asset('assets/loading_animation/data_reading.gif');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
