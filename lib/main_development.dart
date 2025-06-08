import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'aqar_ya_masr.dart';
import 'core/di/dependency_injection.dart';
import 'core/routing/app_router.dart';
import 'core/utils/my_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.wait([ setupGetIt(),
    ScreenUtil.ensureScreenSize(),]

  );
  Bloc.observer = MyBlocObserver();

  runApp(
    AqarYaMasr(
      appRouter: AppRouter(),
    ),
  );
}
