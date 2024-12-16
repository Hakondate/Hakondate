import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:hakondate/constant/app_key.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'analytics_controller.g.dart';

@riverpod
class AnalyticsController extends _$AnalyticsController {
  @override
  FirebaseAnalytics build() => FirebaseAnalytics.instance;

  Future<bool> _isNeedAnalysis() async {
    final isNeed = !await ref.read(isDeveloperProvider);
    return isNeed;
  }

  Future<void> logSignup() async {
    if (await _isNeedAnalysis()) {
      await state.logSignUp(signUpMethod: 'original');
    }
  }

  Future<void> logViewMenu(int id) async {
    if (await _isNeedAnalysis()) {
      await state.logSelectContent(
        contentType: 'menu',
        itemId: id.toString(),
      );
      await state.logScreenView(
        screenClass: 'Daily',
        screenName: id.toString(),
      );
    }
  }

  Future<void> logViewRecipe(int id) async {
    if (await _isNeedAnalysis()) {
      await state.logSelectContent(
        contentType: 'recipe',
        itemId: id.toString(),
      );
      await state.logScreenView(
        screenClass: 'Recipe',
        screenName: id.toString(),
      );
    }
  }

  Future<void> logViewDictionary(int id) async {
    if (await _isNeedAnalysis()) {
      await state.logSelectContent(
        contentType: 'dictionary_item',
        itemId: id.toString(),
      );
      await state.logScreenView(
        screenClass: 'Dictionary',
        screenName: id.toString(),
      );
    }
  }

  Future<void> logViewLetter(String path) async {
    if (await _isNeedAnalysis()) {
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
}

@Riverpod(keepAlive: true)
class IsDeveloper extends _$IsDeveloper {
  SharedPreferences? _prefs;

  @override
  Raw<Future<bool>> build() async {
    _prefs ??= await SharedPreferences.getInstance();

    final bool? sharedValue = _prefs?.getBool(AppKey.sharedPreferencesKey.isDeveloper);
    return sharedValue ?? false;
  }

  Future<void> setDeveloper({required bool value}) async {
    debugPrint('Hello Developer!');
    _prefs ??= await SharedPreferences.getInstance();
    await _prefs?.setBool(AppKey.sharedPreferencesKey.isDeveloper, value);
  }
}
