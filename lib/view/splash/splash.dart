import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate_v2/router/routes.dart';
import 'package:hakondate_v2/view_model/multi_page/menus_view_model.dart';
import 'package:hakondate_v2/view_model/multi_page/school_view_model.dart';
import 'package:hakondate_v2/view_model/multi_page/loading_view_model.dart';
import 'package:hakondate_v2/view_model/multi_page/user_view_model.dart';
import 'package:hakondate_v2/view_model/single_page/home_view_model.dart';

class Splash extends ConsumerWidget {
  const Splash({Key? key}) : super(key: key);

  Stream<String> _initialData(BuildContext context, WidgetRef ref) async* {
    yield 'Reading';
    try {
      await for (final status
          in ref.read(schoolProvider.notifier).initialize()) {
        yield status;
      }

      if (!await ref.read(userProvider.notifier).checkSignedUp()) {
        routemaster.replace('/terms');

        return;
      }

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

  /*
  * いくつか重なって表示されるので変数でErrorDialogを表示しているかを管理
  * 原因はStreamBuilderが読み込み時に複数回呼ばれることだと思う
  *  参考: https://stackoverflow.com/questions/57562407/flutter-streambuilder-called-twice-when-initialized
  */
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
                await ref.read(menusProvider.notifier).getLocalMenus(
                  DateTime(DateTime.now().year, DateTime.now().month),
                  ref.watch(userProvider).currentUser!.schoolId,
                );
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

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        color: const Color(0xffFFBF7F),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/splash.png',
                width: screenWidth / 6.0,
              ),
              SizedBox(
                width: screenWidth * 2.0 / 3.0,
                child: StreamBuilder(
                  stream: _initialData(context, ref),
                  initialData: 'Reading',
                  builder:
                      (BuildContext context, AsyncSnapshot<String> snapshot) {
                    if (snapshot.connectionState != ConnectionState.done) {
                      switch (snapshot.data) {
                        case 'Reading':
                          return Image.asset(
                              'assets/loading_animation/data_reading.gif');
                        case 'CheckingUpdate':
                          return Image.asset(
                              'assets/loading_animation/checking.gif');
                        case 'Updating':
                          return Image.asset(
                              'assets/loading_animation/data_updating.gif');
                      }
                      return Container();
                    }
                    return Image.asset(
                        'assets/loading_animation/data_reading.gif');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
