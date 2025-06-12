import 'package:aqar_ya_masr/features/auth/data/data_source/auth_remote_data_source.dart';
import 'package:aqar_ya_masr/features/auth/data/repos/auth_repos.dart';
import 'package:aqar_ya_masr/features/auth/logic/auth_cubit.dart';
import 'package:aqar_ya_masr/features/home/data/data_source/home_remote_data_source.dart';
import 'package:aqar_ya_masr/features/home/data/repos/home_repos.dart';
import 'package:aqar_ya_masr/features/home/logic/home_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../networking/dio_factory.dart';

final sl = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio = DioFactory.getDio();
  //home
  sl.registerLazySingleton<HomeRemoteDataSource>(
      () => HomeRemoteDataSource(dio));
  sl.registerLazySingleton<HomeRepo>(
      () => HomeRepoImpl(homeRemoteDataSource: sl()));
  sl.registerFactory<HomeCubit>(() => HomeCubit(sl()));

  //auth
  sl.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSource(dio));
  sl.registerLazySingleton<AuthRepos>(
      () => AuthReposImpl( sl()));
  sl.registerFactory<AuthCubit>(() => AuthCubit(sl()));
}
