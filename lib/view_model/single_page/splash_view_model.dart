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
import 'package:hakondate/view/component/dialog/hakondate_dialog/hakondate_dialog.dart';
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
      ) : super(const SplashState());

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

      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final DateTime termsAgreedDay = DateTime.fromMillisecondsSinceEpoch(
          prefs.getInt(AppKey.sharedPreferencesKey.agreedTermsDay) ?? 0);

      if (termsAgreedDay.isBefore(RecordDate.termsLastUpdateDay)) {
        return await showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) => HakondateDialog(
            title: const Text('お知らせ'),
            body: const Text('利用規約が更新されました\n本サービスを利用するためには再度同意していただく必要があります'),
            firstAction: HakondateActionButton(
              text: const Text('利用規約を見る'),
              isPrimary: true,
              onTap: () {
                routemaster.pop();
                routemaster.replace('/terms');
              },
            ),
          ),
        );
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

    await _reader(dailyProvider.notifier).updateSelectedDay();
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
        barrierDismissible: false,
        builder: (BuildContext context) {
          return HakondateDialog(
            title: const Text('通信エラー'),
            body: const Text('データの更新に失敗しました．データの更新をせず利用する場合は"このまま利用"を選択してください．'),
            firstAction: HakondateActionButton(
              isPrimary: true,
              text: const Text('リトライ'),
              onTap: () {
                routemaster.pop();
                loadSplash(context);
              },
            ),
            secondAction: HakondateActionButton(
              text: const Text('このまま利用'),
              onTap: () async {
                await _useAsIs();
                routemaster.pop();
              },
            ),
          );
        },
      );
    });
  }

  Future<void> _useAsIs() async {
    if (await _reader(userProvider.notifier).checkSignedUp()) {
      await _reader(dailyProvider.notifier).updateSelectedDay();
      routemaster.replace('/home');
    } else {
      routemaster.replace('/terms');
    }
  }
}
