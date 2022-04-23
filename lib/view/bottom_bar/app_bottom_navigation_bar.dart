import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:routemaster/routemaster.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CupertinoTabPageState tabState = CupertinoTabPage.of(context);

    return CupertinoTabScaffold(
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
    );
  }
}
