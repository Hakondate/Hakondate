import 'package:flutter/material.dart';

import 'package:firebase_analytics/firebase_analytics.dart';

class DeveloperModeSnackbar extends SnackBar {
  DeveloperModeSnackbar({super.key})
      : super(
          content: const Text('開発者モード起動'),
          action: SnackBarAction(
            label: '戻す',
            onPressed: () async {
              await FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(true);
            },
          ),
        );
}
