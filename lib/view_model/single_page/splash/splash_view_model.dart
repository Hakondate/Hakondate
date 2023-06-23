import 'package:flutter/material.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:hakondate/constant/app_key.dart';
import 'package:hakondate/constant/record_date.dart';
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
  late final SchoolsLocalRepository _schoolsLocalRepository;
  late final SchoolsRemoteRepository _schoolsRemoteRepository;
  late final MenusLocalRepository _menusLocalRepository;
  late final MenusRemoteRepository _menusRemoteRepository;

  @override
  SplashState build() {
    _schoolsLocalRepository = ref.watch(schoolsLocalRepositoryProvider);
    _schoolsRemoteRepository = ref.watch(schoolsRemoteRepositoryProvider);
    _menusLocalRepository = ref.watch(menusLocalRepositoryProvider);
    _menusRemoteRepository = ref.watch(menusRemoteRepositoryProvider);

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
        if (!await ref.read(userViewModelProvider.notifier).signIn()) {
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

  Future<void> _initializeSchools() async {
    state = SplashState(status: LoadingStatus.reading);
    final DateTime latestUpdate = await _schoolsLocalRepository.getLatestUpdateDay();

    state = SplashState(status: LoadingStatus.checkingUpdate);
    final List<dynamic> schools = await _schoolsRemoteRepository.get(updateAt: latestUpdate.add(const Duration(seconds: 1)));

    state = SplashState(status: LoadingStatus.updating);
    await Future.forEach(schools, (dynamic school) async {
      await _schoolsLocalRepository.add(school as Map<String, dynamic>);
    });
  }

  Future<void> _initializeMenus() async {
    state = SplashState(status: LoadingStatus.reading);
    final DateTime latestUpdate = await _menusLocalRepository.getLatestUpdateDay();

    state = SplashState(status: LoadingStatus.checkingUpdate);
    final List<dynamic> menus = await _menusRemoteRepository.get(updateAt: latestUpdate.add(const Duration(seconds: 1)));

    state = SplashState(status: LoadingStatus.updating);
    await Future.forEach(menus, (dynamic menu) async {
      await _menusLocalRepository.add(menu as Map<String, dynamic>);
    });

    await ref.read(dailyViewModelProvider.notifier).updateSelectedDay();
  }
}