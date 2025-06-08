
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../localization/app_localization_cubit.dart';
import '../networking/dio_factory.dart';

final sl = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio = DioFactory.getDio();
  //login
  // sl.registerLazySingleton<LoginRemoteDataSource>(
  //     () => LoginRemoteDataSource(dio));
  // sl.registerLazySingleton<LoginRepo>(
  //     () => LoginRepoImpl(loginRemoteDataSource: sl()));
  // sl.registerFactory<LoginCubit>(() => LoginCubit(sl()));
}
