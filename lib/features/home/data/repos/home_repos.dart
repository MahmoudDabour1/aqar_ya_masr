import 'package:aqar_ya_masr/core/networking/api_error_handler.dart';
import 'package:aqar_ya_masr/core/networking/api_result.dart';
import 'package:aqar_ya_masr/features/home/data/data_source/home_local_remote_data_source.dart';
import 'package:aqar_ya_masr/features/home/data/data_source/home_remote_data_source.dart';
import 'package:aqar_ya_masr/features/home/data/models/ad_details_model.dart';
import 'package:aqar_ya_masr/features/home/data/models/sale/aqar_momayas_model.dart';

import '../models/app_init_model.dart';
import '../models/rent/aqar_momayas_rent_model.dart';
import '../models/rent/falt_sakany_rent_model.dart';
import '../models/rent/qsr_sakany_rent_model.dart';
import '../models/rent/villa_sakany_rent_model.dart';
import '../models/sale/compound_model.dart';
import '../models/sale/flat_sakany_model.dart';
import '../models/sale/qsr_sakany_model.dart';
import '../models/sale/villa_sakany_model.dart';

abstract class HomeRepo {
  Future<ApiResult<AqarMomayasModel>> getAqarMomayasData(int limit);

  Future<ApiResult<QsrSakanyModel>> getQsrSakanyData(int limit);

  Future<ApiResult<VillaSakanyModel>> getVillaSakanyData(int limit);

  Future<ApiResult<FlatSakanyModel>> getFlatSakanyData(int limit);

  Future<ApiResult<AdDetailsModel>> getAdDetailsData(int adId);

  Future<ApiResult<CompoundModel>> getCompoundData(int limit);

  Future<ApiResult<AppInitModel>> getAppInitData();

  Future<ApiResult<AqarMomayasRentModel>> getAqarMomayasRentData(int limit);

  Future<ApiResult<QsrSakanyRentModel>> getQsrSakanyRentData(int limit);

  Future<ApiResult<VillaSakanyRentModel>> getVillaSakanyRentData(int limit);

  Future<ApiResult<FlatSakanyRentModel>> getFlatSakanyRentData(int limit);


}

class HomeRepoImpl implements HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalRemoteDataSource homeLocalRemoteDataSource;

  HomeRepoImpl(this.homeLocalRemoteDataSource,
      {required this.homeRemoteDataSource});

  @override
  Future<ApiResult<AppInitModel>> getAppInitData() async {
    try {
      final response = await homeRemoteDataSource.getAppInit();
      await homeLocalRemoteDataSource.cacheAppInitData(response);
      return ApiResult.success(response);
    } catch (e) {
      final cachedData = homeLocalRemoteDataSource.getAppInitData();
      if (cachedData != null) {
        return ApiResult.success(cachedData);
      }
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

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


  @override
  Future<ApiResult<AqarMomayasRentModel>> getAqarMomayasRentData(int limit) async {
    try {
      final response = await homeRemoteDataSource.getAqarMomayasRentData(limit);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  @override
  Future<ApiResult<QsrSakanyRentModel>> getQsrSakanyRentData(int limit) async {
    try {
      final response = await homeRemoteDataSource.getQsrSakanyRentData(limit);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e.toString()));
    }
  }

  @override
  Future<ApiResult<FlatSakanyRentModel>> getFlatSakanyRentData(int limit) async {
    try {
      final response = await homeRemoteDataSource.getFlatSakanyRentData(limit);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e.toString()));
    }
  }

  @override
  Future<ApiResult<VillaSakanyRentModel>> getVillaSakanyRentData(int limit) async {
    try {
      final response = await homeRemoteDataSource.getVillaSakanyRentData(limit);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e.toString()));
    }
  }
}
