import 'package:firebase_analytics/firebase_analytics.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';

import 'coffee_router.dart';
import 'get_theme.dart';
import 'screens/splash_screen.dart';
import 'services/analytics.dart';

class CoffeeApp extends StatelessWidget {
  final FirebaseAnalyticsObserver observer = AnalyticsService.observer;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      home: const SplashScreen(),
      navigatorKey: CoffeeRouter.instance.navigatorKey,
      navigatorObservers: <NavigatorObserver>[observer],
      theme: getTheme(),
    );
  }
}
