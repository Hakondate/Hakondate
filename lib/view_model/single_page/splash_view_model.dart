import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:hakondate/constant/app_key.dart';
import 'package:hakondate/constant/record_date.dart';
import 'package:hakondate/repository/local/menus_local_repository.dart';
import 'package:hakondate/repository/local/schools_local_repository.dart';
import 'package:hakondate/repository/remote/menus_remote_repository.dart';
import 'package:hakondate/repository/remote/schools_remote_repository.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/state/splash/splash_state.dart';
import 'package:hakondate/view_model/multi_page/common_function.dart';
import 'package:hakondate/view_model/multi_page/user_view_model.dart';
import 'package:hakondate/view_model/single_page/daily_view_model.dart';

final splashProvider = StateNotifierProvider.autoDispose<SplashViewModel, SplashState>((ref) {
  final SchoolsLocalRepository schoolsLocalRepository = ref.read(schoolsLocalRepositoryProvider);
  final SchoolsRemoteRepository schoolsRemoteRepository = ref.read(schoolsRemoteRepositoryProvider);
  final MenusLocalRepository menusLocalRepository = ref.read(menusLocalRepositoryProvider);
  final MenusRemoteRepository menusRemoteRepository = ref.read(menusRemoteRepositoryProvider);
  return SplashViewModel(
    ref.read,
    schoolsLocalRepository,
    schoolsRemoteRepository,
    menusLocalRepository,
    menusRemoteRepository,
  );
});

class SplashViewModel extends StateNotifier<SplashState> {
  SplashViewModel(
      this._reader,
      this._schoolsLocalRepository,
      this._schoolsRemoteRepository,
      this._menusLocalRepository,
      this._menusRemoteRepository,
      ) : super(SplashState());

  final Reader _reader;
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

        if (!await _reader(userProvider.notifier).signIn()) {
          return routemaster.replace('/terms');
        }

        final SharedPreferences prefs = await SharedPreferences.getInstance();
        final DateTime termsAgreedDay = DateTime.fromMillisecondsSinceEpoch(
            prefs.getInt(AppKey.sharedPreferencesKey.agreedTermsDay) ?? 0);

        if (termsAgreedDay.isBefore(RecordDate.termsLastUpdateDay)) {
          state = SplashState(status: LoadingStatus.unloading);
          if (termsUpdated != null) return await termsUpdated();
        }

        await _initializeMenus();
        routemaster.replace('/home');
        state = SplashState(status: LoadingStatus.unloading);
      } on Exception catch (error, stack) {
        debugPrint(error.toString());
        debugPrint(stack.toString());
        state = SplashState.error(error: error);

        if (errorOccurred != null) return await errorOccurred(error, stack);
      }
    });
  }

  Future<void> _initializeSchools() async {
    state = SplashState(status: LoadingStatus.updating);
    List<dynamic> schools = await _schoolsRemoteRepository.downloadUpdate();

    await Future.forEach(schools, (dynamic school) async {
      await _schoolsLocalRepository.add(school);
    });
  }

  Future<void> _initializeMenus() async {
    state = SplashState(status: LoadingStatus.checkingUpdate);
    final int schoolId = _reader(userProvider.notifier).state.currentUser!.schoolId;
    final int parentId = await _reader(commonFunctionProvider.notifier).getParentId(schoolId);

    state = SplashState(status: LoadingStatus.updating);
    List<dynamic> menus = await _menusRemoteRepository.get(
      schoolId: parentId,
    );

    await Future.forEach(menus, (dynamic menu) async {
      await _menusLocalRepository.add(menu);
    });

    await _reader(dailyProvider.notifier).updateSelectedDay();
    state = SplashState(status: LoadingStatus.reading);
  }
}
