import 'package:flutter/material.dart';
import 'package:hakondate/view/calendar/calendar.dart';

import 'package:routemaster/routemaster.dart';

import 'package:hakondate/view/component/frame/fade_up_page.dart';
import 'package:hakondate/view/splash/splash.dart';
import 'package:hakondate/view/terms/terms.dart';
import 'package:hakondate/view/signup/signup.dart';
import 'package:hakondate/view/bottom_bar/app_bottom_navigation_bar.dart';
import 'package:hakondate/view/daily/daily.dart';

final routemaster = RoutemasterDelegate(
  routesBuilder: (context) => RouteMap(
    onUnknownRoute: (_) => const Redirect('/splash'),
    routes: {
      '/splash': (_) => const MaterialPage(child: Splash()),
      '/terms': (_) => const MaterialPage(child: Terms()),
      '/signup': (_) => MaterialPage(child: Signup()),
      '/home': (_) => const CupertinoTabPage(
        child: AppBottomNavigationBar(),
        paths: [
          '/home/daily',
          '/home/recipes',
          '/home/letters',
        ],
      ),
      '/home/daily': (_) => const MaterialPage(child: Daily()),
      '/home/daily/dish': (_) => MaterialPage(child: Scaffold(appBar: AppBar())),
      '/home/calendar': (_) => const FadeUpPage(child: Calendar()),
      '/home/recipes': (_) => MaterialPage(child: Scaffold(appBar: AppBar())),
      '/home/letters': (_) => MaterialPage(child: Scaffold(appBar: AppBar())),
      '/setting': (_) => MaterialPage(child: Scaffold(appBar: AppBar())),
      '/about_us': (_) => MaterialPage(child: Scaffold(appBar: AppBar())),
      '/help': (_) => MaterialPage(child: Scaffold(appBar: AppBar())),
    },
  ),
);
