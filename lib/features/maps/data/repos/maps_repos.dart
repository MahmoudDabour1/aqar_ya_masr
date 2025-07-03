import 'package:aqar_ya_masr/core/networking/api_result.dart';
import 'package:aqar_ya_masr/features/maps/data/data_source/maps_remote_data_source.dart';
import 'package:aqar_ya_masr/features/maps/data/models/maps_response_model.dart';

import '../../../../core/networking/api_error_handler.dart';

abstract class MapsRepos {
  Future<ApiResult<MapsResponseModel>> getMaps({
    required double lat,
    required double lng,
    int? filterOptions,
  });
}

class MapsReposImpl implements MapsRepos {
  final MapsRemoteDataSource mapsRemoteDataSource;

  MapsReposImpl(this.mapsRemoteDataSource);

  @override
  Future<ApiResult<MapsResponseModel>> getMaps({
    required double lat,
    required double lng,
    int? filterOptions,
  }) async {
    try {
      final response = await mapsRemoteDataSource.getMaps(
          lat: lat, lng: lng, filterOptions: filterOptions);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e.toString()));
    }
  }
}
