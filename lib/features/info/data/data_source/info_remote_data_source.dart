import 'package:aqar_ya_masr/features/info/data/models/price_guide_model.dart';
import 'package:aqar_ya_masr/features/info/data/models/profile_data_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../../../core/networking/api_constants.dart';

part 'info_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class InfoRemoteDataSource {
  factory InfoRemoteDataSource(Dio dio, {String baseUrl}) =
      _InfoRemoteDataSource;

  @GET(ApiConstants.priceGuideEP)
  Future<PriceGuideModel> getPriceGuide();

  @GET(ApiConstants.profileEP)
  Future<ProfileDataModel> getProfileData();
}
