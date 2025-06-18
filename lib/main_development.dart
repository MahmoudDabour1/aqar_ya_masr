import 'package:aqar_ya_masr/core/utils/hive_set_up.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'aqar_ya_masr.dart';
import 'core/di/dependency_injection.dart';
import 'core/helpers/shared_pref_helper.dart';
import 'core/helpers/shared_pref_keys.dart';
import 'core/routing/app_router.dart';
import 'core/utils/my_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final type =
      await SharedPrefHelper.getString(SharedPrefKeys.selectedTab) ?? 'sale';

  await Future.wait([
    setupGetIt(),
    ScreenUtil.ensureScreenSize(),
    Hive.initFlutter(),
    initHive(),
  ]);
  Bloc.observer = MyBlocObserver();

  runApp(
    AqarYaMasr(
      appRouter: AppRouter(),
      type: type,
    ),
  );
}
