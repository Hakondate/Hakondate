import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate_v2/router/routes.dart';
import 'package:hakondate_v2/unit/enum.dart';
import 'package:hakondate_v2/view_model/multi_page/menus_view_model.dart';
import 'package:hakondate_v2/view_model/multi_page/loading_view_model.dart';
import 'package:hakondate_v2/view_model/multi_page/user_view_model.dart';
import 'package:hakondate_v2/view_model/single_page/home_view_model.dart';
import 'package:hakondate_v2/view_model/single_page/signup_view_model.dart';

class LoadingDialog {
  LoadingDialog(BuildContext context) {
    final _screenWidth = MediaQuery.of(context).size.width;

    showGeneralDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: Colors.black.withOpacity(0.5),
      pageBuilder: (BuildContext context, _, __) {
        return Consumer(
          builder: (BuildContext context, WidgetRef ref, _) {
            return Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/splash.png',
                    width: _screenWidth / 6.0,
                  ),
                  SizedBox(
                    width: _screenWidth * 2.0 / 3.0,
                    child: StreamBuilder(
                      stream: _load(context, ref),
                      initialData: LoadingStatus.reading,
                      builder: (BuildContext context,
                          AsyncSnapshot<LoadingStatus> snapshot) {
                        if (snapshot.connectionState != ConnectionState.done) {
                          switch (snapshot.data) {
                            case LoadingStatus.reading:
                              return Image.asset('assets/loading_animation/data_reading.gif');
                            case LoadingStatus.checkingUpdate:
                              return Image.asset('assets/loading_animation/checking.gif');
                            case LoadingStatus.updating:
                              return Image.asset('assets/loading_animation/data_updating.gif');
                            default:
                              return Container();
                          }
                        }
                        return Image.asset(
                            'assets/loading_animation/data_reading.gif');
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Stream<LoadingStatus> _load(BuildContext context, WidgetRef ref) async* {
    final store = ref.watch(signupProvider);

    yield LoadingStatus.updating;
    try {
      await ref.read(userProvider.notifier).createUser(
            name: store.name!,
            schoolId: store.schoolId!,
            schoolYear: store.schoolYear!,
          );
      await for (final status in ref
          .read(menusProvider.notifier)
          .initialize(ref.watch(userProvider).currentUser!.schoolId)) {
        yield status;
      }
      await ref.read(homeProvider.notifier).updateSelectedDay(
        schoolId: ref.watch(userProvider).currentUser!.schoolId,
      );
      routemaster.replace('/home');
    } catch (error) {
      debugPrint(error.toString());

      if (!ref.watch(loadingProvider).isShowErrorDialog) {
        ref.read(loadingProvider.notifier).activeErrorDialog();
        await _showErrorDialog(context, ref);
      }

      return;
    }
  }

  Future<void> _showErrorDialog(BuildContext context, WidgetRef ref) async {
    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: const Text('通信エラー'),
          content: const Text('データの更新に失敗しました．データの更新をせず利用する場合は"このまま利用"を選択してください．'),
          actions: [
            CupertinoDialogAction(
              child: const Text('このまま利用'),
              onPressed: () async {
                final DateTime _loadingDay =
                    DateTime(DateTime.now().year, DateTime.now().month);
                await ref.read(menusProvider.notifier).getLocalMenus(
                    _loadingDay, ref.watch(userProvider).currentUser!.schoolId);
                ref.read(loadingProvider.notifier).popErrorDialog();
                routemaster.replace('/home');
              },
            ),
            CupertinoDialogAction(
              isDefaultAction: true,
              child: const Text('リトライ'),
              onPressed: () {
                ref.read(loadingProvider.notifier).popErrorDialog();
                routemaster.replace('/splash');
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
