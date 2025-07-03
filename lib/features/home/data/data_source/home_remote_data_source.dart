import 'package:aqar_ya_masr/core/networking/api_constants.dart';
import 'package:aqar_ya_masr/features/home/data/models/ad_details_model.dart';
import 'package:aqar_ya_masr/features/home/data/models/rent/aqar_momayas_rent_model.dart';
import 'package:aqar_ya_masr/features/home/data/models/rent/qsr_sakany_rent_model.dart';
import 'package:aqar_ya_masr/features/home/data/models/rent/villa_sakany_rent_model.dart';
import 'package:aqar_ya_masr/features/home/data/models/sale/aqar_momayas_model.dart';
import 'package:aqar_ya_masr/features/home/data/models/sale/compound_model.dart';
import 'package:aqar_ya_masr/features/home/data/models/sale/villa_sakany_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../models/app_init_model.dart';
import '../models/rent/falt_sakany_rent_model.dart';
import '../models/sale/flat_sakany_model.dart';
import '../models/sale/qsr_sakany_model.dart';

part 'home_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeRemoteDataSource {
  factory HomeRemoteDataSource(Dio dio, {String baseUrl}) =
      _HomeRemoteDataSource;

  @GET(ApiConstants.aqarMomayasEP)
  Future<AqarMomayasModel> getAqarMomayasData(
    @Path('limit') int limit,
  );

  @GET(ApiConstants.qsrSakanyEP)
  Future<QsrSakanyModel> getQsrSakanyData(
    @Path('limit') int limit,
  );

  @GET(ApiConstants.villaSakanyEP)
  Future<VillaSakanyModel> getVillaSakanyData(
    @Path('limit') int limit,
  );

  @GET(ApiConstants.flatSakanyEP)
  Future<FlatSakanyModel> getFlatSakanyData(
    @Path('limit') int limit,
  );

  @GET(ApiConstants.adDetailsEP)
  Future<AdDetailsModel> getAdDetails({
    @Path('adId') required int adId,
  });

  @GET(ApiConstants.compoundEP)
  Future<CompoundModel> getCompoundData(
    @Path('limit') int limit,
  );

  @GET(ApiConstants.appInitEP)
  Future<AppInitModel> getAppInit();

  @GET(ApiConstants.aqarMomayasRentEP)
  Future<AqarMomayasRentModel> getAqarMomayasRentData(
    @Path('limit') int limit,
  );

  @GET(ApiConstants.qsrSakanyRentEP)
  Future<QsrSakanyRentModel> getQsrSakanyRentData(
    @Path('limit') int limit,
  );

  @GET(ApiConstants.villaSakanyRentEP)
  Future<VillaSakanyRentModel> getVillaSakanyRentData(
    @Path('limit') int limit,
  );

  @GET(ApiConstants.flatSakanyRentEP)
  Future<FlatSakanyRentModel> getFlatSakanyRentData(
    @Path('limit') int limit,
  );
}
