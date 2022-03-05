import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate_v2/router/routes.dart';
import 'package:hakondate_v2/state/splash/splash_state.dart';
import 'package:hakondate_v2/repository/local/schools_local_repository.dart';
import 'package:hakondate_v2/repository/remote/schools_remote_repository.dart';
import 'package:hakondate_v2/repository/local/menus_local_repository.dart';
import 'package:hakondate_v2/repository/remote/menus_remote_repository.dart';
import 'package:hakondate_v2/view_model/multi_page/user_view_model.dart';
import 'package:hakondate_v2/view_model/single_page/home_view_model.dart';
import 'package:hakondate_v2/view_model/single_page/signup_view_model.dart';

final splashProvider = StateNotifierProvider<SplashViewModel, SplashState>(
    (ref) => SplashViewModel(ref.read));

class SplashViewModel extends StateNotifier<SplashState> {
  SplashViewModel(this._reader)
      : _schoolsLocalRepository = SchoolsLocalRepository(),
        _schoolsRemoteRepository = SchoolsRemoteRepository(),
        _menusLocalRepository = MenusLocalRepository(),
        _menusRemoteRepository = MenusRemoteRepository(),
        super(const SplashState());

  final Reader _reader;
  final SchoolsLocalRepository _schoolsLocalRepository;
  final SchoolsRemoteRepository _schoolsRemoteRepository;
  final MenusLocalRepository _menusLocalRepository;
  final MenusRemoteRepository _menusRemoteRepository;

  Future<void> loadSplash(BuildContext context) async {
    state = state.copyWith(loadingStatus: LoadingStatus.reading);
    try {
      await _initializeSchool();

      if (!await _reader(userProvider.notifier).checkSignedUp()) {
        return routemaster.replace('/terms');
      }

      await _initializeMenus();
      routemaster.replace('/home');
      state = state.copyWith(loadingStatus: LoadingStatus.unloading);
    } catch (error) {
      await _handleError(error, context);
    }
  }

  Future<void> loadSignup(BuildContext context) async {
    WidgetsBinding.instance!.addPostFrameCallback((_) async {
      state = state.copyWith(loadingStatus: LoadingStatus.updating);
      try {
        await _reader(userProvider.notifier).createUser(
          name: _reader(signupProvider.notifier).state.name!,
          schoolId: _reader(signupProvider.notifier).state.schoolId!,
          schoolYear: _reader(signupProvider.notifier).state.schoolYear!,
        );
        await _initializeMenus();
        routemaster.replace('/home');
        state = state.copyWith(loadingStatus: LoadingStatus.unloading);
      } catch (error) {
        await _handleError(error, context);
      }
    });
  }

  Future<void> _initializeSchool() async {
    List<dynamic> schools = [];
    state = state.copyWith(loadingStatus: LoadingStatus.checkingUpdate);

    if (await _schoolsLocalRepository.count() == 0) {
      state = state.copyWith(loadingStatus: LoadingStatus.updating);
      schools = await _schoolsRemoteRepository.downloadAllSchool();
    } else if (await _schoolsRemoteRepository.checkUpdate()) {
      state = state.copyWith(loadingStatus: LoadingStatus.updating);
      schools = await _schoolsRemoteRepository.downloadUpdate();
    }

    await Future.forEach(schools, (dynamic school) async {
      await _schoolsLocalRepository.add(school);
    });

    state = state.copyWith(loadingStatus: LoadingStatus.reading);
  }

  Future<void> _initializeMenus() async {
    final int schoolId =
        _reader(userProvider.notifier).state.currentUser!.schoolId;
    state = state.copyWith(loadingStatus: LoadingStatus.checkingUpdate);

    if (await _menusRemoteRepository.checkUpdate(schoolId)) {
      state = state.copyWith(loadingStatus: LoadingStatus.updating);
      List<dynamic> menus = await _menusRemoteRepository.downloadMenus();

      await Future.forEach(menus, (dynamic menu) async {
        await _menusLocalRepository.add(menu);
      });
    }

    await _reader(homeProvider.notifier).updateSelectedDay(
      schoolId: schoolId,
    );
    state = state.copyWith(loadingStatus: LoadingStatus.reading);
  }

  Future<void> _handleError(Object error, BuildContext context) async {
    debugPrint(error.toString());

    if (!state.isErrorOccurring) {
      state = state.copyWith(isErrorOccurring: true);
      await _showErrorDialog(context);
      state = state.copyWith(
        loadingStatus: LoadingStatus.unloading,
        isErrorOccurring: false,
      );
    }
  }

  Future<void> _showErrorDialog(BuildContext context) async {
    WidgetsBinding.instance!.addPostFrameCallback((_) async {
      await showDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: const Text('通信エラー'),
            content: const Text('データの更新に失敗しました．データの更新をせず利用する場合は"このまま利用"を選択してください．'),
            actions: [
              CupertinoDialogAction(
                child: const Text('このまま利用'),
                onPressed: () async {
                  await _useAsIs();
                  Navigator.of(context).pop();
                },
              ),
              CupertinoDialogAction(
                isDefaultAction: true,
                child: const Text('リトライ'),
                onPressed: () {
                  Navigator.of(context).pop();
                  loadSplash(context);
                },
              ),
            ],
          );
        },
      );
    });
  }

  Future<void> _useAsIs() async {
    final currentUser = _reader(userProvider.notifier).state.currentUser;
    if (await _reader(userProvider.notifier).checkSignedUp()) {
      await _reader(homeProvider.notifier).updateSelectedDay(
        schoolId: currentUser!.schoolId,
      );
      routemaster.replace('/home');
    } else {
      routemaster.replace('/terms');
    }
  }
}
