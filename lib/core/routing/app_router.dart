import 'package:aqar_ya_masr/core/routing/routes.dart';
import 'package:aqar_ya_masr/features/advertiser/logic/advertiser_cubit.dart';
import 'package:aqar_ya_masr/features/auth/presentation/forget_password/forget_password_screen.dart';
import 'package:aqar_ya_masr/features/auth/presentation/login/login_screen.dart';
import 'package:aqar_ya_masr/features/auth/presentation/verify_code/verify_code_screen.dart';
import 'package:aqar_ya_masr/features/home/logic/home_cubit.dart';
import 'package:aqar_ya_masr/features/info/data/models/profile_data_model.dart';
import 'package:aqar_ya_masr/features/layout/logic/bottom_nav_cubit.dart';
import 'package:aqar_ya_masr/features/search/logic/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/advertiser/presentation/advertiser_screen.dart';
import '../../features/auth/presentation/register/register_screen.dart';
import '../../features/auth/presentation/register/widgets/license_agreement_screen.dart';
import '../../features/chat/presentation/chat_screen.dart';
import '../../features/filter/presentation/filter_response_screen.dart';
import '../../features/filter/presentation/filter_screen.dart';
import '../../features/home/presentation/details_screen.dart';
import '../../features/home/presentation/home_screen.dart';
import '../../features/info/presentation/about_aqar_masr_screen.dart';
import '../../features/info/presentation/contact_us_screen.dart';
import '../../features/info/presentation/edit_user_data_screen.dart';
import '../../features/info/presentation/info_screen.dart';
import '../../features/info/presentation/price_guide_screen.dart';
import '../../features/layout/presentation/bottom_nav_bar_layout.dart';
import '../../features/maps/presentation/maps_screen.dart';
import '../../features/search/presentation/search_screen.dart';
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
      case Routes.infoScreen:
        return MaterialPageRoute(
          builder: (_) => InfoScreen(),
        );
      case Routes.priceGuideScreen:
        return MaterialPageRoute(
          builder: (_) => PriceGuideScreen(),
        );
      case Routes.aboutAqarMasrScreen:
        return MaterialPageRoute(
          builder: (_) => AboutAqarMasrScreen(),
        );
      case Routes.contactUsScreen:
        return MaterialPageRoute(
          builder: (_) => ContactUsScreen(),
        );
      case Routes.editUserDataScreen:
        ProfileDataModel? profileDataModel =
            settings.arguments as ProfileDataModel?;

        return MaterialPageRoute(
          builder: (_) => EditUserDataScreen(
            profileDataModel: profileDataModel!,
          ),
        );
      case Routes.bottomNavBarLayout:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => BottomNavCubit(),
            child: BottomNavBarLayout(),
          ),
        );
      case Routes.mapsScreen:
        return MaterialPageRoute(
          builder: (_) => MapsScreen(),
        );
      case Routes.chatScreen:
        int chatId = settings.arguments as int;
        return MaterialPageRoute(
          builder: (_) => ChatScreen(
            chatId: chatId,
          ),
        );
      case Routes.searchScreen:
        String searchQuery = settings.arguments as String;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => SearchCubit(sl()),
            child: SearchScreen(
              initialSearchValue: searchQuery,
            ),
          ),
        );
      case Routes.filterScreen:
        return MaterialPageRoute(
          builder: (_) => FilterScreen(),
        );
      case Routes.filterResponseScreen:
        return MaterialPageRoute(
          builder: (_) => FilterResponseScreen(),
        );
      case Routes.advertiserScreen:
        final int advertiserId = settings.arguments as int;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => AdvertiserCubit(sl()),
            child: AdvertiserScreen(
              advertiserId: advertiserId,
            ),
          ),
        );
      case Routes.chatDefaultScreen:
        return MaterialPageRoute(
          builder: (_) => AdvertiserScreen(),
        );
      default:
        return null;
    }
  }
}
