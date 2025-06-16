import 'package:aqar_ya_masr/core/routing/app_router.dart';
import 'package:aqar_ya_masr/features/auth/logic/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'core/di/dependency_injection.dart';
import 'core/routing/routes.dart';
import 'core/theming/app_theme.dart';
import 'features/home/logic/home_cubit.dart';

class AqarYaMasr extends StatelessWidget {
  final AppRouter appRouter;

  const AqarYaMasr({
    super.key,
    required this.appRouter,
  });

  @override
  Widget build(BuildContext context) {
    final RouteObserver<ModalRoute> routeObserver = RouteObserver<ModalRoute>();

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => AuthCubit(sl())),
        BlocProvider(
          create: (context) => HomeCubit(sl())
            ..getAqarMomayasData(6)
            ..getCompounds(6)
            ..getQsrSakanyData(6)
            ..getVillaSakanyData(6)
            ..getFlatSakanyData(6),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: MaterialApp(
            locale: const Locale("ar"),
            supportedLocales: const [
              Locale("ar"), // RTL
              Locale("en"), // LTR (if needed)
            ],
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            title: 'Flutter Demo',
            theme: appTheme,
            builder: FToastBuilder(),
            onGenerateRoute: appRouter.generateRoute,
            debugShowCheckedModeBanner: false,
            navigatorObservers: [NavigatorObserver(), routeObserver],
            initialRoute: Routes.infoScreen,
          ),
        ),
      ),
    );
  }
}
