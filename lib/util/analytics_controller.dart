import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final analyticsControllerProvider = StateNotifierProvider<AnalyticsController, FirebaseAnalytics>((_) {
  final FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  return AnalyticsController(analytics);
});

class AnalyticsController extends StateNotifier<FirebaseAnalytics> {
  AnalyticsController(super._state);

  Future<void> logSignup() => state.logSignUp(signUpMethod: 'original');

  Future<void> logSelectMenu(int id) => state.logSelectContent(
    contentType: 'menu',
    itemId: id.toString(),
  );
}
