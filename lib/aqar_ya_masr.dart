import 'package:aqar_ya_masr/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'core/routing/routes.dart';
import 'core/theming/app_theme.dart';

class AqarYaMasr extends StatelessWidget {
  final AppRouter appRouter;

  const AqarYaMasr({
    super.key,
    required this.appRouter,
  });

  @override
  Widget build(BuildContext context) {
    final RouteObserver<ModalRoute> routeObserver = RouteObserver<ModalRoute>();

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: MaterialApp(
          locale: Locale("ar"),
          title: 'Flutter Demo',
          theme: appTheme,
          builder: FToastBuilder(),
          onGenerateRoute: appRouter.generateRoute,
          debugShowCheckedModeBanner: false,
          navigatorObservers: [NavigatorObserver(), routeObserver],
          initialRoute: Routes.homeScreen,
        ),
      ),
    );
  }
}
