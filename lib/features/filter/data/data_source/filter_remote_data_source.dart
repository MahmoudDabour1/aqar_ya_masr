import 'package:aqar_ya_masr/features/filter/data/models/filter_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../../../core/networking/api_constants.dart';

part 'filter_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class FilterRemoteDataSource {
  factory FilterRemoteDataSource(Dio dio, {String baseUrl}) =
      _FilterRemoteDataSource;

  @GET(ApiConstants.filterEP)
  Future<FilterResponseModel> getFilterData({
    @Query("contract_type")   String? contractType,
    @Query("main_type")       String? mainType,
    @Query("type_id")         String? typeId,
    @Query("price_from")       double? minPrice,
    @Query("price_to")        double? maxPrice,
    @Query("is_planned")       int? isPlanned,
    @Query("is_featured")      int? isFeatured,
    @Query("city")            String? city,
    @Query("district")        String? district,
    @Query("limit") int limit = 5,
    // @Query("page") int page = 1,
  });
}
