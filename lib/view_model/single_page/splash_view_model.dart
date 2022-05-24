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
import 'package:hakondate/util/app_unique_key.dart';
import 'package:hakondate/util/exception/connection_exception.dart';
import 'package:hakondate/view/component/dialog/exception_dialog/connection_exception_dialog.dart';
import 'package:hakondate/view/component/dialog/exception_dialog/local_database_exception_dialog.dart';
import 'package:hakondate/view/splash/terms_updated_dialog.dart';
import 'package:hakondate/view_model/multi_page/common_function.dart';
import 'package:hakondate/view_model/multi_page/user_view_model.dart';
import 'package:hakondate/view_model/single_page/daily_view_model.dart';
import 'package:hakondate/view_model/single_page/signup_view_model.dart';

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

  Future<void> loadSplash(BuildContext context) async {
    state = SplashState(status: LoadingStatus.reading);
    try {
      await _initializeSchool();
      state = SplashState(status: LoadingStatus.reading);

      if (!await _reader(userProvider.notifier).signIn()) {
        return routemaster.replace('/terms');
      }

      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final DateTime termsAgreedDay = DateTime.fromMillisecondsSinceEpoch(
          prefs.getInt(AppKey.sharedPreferencesKey.agreedTermsDay) ?? 0);

      if (termsAgreedDay.isBefore(RecordDate.termsLastUpdateDay)) {
        return await showDialog(
          context: context,
          barrierDismissible: false,
          builder: (_) => TermsUpdatedDialog(
            onTap: () {
              routemaster.pop();
              routemaster.replace('/terms');
            },
          ),
        );
      }

      await _initializeMenus();
      routemaster.replace('/home');
      state = SplashState(status: LoadingStatus.unloading);
    } on Exception catch (error, stack) {
      debugPrint(error.toString());
      debugPrint(stack.toString());
      state = SplashState.error(error: error);
      await _showErrorDialog(context);
    }
  }

  Future<void> loadSignup(BuildContext context) async {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      state = SplashState(status: LoadingStatus.updating);
      try {
        await _reader(userProvider.notifier).createUser(
          name: _reader(signupProvider.notifier).state.name!,
          schoolId: _reader(signupProvider.notifier).state.schoolId!,
          schoolYear: _reader(signupProvider.notifier).state.schoolYear!,
        );
        await _initializeMenus();
        routemaster.replace('/home');
        state = SplashState(status: LoadingStatus.unloading);
      } on Exception catch (error, stack) {
        debugPrint(error.toString());
        debugPrint(stack.toString());
        state = SplashState.error(error: error);
        await _showErrorDialog(context);
      }
    });
  }

  Future<void> _initializeSchool() async {
    List<dynamic> schools = [];
    state = SplashState(status: LoadingStatus.checkingUpdate);

    if (await _schoolsLocalRepository.count() == 0) {
      state = SplashState(status: LoadingStatus.updating);
      schools = await _schoolsRemoteRepository.downloadAllSchool();
    } else if (await _schoolsRemoteRepository.checkUpdate()) {
      state = SplashState(status: LoadingStatus.updating);
      schools = await _schoolsRemoteRepository.downloadUpdate();
    }

    await Future.forEach(schools, (dynamic school) async {
      await _schoolsLocalRepository.add(school);
    });
  }

  Future<void> _initializeMenus() async {
    state = SplashState(status: LoadingStatus.checkingUpdate);
    final int schoolId = _reader(userProvider.notifier).state.currentUser!.schoolId;
    final int parentId = await _reader(commonFunctionProvider.notifier).getParentId(schoolId);

    if (await _menusRemoteRepository.checkUpdate(parentId)) {
      state = SplashState(status: LoadingStatus.updating);
      List<dynamic> menus = await _menusRemoteRepository.downloadMenus();

      await Future.forEach(menus, (dynamic menu) async {
        await _menusLocalRepository.add(menu);
      });
    }

    await _reader(dailyProvider.notifier).updateSelectedDay();
    state = SplashState(status: LoadingStatus.reading);
  }

  Future<void> _showErrorDialog(BuildContext context) async {
    final SplashState cache = state;

    if (cache is! SplashStateError) return;

    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        if (cache.error is ConnectionException) {
          return ConnectionExceptionDialog(
            onTapRetry: () {
              routemaster.pop();
              state = SplashState();
              _reader(appUniqueKeyProvider.notifier).restartApp();
            },
          );
        }

        return LocalDatabaseExceptionDialog(
          onTapRetry: () {
            routemaster.pop();
            state = SplashState();
            _reader(appUniqueKeyProvider.notifier).restartApp();
          },
        );
      },
    );
  }
}
