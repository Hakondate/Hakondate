import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final analyticsControllerProvider = StateNotifierProvider<AnalyticsController, FirebaseAnalytics>((_) {
  final FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  return AnalyticsController(analytics);
});

class AnalyticsController extends StateNotifier<FirebaseAnalytics> {
  AnalyticsController(super._state);

  Future<void> logSignup() => state.logSignUp(signUpMethod: 'original');

  Future<void> logViewMenu(int id) async {
    await state.logSelectContent(
      contentType: 'menu',
      itemId: id.toString(),
    );
    await state.logScreenView(
      screenClass: 'Daily',
      screenName: id.toString(),
    );
  }

  Future<void> logViewRecipe(int id) async {
    await state.logSelectContent(
      contentType: 'recipe',
      itemId: id.toString(),
    );
    await state.logScreenView(
      screenClass: 'Recipe',
      screenName: id.toString(),
    );
  }

  Future<void> logViewDictionary(int id) async {
    await state.logSelectContent(
      contentType: 'foodstuff',
      itemId: id.toString(),
    );
    await state.logScreenView(
      screenClass: 'Dictionary',
      screenName: id.toString(),
    );
  }

  Future<void> logViewLetter(String path) async {
    await state.logSelectContent(
      contentType: 'letter',
      itemId: path,
    );
    await state.logScreenView(
      screenClass: 'Letter',
      screenName: path,
    );
  }
}
