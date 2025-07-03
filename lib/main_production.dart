import 'package:aqar_ya_masr/core/di/dependency_injection.dart';
import 'package:aqar_ya_masr/core/routing/app_router.dart';
import 'package:aqar_ya_masr/core/utils/my_bloc_observer.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'aqar_ya_masr.dart';
import 'core/helpers/shared_pref_helper.dart';
import 'core/helpers/shared_pref_keys.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final type =
      await SharedPrefHelper.getString(SharedPrefKeys.selectedTab) ?? 'sale';

  await Future.wait(
    [
      setupGetIt(),
      ScreenUtil.ensureScreenSize(),
    ],
  );

  Bloc.observer = MyBlocObserver();

  runApp(
    AqarYaMasr(
      appRouter: AppRouter(),
      type: type,
    ),
  );
}
