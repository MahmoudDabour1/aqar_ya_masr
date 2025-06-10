import 'package:aqar_ya_masr/core/networking/api_error_handler.dart';
import 'package:aqar_ya_masr/core/networking/api_result.dart';
import 'package:aqar_ya_masr/features/home/data/data_source/home_remote_data_source.dart';
import 'package:aqar_ya_masr/features/home/data/models/aqar_momayas_model.dart';
import 'package:aqar_ya_masr/features/home/data/models/qsr_sakany_model.dart';
import 'package:aqar_ya_masr/features/home/data/models/villa_sakany_model.dart';

import '../models/flat_sakany_model.dart';

abstract class HomeRepo {
  Future<ApiResult<AqarMomayasModel>> getAqarMomayasData();

  Future<ApiResult<QsrSakanyModel>> getQsrSakanyData();

  Future<ApiResult<VillaSakanyModel>> getVillaSakanyData();

  Future<ApiResult<FlatSakanyModel>> getFlatSakanyData();
}

class HomeRepoImpl implements HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepoImpl({required this.homeRemoteDataSource});

  @override
  Future<ApiResult<AqarMomayasModel>> getAqarMomayasData() async {
    try {
      final response = await homeRemoteDataSource.getAqarMomayasData();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  @override
  Future<ApiResult<QsrSakanyModel>> getQsrSakanyData() async {
    try {
      final response = await homeRemoteDataSource.getQsrSakanyData();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e.toString()));
    }
  }

  @override
  Future<ApiResult<FlatSakanyModel>> getFlatSakanyData()async{
    try {
      final response = await homeRemoteDataSource.getFlatSakanyData();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e.toString()));
    }
  }

  @override
  Future<ApiResult<VillaSakanyModel>> getVillaSakanyData() async{
    try {
      final response = await homeRemoteDataSource.getVillaSakanyData();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e.toString()));
    }
  }
}
