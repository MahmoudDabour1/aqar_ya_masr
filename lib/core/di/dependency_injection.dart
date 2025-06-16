import 'package:aqar_ya_masr/features/auth/data/data_source/auth_remote_data_source.dart';
import 'package:aqar_ya_masr/features/auth/data/repos/auth_repos.dart';
import 'package:aqar_ya_masr/features/auth/logic/auth_cubit.dart';
import 'package:aqar_ya_masr/features/home/data/data_source/home_local_remote_data_source.dart';
import 'package:aqar_ya_masr/features/home/data/data_source/home_remote_data_source.dart';
import 'package:aqar_ya_masr/features/home/data/repos/home_repos.dart';
import 'package:aqar_ya_masr/features/home/logic/home_cubit.dart';
import 'package:aqar_ya_masr/features/info/data/data_source/info_remote_data_source.dart';
import 'package:aqar_ya_masr/features/info/data/repos/info_repos.dart';
import 'package:aqar_ya_masr/features/info/logic/info_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../features/home/data/models/app_init_model.dart';
import '../networking/dio_factory.dart';
import '../utils/app_constants.dart';

final sl = GetIt.instance;

Future<void> setupGetIt() async {
  await Hive.initFlutter();

  Dio dio = DioFactory.getDio();
  //home
  sl.registerLazySingleton<HomeRemoteDataSource>(
      () => HomeRemoteDataSource(dio));
  sl.registerLazySingleton<HomeRepo>(
      () => HomeRepoImpl(homeRemoteDataSource: sl(), sl()));
  sl.registerFactory<HomeCubit>(() => HomeCubit(sl()));
  sl.registerLazySingleton<HomeLocalRemoteDataSource>(
    () => HomeLocalRemoteDataSourceImpl(),
  );
  //auth
  sl.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSource(dio));
  sl.registerLazySingleton<AuthRepos>(() => AuthReposImpl(sl()));
  sl.registerFactory<AuthCubit>(() => AuthCubit(sl()));
  sl.registerLazySingleton<Box<AppInitModel>>(
      () => Hive.box<AppInitModel>(kAppInitBox));

  //Info
  sl.registerLazySingleton<InfoRemoteDataSource>(
      () => InfoRemoteDataSource(dio));
  sl.registerLazySingleton<InfoRepos>(() => InfoReposImpl(sl()));
  sl.registerFactory<InfoCubit>(() => InfoCubit(sl()));
}
