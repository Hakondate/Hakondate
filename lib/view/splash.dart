import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate_v2/view_model/menu/menus_view_model.dart';
import 'package:hakondate_v2/view_model/user/user_view_model.dart';

class Splash extends ConsumerWidget {
  void _handleToHome() {}
  void _handleToTerms() {}

  Future<void> _initState(BuildContext context, WidgetRef ref) async {
    bool _isExistUser = await ref.read(userProvider.notifier).getUser();
    if (!_isExistUser) _handleToTerms();
    else {
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(userProvider);
    final menusState = ref.watch(menusProvider);

    final double _screenWidth = MediaQuery.of(context).size.width;

    _initState(context, ref);

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
                child: userState.user.when(
                    data: (user) {
                      ref.read(menusProvider.notifier).updateLocalMenus(user).then((_) {
                        final DateTime _day = DateTime.now();
                        ref.read(menusProvider.notifier).getLocalMenus(_day, user).then((_) {
                          _handleToHome();
                        });
                      });
                      menusState.menus.when(
                          data: (_) => {},
                          loading: () => Image.asset('assets/loading_animation/data_updating.gif'),
                          error: (error, stack) {}
                      );
                    },
                    loading: () => Image.asset('assets/loading_animation/data_reading.gif'),
                    error: (_, __) => Container(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
