import 'package:aqar_ya_masr/core/networking/api_error_handler.dart';
import 'package:aqar_ya_masr/core/networking/api_result.dart';
import 'package:aqar_ya_masr/features/home/data/data_source/home_remote_data_source.dart';
import 'package:aqar_ya_masr/features/home/data/models/ad_details_model.dart';
import 'package:aqar_ya_masr/features/home/data/models/aqar_momayas_model.dart';
import 'package:aqar_ya_masr/features/home/data/models/compound_model.dart';
import 'package:aqar_ya_masr/features/home/data/models/qsr_sakany_model.dart';
import 'package:aqar_ya_masr/features/home/data/models/villa_sakany_model.dart';

import '../models/flat_sakany_model.dart';

abstract class HomeRepo {
  Future<ApiResult<AqarMomayasModel>> getAqarMomayasData(int limit);

  Future<ApiResult<QsrSakanyModel>> getQsrSakanyData(int limit);

  Future<ApiResult<VillaSakanyModel>> getVillaSakanyData(int limit);

  Future<ApiResult<FlatSakanyModel>> getFlatSakanyData(int limit);

  Future<ApiResult<AdDetailsModel>> getAdDetailsData(int adId);

  Future<ApiResult<CompoundModel>> getCompoundData(int limit);
}

class HomeRepoImpl implements HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepoImpl({required this.homeRemoteDataSource});

  @override
  Future<ApiResult<AqarMomayasModel>> getAqarMomayasData(int limit) async {
    try {
      final response = await homeRemoteDataSource.getAqarMomayasData(limit);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  @override
  Future<ApiResult<QsrSakanyModel>> getQsrSakanyData(int limit) async {
    try {
      final response = await homeRemoteDataSource.getQsrSakanyData(limit);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e.toString()));
    }
  }

  @override
  Future<ApiResult<FlatSakanyModel>> getFlatSakanyData(int limit) async {
    try {
      final response = await homeRemoteDataSource.getFlatSakanyData(limit);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e.toString()));
    }
  }

  @override
  Future<ApiResult<VillaSakanyModel>> getVillaSakanyData(int limit) async {
    try {
      final response = await homeRemoteDataSource.getVillaSakanyData(limit);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e.toString()));
    }
  }

  @override
  Future<ApiResult<AdDetailsModel>> getAdDetailsData(int adId) async {
    try {
      final response = await homeRemoteDataSource.getAdDetails(adId: adId);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e.toString()));
    }
  }

  @override
  Future<ApiResult<CompoundModel>> getCompoundData(int limit) async {
    try {
      final response = await homeRemoteDataSource.getCompoundData(limit);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e.toString()));
    }
  }
}
