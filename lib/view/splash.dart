import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate_v2/view_model/menu/menus_view_model.dart';
import 'package:hakondate_v2/view_model/user/user_view_model.dart';

class Splash extends ConsumerWidget {
  Stream<String> _initialData(BuildContext context, WidgetRef ref) async* {
    try {
      await ref.read(userProvider.notifier).getUser();
      if (ref.read(userProvider.notifier).isExistUser()) {
        yield 'CheckingUpdate';
        if (await ref.read(menusProvider.notifier).checkUpdate()) {
          yield 'Updating';
          await ref.read(menusProvider.notifier).updateLocalMenus(ref.watch(userProvider).user);
        }
        final DateTime _loadingDay = DateTime(DateTime.now().year, DateTime.now().month);
        await ref.read(menusProvider.notifier).getLocalMenus(_loadingDay, ref.watch(userProvider).user);
        // TODO: ホーム画面への遷移
      } else {
        // TODO: 新規登録画面への遷移
      }
    } catch (error) {
      debugPrint(error.toString());
      _showErrorDialog(context);
    }
  }

  void _showErrorDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: Text('通信エラー'),
            content: Text('データの更新に失敗しました．データの更新をせず利用する場合は"このまま利用"を選択してください．'),
            actions: [
              CupertinoDialogAction(
                child: Text('このまま利用'),
                onPressed: () {},
              ),
              CupertinoDialogAction(
                isDefaultAction: true,
                child: Text('リトライ'),
                onPressed: () {},
              )
            ],
          );
        }
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double _screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        color: Color(0xffFFBF7F),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/splash.png', width: _screenWidth / 6.0),
              SizedBox(
                width: _screenWidth * 2.0 / 3.0,
                child: StreamBuilder(
                  stream: _initialData(context, ref),
                  initialData: 'CheckingUserData',
                  builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                    if (snapshot.connectionState != ConnectionState.done) {
                      Widget _widget = Container();
                      switch (snapshot.data) {
                        case 'CheckingUserData':
                          _widget = Image.asset('assets/loading_animation/data_reading.gif');
                          break;
                        case 'CheckingUpdate':
                          _widget = Image.asset('assets/loading_animation/checking.gif');
                          break;
                        case 'Updating':
                          _widget = Image.asset('assets/loading_animation/data_updating.gif');
                          break;
                      }
                      return _widget;
                    }
                    return Image.asset('assets/loading_animation/data_reading.gif');
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