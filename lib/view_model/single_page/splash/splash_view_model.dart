import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:hakondate/constant/app_key.dart';
import 'package:hakondate/constant/record_date.dart';
import 'package:hakondate/constant/version.dart';
import 'package:hakondate/model/menu/menu_model.dart';
import 'package:hakondate/model/school/school_model.dart';
import 'package:hakondate/repository/local/sqlite/dictionary_items/dictionary_items_local_repository.dart';
import 'package:hakondate/repository/local/sqlite/menus/menus_local_repository.dart';
import 'package:hakondate/repository/local/sqlite/schools/schools_local_repository.dart';
import 'package:hakondate/repository/remote/menus/menus_remote_repository.dart';
import 'package:hakondate/repository/remote/schools/schools_remote_repository.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/state/splash/splash_state.dart';
import 'package:hakondate/view_model/multi_page/user/user_view_model.dart';
import 'package:hakondate/view_model/single_page/daily/daily_view_model.dart';

part 'splash_view_model.g.dart';

@riverpod
class SplashViewModel extends _$SplashViewModel {
  late final SchoolsLocalRepositoryAPI _schoolsLocalRepository;
  late final SchoolsRemoteRepositoryAPI _schoolsRemoteRepository;
  late final MenusLocalRepositoryAPI _menusLocalRepository;
  late final MenusRemoteRepositoryAPI _menusRemoteRepository;
  late final DictionaryItemsLocalRepositoryAPI _dictionaryItemsLocalRepository;

  @override
  SplashState build() {
    _schoolsLocalRepository = ref.watch(schoolsLocalRepositoryProvider);
    _schoolsRemoteRepository = ref.watch(schoolsRemoteRepositoryProvider);
    _menusLocalRepository = ref.watch(menusLocalRepositoryProvider);
    _menusRemoteRepository = ref.watch(menusRemoteRepositoryProvider);
    _dictionaryItemsLocalRepository = ref.watch(dictionaryItemsLocalRepositoryProvider);

    return SplashState();
  }

  Future<void> initialize({
    Future<void> Function()? termsUpdated,
    Future<void> Function(Exception, StackTrace)? errorOccurred,
  }) async {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      state = SplashState(status: LoadingStatus.reading);
      try {
        await _initializeSchools();

        state = SplashState(status: LoadingStatus.reading);
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        final int migrateVersion = prefs.getInt(AppKey.sharedPreferencesKey.migrateVersion) ?? 0;

        if (migrateVersion < Version.migration) {
          await ref.read(userViewModelProvider.notifier).migrate();
          await prefs.setInt(AppKey.sharedPreferencesKey.migrateVersion, Version.migration);
        }

        if (!await ref.read(userViewModelProvider.notifier).signIn()) {
          return routemaster.replace('/terms');
        }

        if (!await ref.read(userViewModelProvider.notifier).isAuthorized()) {
          return routemaster.replace('/authorization');
        }

        final DateTime termsAgreedDay = DateTime.fromMillisecondsSinceEpoch(
          prefs.getInt(AppKey.sharedPreferencesKey.agreedTermsDay) ?? 0,
        );

        if (termsAgreedDay.isBefore(RecordDate.termsLastUpdateDay)) {
          state = SplashState();
          if (termsUpdated != null) return await termsUpdated();
        }

        final DateTime dictionaryInitializedDay = DateTime.fromMillisecondsSinceEpoch(
          prefs.getInt(AppKey.sharedPreferencesKey.initializedDictionaryDay) ?? 0,
        );

        if (dictionaryInitializedDay.isBefore(RecordDate.dictionaryLastUpdateDay)) {
          await _initializeDictionaries();
          await prefs.setInt(
            AppKey.sharedPreferencesKey.initializedDictionaryDay,
            DateTime.now().millisecondsSinceEpoch,
          );
        }

        await _initializeMenus();
        state = SplashState();
        routemaster.replace('/home');
      } on Exception catch (error, stack) {
        debugPrint(error.toString());
        debugPrint(stack.toString());
        state = SplashState.error(error: error);

        if (errorOccurred != null) return errorOccurred(error, stack);
      }
    });
  }

  Future<void> _initializeDictionaries() async {
    state = SplashState(status: LoadingStatus.reading);
    final String loadString = await rootBundle.loadString('assets/initialization_data/dictionary.json');
    final Map<String, dynamic> decodedJson = json.decode(loadString) as Map<String, dynamic>;
    final List<dynamic> dictionary = decodedJson['dictionary'] as List<dynamic>;

    state = SplashState(status: LoadingStatus.updating);
    await Future.forEach(dictionary, (dynamic item) async {
      await _dictionaryItemsLocalRepository.add(item as Map<String, dynamic>);
    });
  }

  Future<void> _initializeSchools() async {
    state = SplashState(status: LoadingStatus.reading);
    final DateTime latestUpdate = await _schoolsLocalRepository.getLatestUpdateDay();

    state = SplashState(status: LoadingStatus.checkingUpdate);
    final List<SchoolModel> schools = await _schoolsRemoteRepository.get(updateAt: latestUpdate.add(const Duration(seconds: 1)));

    state = SplashState(status: LoadingStatus.updating);
    await Future.forEach(schools, (SchoolModel school) async {
      await _schoolsLocalRepository.add(school);
    });
  }

  Future<void> _initializeMenus() async {
    state = SplashState(status: LoadingStatus.reading);
    final DateTime latestUpdate = await _menusLocalRepository.getLatestUpdateDay();

    state = SplashState(status: LoadingStatus.checkingUpdate);
    final List<MenuModel> menus = await _menusRemoteRepository.get(updateAt: latestUpdate.add(const Duration(seconds: 1)));

    state = SplashState(status: LoadingStatus.updating);
    await Future.forEach(menus, (MenuModel menu) async {
      await _menusLocalRepository.add(menu);
    });

    await ref.read(dailyViewModelProvider.notifier).updateSelectedDay();
  }
}
