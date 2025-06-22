import 'package:aqar_ya_masr/features/search/data/models/search_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../../../core/networking/api_constants.dart';

part 'search_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class SearchRemoteDataSource {
  factory SearchRemoteDataSource(Dio dio, {String baseUrl}) =
      _SearchRemoteDataSource;

  @GET(ApiConstants.searchEP)
  Future<SearchResponseModel> search(
    @Path("search") String search,
  );
}
