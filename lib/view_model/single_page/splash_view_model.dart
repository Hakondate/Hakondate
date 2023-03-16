import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:hakondate/constant/app_key.dart';
import 'package:hakondate/constant/record_date.dart';
import 'package:hakondate/repository/local/sqlite/menus_local_repository.dart';
import 'package:hakondate/repository/local/sqlite/schools_local_repository.dart';
import 'package:hakondate/repository/remote/menus_remote_repository.dart';
import 'package:hakondate/repository/remote/schools_remote_repository.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/state/splash/splash_state.dart';
import 'package:hakondate/view_model/multi_page/user_view_model.dart';
import 'package:hakondate/view_model/single_page/daily_view_model.dart';

final AutoDisposeStateNotifierProvider<SplashViewModel, SplashState> splashProvider =
    StateNotifierProvider.autoDispose<SplashViewModel, SplashState>((AutoDisposeStateNotifierProviderRef<SplashViewModel, SplashState> ref) {
  final SchoolsLocalRepository schoolsLocalRepository = ref.watch(schoolsLocalRepositoryProvider);
  final SchoolsRemoteRepository schoolsRemoteRepository = ref.watch(schoolsRemoteRepositoryProvider);
  final MenusLocalRepository menusLocalRepository = ref.watch(menusLocalRepositoryProvider);
  final MenusRemoteRepository menusRemoteRepository = ref.watch(menusRemoteRepositoryProvider);
  return SplashViewModel(
    ref,
    schoolsLocalRepository,
    schoolsRemoteRepository,
    menusLocalRepository,
    menusRemoteRepository,
  );
});

class SplashViewModel extends StateNotifier<SplashState> {
  SplashViewModel(
      this._ref,
      this._schoolsLocalRepository,
      this._schoolsRemoteRepository,
      this._menusLocalRepository,
      this._menusRemoteRepository,
      ) : super(SplashState());

  final Ref _ref;
  final SchoolsLocalRepository _schoolsLocalRepository;
  final SchoolsRemoteRepository _schoolsRemoteRepository;
  final MenusLocalRepository _menusLocalRepository;
  final MenusRemoteRepository _menusRemoteRepository;

  Future<void> initialize({
    Future<void> Function()? termsUpdated,
    Future<void> Function(Exception, StackTrace)? errorOccurred,
  }) async {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      state = SplashState(status: LoadingStatus.reading);
      try {
        await _initializeSchools();

        state = SplashState(status: LoadingStatus.reading);
        if (!await _ref.read(userProvider.notifier).signIn()) {
          return routemaster.replace('/terms');
        }

        final SharedPreferences prefs = await SharedPreferences.getInstance();
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
        }

        await _initializeMenus();
        routemaster.replace('/home');
        state = SplashState();
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
  }

  Future<void> _initializeSchools() async {
    state = SplashState(status: LoadingStatus.reading);
    final DateTime latestUpdate = await _schoolsLocalRepository.getLatestUpdateDay();

    state = SplashState(status: LoadingStatus.checkingUpdate);
    final List<dynamic> schools = await _schoolsRemoteRepository.get(updateAt: latestUpdate);

    state = SplashState(status: LoadingStatus.updating);
    await Future.forEach(schools, (dynamic school) async {
      await _schoolsLocalRepository.add(school as Map<String, dynamic>);
    });
  }

  Future<void> _initializeMenus() async {
    state = SplashState(status: LoadingStatus.reading);
    final DateTime latestUpdate = await _menusLocalRepository.getLatestUpdateDay();

    state = SplashState(status: LoadingStatus.checkingUpdate);
    final List<dynamic> menus = await _menusRemoteRepository.get(updateAt: latestUpdate);

    state = SplashState(status: LoadingStatus.updating);
    await Future.forEach(menus, (dynamic menu) async {
      await _menusLocalRepository.add(menu as Map<String, dynamic>);
    });

    await _ref.read(dailyProvider.notifier).updateSelectedDay();
  }
}
