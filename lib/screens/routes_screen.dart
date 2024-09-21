import 'package:flutter/material.dart';
import 'package:jobee/screens/auth/log_in/log_in.dart';
import 'package:jobee/screens/auth/sign_in/sign_in.dart';
import 'package:jobee/screens/main/main_screen.dart';
import 'package:jobee/screens/onboarding/onboarding_screen.dart';
import 'package:jobee/screens/splash/splash_screen.dart';

class RoutesScreen {
  static Route appRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case RoutesName.onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case RoutesName.signIn:
        return MaterialPageRoute(builder: (_) => const SignIn());
      case RoutesName.logIn:
        return MaterialPageRoute(builder: (_) => const LogIn());
      case RoutesName.main:
        return MaterialPageRoute(builder: (_) => const MainScreen());
      default:
        return MaterialPageRoute(builder: (_) => const Scaffold());
    }
  }
}

class RoutesName {
  static const String splash = "/";
  static const String onboarding = "/onboarding";
  static const String signIn = "/sign_in";
  static const String logIn = "/log_in";
  static const String main = "/main";
}
