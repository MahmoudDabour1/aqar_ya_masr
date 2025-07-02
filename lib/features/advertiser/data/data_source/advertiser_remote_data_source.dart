import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../../../core/networking/api_constants.dart';
import '../models/advertiser_response_model.dart';

part 'advertiser_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class AdvertiserRemoteDataSource {
  factory AdvertiserRemoteDataSource(Dio dio, {String baseUrl}) =
      _AdvertiserRemoteDataSource;

  @GET(ApiConstants.advertiserEP)
  Future<AdvertiserResponseModel> getAdvertiser(
    @Path('advertiserId') int? advertiserId,
  );
}
