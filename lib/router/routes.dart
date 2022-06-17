import 'package:flutter/material.dart';

import 'package:routemaster/routemaster.dart';

import 'package:hakondate/view/bottom_bar/app_bottom_navigation_bar.dart';
import 'package:hakondate/view/calendar/calendar.dart';
import 'package:hakondate/view/component/frame/fade_up_page.dart';
import 'package:hakondate/view/daily/daily.dart';
import 'package:hakondate/view/recipe/recipe.dart';
import 'package:hakondate/view/recipe/recipe_pdf.dart';
import 'package:hakondate/view/signup/signup.dart';
import 'package:hakondate/view/splash/splash.dart';
import 'package:hakondate/view/terms/terms.dart';

final routemaster = RoutemasterDelegate(
  routesBuilder: (context) => RouteMap(
    onUnknownRoute: (_) => const Redirect('/splash'),
    routes: {
      '/splash': (_) => const MaterialPage(child: Splash()),
      '/terms': (_) => const MaterialPage(child: Terms()),
      '/signup': (_) => MaterialPage(child: Signup()),
      '/home': (_) => const TabPage(
        child: AppBottomNavigationBar(),
        paths: [
          '/home/daily',
          '/home/recipes',
          '/home/dictionary',
          '/home/letters',
        ],
      ),
      '/home/daily': (_) => const MaterialPage(child: Daily()),
      '/home/daily/dish': (_) => MaterialPage(child: Scaffold(appBar: AppBar())),
      '/home/calendar': (_) => const FadeUpPage(child: Calendar()),
      '/home/recipes': (_) => const MaterialPage(child: Recipe()),
      '/home/recipes_pdf/:id': (route) => FadeUpPage(child: RecipePDF(id: route.pathParameters['id'])),
      '/home/dictionary': (_) => MaterialPage(child: Scaffold(appBar: AppBar())),
      '/home/letters': (_) => MaterialPage(child: Scaffold(appBar: AppBar())),
      '/home/user_settings': (_) => MaterialPage(child: Scaffold(appBar: AppBar())),
      '/home/about_us': (_) => MaterialPage(child: Scaffold(appBar: AppBar())),
      '/home/help': (_) => MaterialPage(child: Scaffold(appBar: AppBar())),
      '/home/license': (_) => MaterialPage(child: Scaffold(appBar: AppBar())),
      '/home/origin': (_) => MaterialPage(child: Scaffold(appBar: AppBar())),
    },
  ),
);
