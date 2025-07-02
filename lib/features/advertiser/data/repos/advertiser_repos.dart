import 'package:aqar_ya_masr/core/networking/api_result.dart';
import 'package:aqar_ya_masr/features/advertiser/data/models/advertiser_response_model.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../data_source/advertiser_remote_data_source.dart';

abstract class AdvertiserRepos {
  Future<ApiResult<AdvertiserResponseModel>> getAdvertiserDetails(
      int? advertiserId);
}

class AdvertiserReposImpl implements AdvertiserRepos {
  final AdvertiserRemoteDataSource advertiserRemoteDataSource;

  AdvertiserReposImpl(this.advertiserRemoteDataSource);

  @override
  Future<ApiResult<AdvertiserResponseModel>> getAdvertiserDetails(
      int? advertiserId) async {
    try {
      final response =
          await advertiserRemoteDataSource.getAdvertiser(advertiserId);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
