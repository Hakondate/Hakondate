import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/view/component/frame/stateful_wrapper.dart';
import 'package:hakondate/view_model/single_page/splash_view_model.dart';

class LoadingAnimationWidget extends ConsumerWidget {
  const LoadingAnimationWidget({
    super.key,
    this.isSplash = true,
  });

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
                builder: (context) => Image.asset(ref.watch(splashProvider).loadingStatus.imagePath),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
