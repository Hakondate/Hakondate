import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/view_model/multi_page/scroll/scroll_view_model.dart';
import 'package:routemaster/routemaster.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/constant/svg_path.dart';
import 'package:hakondate/util/environment.dart';
import 'package:hakondate/view/daily/daily_drawer.dart';
import 'package:hakondate/view_model/multi_page/bottom_bar/app_bottom_navigation_bar_view_model.dart';
import 'package:hakondate/view_model/multi_page/drawer/drawer_view_model.dart';

class AppBottomNavigationBar extends ConsumerWidget {
  const AppBottomNavigationBar({super.key});
  static const int dailyIndex = 0;
  static const int recipesIndex = 1;
  static const int dictionaryIndex = 2;
  static const int letterIndex = 3;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TabPageState tabState = TabPage.of(context);

    return Scaffold(
      key: ref.watch(drawerViewModelProvider).scaffoldKey,
      drawer: const DailyDrawer(),
      drawerEnableOpenDragGesture: false,
      body: TabBarView(
        controller: tabState.controller,
        physics: const NeverScrollableScrollPhysics(),
        children: <Widget>[
          for (final PageStack stack in tabState.stacks) PageStackNavigator(stack: stack),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: tabState.controller.index,
        //TODO: ここでトップへのスクロールも行う
        onTap: (int index) {
          tabState.controller.animateTo(index);
          // switch (index) {
          //   case dailyIndex:
          //     if (routemaster.currentConfiguration!.fullPath == '/home/daily') {
          //       ref.read(scrollViewModelProvider(path: '/home/daily').notifier).scrollToTop();
          //     }
          //   case recipesIndex:
          //     if (routemaster.currentConfiguration!.fullPath == '/home/recipes') {
          //       ref.read(scrollViewModelProvider(path: '/home/recipes').notifier).scrollToTop();
          //     }
          //   case dictionaryIndex:
          //     if (routemaster.currentConfiguration!.fullPath == '/home/dictionary') {
          //       ref.read(scrollViewModelProvider(path: '/home/dictionary').notifier).scrollToTop();
          //     }
          //   case letterIndex:
          //     if (routemaster.currentConfiguration!.fullPath == '/home/letter') {
          //       ref.read(scrollViewModelProvider(path: '/home/letter').notifier).scrollToTop();
          //     }
          // }
        },
        backgroundColor: AppColor.ui.white,
        selectedItemColor: AppColor.brand.secondary,
        selectedLabelStyle: const TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.bold,
        ),
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          _svgBottomNavigationBarItem(
            activeIconPath: SvgPath.bottomNavigationBarIcons.activeDaily,
            inactiveIconPath: SvgPath.bottomNavigationBarIcons.inactiveDaily,
            label: 'こんだて',
          ),
          _svgBottomNavigationBarItem(
            activeIconPath: SvgPath.bottomNavigationBarIcons.activeRecipe,
            inactiveIconPath: SvgPath.bottomNavigationBarIcons.inactiveRecipe,
            label: 'レシピ',
          ),
          _svgBottomNavigationBarItem(
            activeIconPath: SvgPath.bottomNavigationBarIcons.activeDictionary,
            inactiveIconPath: SvgPath.bottomNavigationBarIcons.inactiveDictionary,
            label: 'ずかん',
          ),
          if (Environment.flavor == Flavor.dev)
            _svgBottomNavigationBarItem(
              activeIconPath: SvgPath.bottomNavigationBarIcons.activeLetter,
              inactiveIconPath: SvgPath.bottomNavigationBarIcons.inactiveLetter,
              label: 'お便り',
            ),
        ],
      ),
    );
  }

  BottomNavigationBarItem _svgBottomNavigationBarItem({
    required String activeIconPath,
    required String inactiveIconPath,
    required String label,
  }) {
    return BottomNavigationBarItem(
      activeIcon: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2),
        child: SvgPicture.asset(
          activeIconPath,
          width: IconSize.navigationItem,
          height: IconSize.navigationItem,
          colorFilter: ColorFilter.mode(
            AppColor.brand.secondary,
            BlendMode.srcIn,
          ),
        ),
      ),
      icon: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2),
        child: Builder(
          builder: (BuildContext context) {
            return SvgPicture.asset(
              inactiveIconPath,
              width: IconSize.navigationItem,
              height: IconSize.navigationItem,
              colorFilter: ColorFilter.mode(
                Theme.of(context).unselectedWidgetColor,
                BlendMode.srcIn,
              ),
            );
          },
        ),
      ),
      label: label,
    );
  }
}
