import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/features/onbording/onboarding_screen.dart';
import 'package:doctor_app/features/login/ui/login_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //this argument to be passed in any screen like this { argument as ClassName }
    final argument = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());

      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(body: Center(child: Text('no page here '))),
        );
    }
  }
}
