import 'package:flutter/material.dart';
import 'package:hakondate/view/splash/real_name_update_error.dart';

import 'package:routemaster/routemaster.dart';

import 'package:hakondate/view/authorization/authorization.dart';
import 'package:hakondate/view/bottom_bar/app_bottom_navigation_bar.dart';
import 'package:hakondate/view/cache_management/cache_management.dart';
import 'package:hakondate/view/calendar/calendar.dart';
import 'package:hakondate/view/component/frame/fade_up_page.dart';
import 'package:hakondate/view/daily/daily.dart';
import 'package:hakondate/view/daily/dish.dart';
import 'package:hakondate/view/dictionary/dictionary.dart';
import 'package:hakondate/view/dictionary/dictionary_group_list.dart';
import 'package:hakondate/view/dictionary/dictionary_item.dart';
import 'package:hakondate/view/dictionary/dictionary_search.dart';
import 'package:hakondate/view/help/help.dart';
import 'package:hakondate/view/information/information.dart';
import 'package:hakondate/view/letter/letter.dart';
import 'package:hakondate/view/letter/letter_pdf.dart';
import 'package:hakondate/view/license/license.dart';
import 'package:hakondate/view/license/license_detail.dart';
import 'package:hakondate/view/origin/origin.dart';
import 'package:hakondate/view/recipe/recipe.dart';
import 'package:hakondate/view/recipe/recipe_pdf.dart';
import 'package:hakondate/view/signup/signup.dart';
import 'package:hakondate/view/splash/splash.dart';
import 'package:hakondate/view/terms/drawer_terms.dart';
import 'package:hakondate/view/terms/terms.dart';
import 'package:hakondate/view/user_settings/user_settings.dart';
import 'package:hakondate/view/user_settings/user_settings_detail.dart';

final RoutemasterDelegate routemaster = RoutemasterDelegate(
  routesBuilder: (BuildContext context) => RouteMap(
    onUnknownRoute: (_) => const Redirect('/splash'),
    routes: <String, RouteSettings Function(RouteData)>{
      '/splash': (_) => const MaterialPage<dynamic>(child: Splash()),
      '/real_name_error': (_) => const MaterialPage<dynamic>(child: RealNameUpdateError()),
      '/terms': (_) => const MaterialPage<dynamic>(child: Terms()),
      '/signup': (_) => MaterialPage<dynamic>(child: Signup()),
      '/signup/authorization': (_) => const MaterialPage<dynamic>(child: Authorization()),
      '/home': (_) => const TabPage(
            child: AppBottomNavigationBar(),
            paths: <String>[
              '/home/daily',
              '/home/recipes',
              '/home/dictionary',
              '/home/letter',
            ],
          ),
      '/home/daily': (_) => const MaterialPage<dynamic>(child: Daily()),
      '/home/daily/dish': (_) => const MaterialPage<dynamic>(child: Dish()),
      '/home/authorization': (_) => const FadeUpPage(child: Authorization()),
      '/home/calendar': (_) => const FadeUpPage(child: Calendar()),
      '/home/recipes': (_) => const MaterialPage<dynamic>(child: Recipe()),
      '/home/recipes_pdf/:id': (RouteData route) => FadeUpPage(child: RecipePDF(id: route.pathParameters['id'])),
      '/home/dictionary': (_) => const MaterialPage<dynamic>(child: Dictionary()),
      '/home/dictionary/search': (_) => const MaterialPage<dynamic>(child: DictionarySearch()),
      '/home/dictionary/:group': (_) => const MaterialPage<dynamic>(child: DictionaryGroupList()),
      '/home/dictionary_item/:id': (_) => const FadeUpPage(child: DictionaryItem()),
      '/home/letter': (_) => const MaterialPage<dynamic>(child: Letter()),
      '/home/letter/:title': (_) => const MaterialPage<dynamic>(child: LetterPDF()),
      '/home/user_settings': (_) => const MaterialPage<dynamic>(child: UserSettings()),
      '/home/user_settings/:id': (RouteData route) => FadeUpPage(child: UserSettingsDetail()),
      '/home/user_settings/:id/authorization': (_) => const MaterialPage<dynamic>(child: Authorization()),
      '/home/origin': (_) => const FadeUpPage(child: Origin()),
      '/home/drawer_terms': (_) => const FadeUpPage(child: DrawerTerms()),
      '/home/help': (_) => const FadeUpPage(child: Help()),
      '/home/information': (_) => const FadeUpPage(child: Information()),
      '/home/cache_management': (_) => const FadeUpPage(child: CacheManagement()),
      '/home/license': (_) => const FadeUpPage(child: License()),
      '/home/license/:index': (RouteData route) => FadeUpPage(
            child: LicenseDetail(
              index: int.parse(route.pathParameters['index'] ?? '0'),
            ),
          ),
    },
  ),
);
