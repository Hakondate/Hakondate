import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate_v2/state/splash/splash_state.dart';
import 'package:hakondate_v2/view/component/frame/stateful_wrapper.dart';
import 'package:hakondate_v2/view_model/single_page/splash_view_model.dart';

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
                  switch (ref.watch(splashProvider).loadingStatus) {
                    case LoadingStatus.reading:
                      return Image.asset(
                          'assets/loading_animation/data_reading.gif');
                    case LoadingStatus.checkingUpdate:
                      return Image.asset(
                          'assets/loading_animation/checking.gif');
                    case LoadingStatus.updating:
                      return Image.asset(
                          'assets/loading_animation/data_updating.gif');
                    default:
                      return Container();
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}