import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:routemaster/routemaster.dart';

import 'package:hakondate/view/bottom_bar/daily_drawer.dart';
import 'package:hakondate/view_model/multi_page/drawer_view_model.dart';

class AppBottomNavigationBar extends ConsumerWidget {
  const AppBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final CupertinoTabPageState tabState = CupertinoTabPage.of(context);

    return Scaffold(
      key: ref.watch(drawerProvider).scaffoldKey,
      body: CupertinoTabScaffold(
        controller: tabState.controller,
        tabBuilder: tabState.tabBuilder,
        tabBar: CupertinoTabBar(
          height: MarginSize.kTabBarHeight,
          activeColor: AppColor.brand.secondary,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.local_dining,
                size: IconSize.navigationItem,
              ),
              label: 'こんだて',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.restaurant,
                size: IconSize.navigationItem,
              ),
              label: 'レシピ',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.book,
                size: IconSize.navigationItem,
              ),
              label: 'ずかん',
            ),
          ],
        ),
      ),
      drawer: const DailyDrawer(),
    );
  }
}
