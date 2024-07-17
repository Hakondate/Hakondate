import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:routemaster/routemaster.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/constant/svg_path.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/util/environment.dart';
import 'package:hakondate/view/daily/daily_drawer.dart';
import 'package:hakondate/view_model/multi_page/drawer/drawer_view_model.dart';
import 'package:hakondate/view_model/single_page/daily/daily_view_model.dart';
import 'package:hakondate/view_model/single_page/dictionary/dictionary_view_model.dart';
import 'package:hakondate/view_model/single_page/letter/letter_view_model.dart';
import 'package:hakondate/view_model/single_page/recipe/recipe_view_model.dart';

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
        onTap: (int index) {
          final String? path = routemaster.currentConfiguration?.fullPath;
          switch (path) {
            case '/home/daily':
              if (index == dailyIndex) {
                ref.read(dailyViewModelProvider.notifier).scrollToTop();
              } else {
                final DailyViewModel dailyNotifier = ref.read(dailyViewModelProvider.notifier);
                dailyNotifier.storeOffset(dailyNotifier.getPreOffset());
                tabState.controller.animateTo(index);
              }
            case '/home/recipes':
              if (index == recipesIndex) {
                ref.read(recipeViewModelProvider.notifier).scrollToTop();
              } else {
                final RecipeViewModel recipeNotifier = ref.read(recipeViewModelProvider.notifier);
                recipeNotifier.storeOffset(recipeNotifier.getPreOffset());
                tabState.controller.animateTo(index);
              }
            case '/home/dictionary':
              if (index == dictionaryIndex) {
                ref.read(dictionaryViewModelProvider.notifier).scrollToTop();
              } else {
                final DictionaryViewModel dictionaryNotifier = ref.read(dictionaryViewModelProvider.notifier);
                dictionaryNotifier.storeOffset(dictionaryNotifier.getPreOffset());
                tabState.controller.animateTo(index);
              }
            case '/home/letter':
              if (index == letterIndex) {
                ref.read(letterViewModelProvider.notifier).scrollToTop();
              } else {
                final LetterViewModel letterNotifier = ref.read(letterViewModelProvider.notifier);
                letterNotifier.storeOffset(letterNotifier.getPreOffset());
                tabState.controller.animateTo(index);
              }
          }
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
