import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'analytics_controller.g.dart';

@riverpod
class AnalyticsController extends _$AnalyticsController {
  @override
  FirebaseAnalytics build() => FirebaseAnalytics.instance;
  
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
      contentType: 'dictionary_item',
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
