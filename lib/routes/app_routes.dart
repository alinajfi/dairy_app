import 'package:dairy_app/views/screens/Onboarding_Screen.dart';
import 'package:dairy_app/views/screens/splash_screen.dart';
import 'package:dairy_app/views/screens/user_homePage.dart';
import 'package:dairy_app/views/screens/vendor_screens/vendor_first_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route myRoutes(RouteSettings settings) {
    switch (settings.name) {
      case OnboardingScreen.routeName:
        return route(route: OnboardingScreen(), settings: settings);
      case VenodrHomePage.routeName:
        return route(route: const VenodrHomePage(), settings: settings);
      case UserHomePage.routeName:
        return route(route: UserHomePage(), settings: settings);
      default:
        return route(route: const SplashScreen(), settings: settings);
    }
  }

  static MaterialPageRoute route(
      {required RouteSettings settings, required Widget route}) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) {
        return route;
      },
    );
  }
}
