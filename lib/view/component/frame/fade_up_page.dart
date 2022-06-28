import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:routemaster/routemaster.dart';

class FadeUpPage extends TransitionBuilderPage<void> {
  const FadeUpPage({required super.child});

  @override
  PageTransition buildPopTransition(BuildContext context) {
    if (kIsWeb) {
      return PageTransition.none;
    }

    return PageTransition.fadeUpwards;
  }

  @override
  PageTransition buildPushTransition(BuildContext context) {
    if (kIsWeb) {
      return PageTransition.none;
    }

    return PageTransition.fadeUpwards;
  }
}
