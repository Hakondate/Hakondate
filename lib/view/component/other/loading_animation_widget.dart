import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/router/routes.dart';
import 'package:hakondate/state/splash/splash_state.dart';
import 'package:hakondate/util/exception/connection_exception.dart';
import 'package:hakondate/util/exception/sqlite_exception.dart';
import 'package:hakondate/view/component/dialog/exception_dialog/connection_exception_dialog.dart';
import 'package:hakondate/view/component/frame/stateful_wrapper.dart';
import 'package:hakondate/view_model/single_page/splash_view_model.dart';

class LoadingAnimationWidget extends ConsumerWidget {
  const LoadingAnimationWidget({
    Key? key,
    this.isSplash = true,
  }) : super(key: key);

  final bool isSplash;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/splash.png',
            width: screenWidth / 6.0,
          ),
          SizedBox(
            width: screenWidth * 2.0 / 3.0,
            child: StatefulWrapper(
              onInit: () => (isSplash)
                  ? ref.read(splashProvider.notifier).loadSplash(context)
                  : ref.read(splashProvider.notifier).loadSignup(context),
              child: Builder(
                builder: (BuildContext context) {
                  final store = ref.watch(splashProvider);
                  if (store is SplashStateLoad) {
                    switch (store.status) {
                      case LoadingStatus.reading:
                        return Image.asset('assets/loading_animation/data_reading.gif');
                      case LoadingStatus.checkingUpdate:
                        return Image.asset('assets/loading_animation/checking.gif');
                      case LoadingStatus.updating:
                        return Image.asset('assets/loading_animation/data_updating.gif');
                      case LoadingStatus.unloading:
                        return Image.asset('assets/loading_animation/data_reading.gif');
                    }
                  }

                  return Image.asset('assets/loading_animation/data_reading.gif');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
