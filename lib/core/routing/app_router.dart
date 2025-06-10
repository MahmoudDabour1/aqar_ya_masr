import 'package:aqar_ya_masr/core/routing/routes.dart';
import 'package:aqar_ya_masr/features/home/logic/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/home/presentation/home_screen.dart';
import '../di/dependency_injection.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
            builder: (_) =>
                BlocProvider(
                  create: (context) => HomeCubit(sl()),
                  child: HomeScreen(),
                )
        );
      default:
        return null;
    }
  }
}
