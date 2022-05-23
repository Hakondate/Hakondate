import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:routemaster/routemaster.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/constant/svg_path.dart';
import 'package:hakondate/view/bottom_bar/daily_drawer.dart';
import 'package:hakondate/view_model/multi_page/drawer_view_model.dart';



class AppBottomNavigationBar extends ConsumerWidget {
  const AppBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TabPageState tabState = TabPage.of(context);

    return Scaffold(
      key: ref.watch(drawerProvider).scaffoldKey,
      body: TabBarView(
        controller: tabState.controller,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          for (final stack in tabState.stacks) PageStackNavigator(stack: stack),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: tabState.controller.index,
        onTap: (int index) => tabState.controller.animateTo(index),
        backgroundColor: AppColor.ui.white,
        selectedItemColor: AppColor.brand.secondary,
        selectedLabelStyle: const TextStyle(
          fontSize: 10.0,
          fontWeight: FontWeight.bold,
        ),
        showUnselectedLabels: false,
        items: [
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
          _svgBottomNavigationBarItem(
            activeIconPath: SvgPath.bottomNavigationBarIcons.activeLetter,
            inactiveIconPath: SvgPath.bottomNavigationBarIcons.inactiveLetter,
            label: 'お便り',
          ),
        ],
      ),
      drawerEnableOpenDragGesture: false,
      drawer: const DailyDrawer(),
    );
  }

  BottomNavigationBarItem _svgBottomNavigationBarItem({
    required String activeIconPath,
    required String inactiveIconPath,
    required String label,
  }) {
    return BottomNavigationBarItem(
      activeIcon: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2.0),
        child: SvgPicture.asset(
          activeIconPath,
          width: IconSize.navigationItem,
          height: IconSize.navigationItem,
          color: AppColor.brand.secondary,
        ),
      ),
      icon: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2.0),
        child: Builder(
          builder: (context) {
            return SvgPicture.asset(
              inactiveIconPath,
              width: IconSize.navigationItem,
              height: IconSize.navigationItem,
              color: Theme.of(context).unselectedWidgetColor,
            );
          },
        ),
      ),
      label: label,
    );
  }
}
