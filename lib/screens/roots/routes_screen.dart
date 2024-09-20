import 'package:flutter/material.dart';
import 'package:jobee/screens/splash/splash_screen.dart';

class RoutesScreen {
  static Route appRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      default:
        return MaterialPageRoute(builder: (_) => const Scaffold());
    }
  }
}

class RoutesName {
  static const String splash = "/";
}
