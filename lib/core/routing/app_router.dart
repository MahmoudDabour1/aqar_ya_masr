import 'package:aqar_ya_masr/core/routing/routes.dart';
import 'package:flutter/material.dart';

import '../../features/home/presentation/home_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => HomeScreen()
        );
      default:
        return null;
    }
  }
}
