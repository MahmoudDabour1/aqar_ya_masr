import 'package:aqar_ya_masr/core/routing/routes.dart';
import 'package:aqar_ya_masr/features/auth/presentation/forget_password/forget_password_screen.dart';
import 'package:aqar_ya_masr/features/auth/presentation/login/login_screen.dart';
import 'package:aqar_ya_masr/features/auth/presentation/verify_code/verify_code_screen.dart';
import 'package:aqar_ya_masr/features/home/logic/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/auth/presentation/register/register_screen.dart';
import '../../features/auth/presentation/register/widgets/license_agreement_screen.dart';
import '../../features/home/presentation/details_screen.dart';
import '../../features/home/presentation/home_screen.dart';
import '../di/dependency_injection.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );
      case Routes.detailsScreen:
        int adId = settings.arguments as int;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeCubit(sl())..getAdDetails(adId),
            child: DetailsScreen(
              adId: adId,
            ),
          ),
        );
      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (_) => RegisterScreen(),
        );
      case Routes.licenseAgreementScreen:
        return MaterialPageRoute(
          builder: (_) => LicenseAgreementScreen(),
        );
      case Routes.verifyCodeScreen:
        String phoneNumber = settings.arguments as String;
        return MaterialPageRoute(
          builder: (_) => VerifyCodeScreen(
            phoneNumber: phoneNumber,
          ),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );
      case Routes.forgetPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => ForgetPasswordScreen(),
        );

      default:
        return null;
    }
  }
}
