import 'package:aqar_ya_masr/features/maps/data/models/maps_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../../../core/networking/api_constants.dart';
part 'maps_remote_data_source.g.dart';
@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class MapsRemoteDataSource {
  factory MapsRemoteDataSource(Dio dio) {
    return _MapsRemoteDataSource(dio);
  }

  @GET(ApiConstants.mapSearchEP)
  Future<MapsResponseModel> getMaps({
    @Path("lat") required double lat,
    @Path("lng") required double lng,
    @Query("filter_options") int? filterOptions,
  });


}
