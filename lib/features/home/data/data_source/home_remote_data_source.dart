import 'package:aqar_ya_masr/core/networking/api_constants.dart';
import 'package:aqar_ya_masr/features/home/data/models/ad_details_model.dart';
import 'package:aqar_ya_masr/features/home/data/models/aqar_momayas_model.dart';
import 'package:aqar_ya_masr/features/home/data/models/compound_model.dart';
import 'package:aqar_ya_masr/features/home/data/models/flat_sakany_model.dart';
import 'package:aqar_ya_masr/features/home/data/models/qsr_sakany_model.dart';
import 'package:aqar_ya_masr/features/home/data/models/villa_sakany_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'home_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeRemoteDataSource {
  factory HomeRemoteDataSource(Dio dio, {String baseUrl}) =
      _HomeRemoteDataSource;

  @GET(ApiConstants.aqarMomayasEP)
  Future<AqarMomayasModel> getAqarMomayasData();

  @GET(ApiConstants.qsrSakanyEP)
  Future<QsrSakanyModel> getQsrSakanyData ();

  @GET(ApiConstants.villaSakanyEP)
  Future<VillaSakanyModel> getVillaSakanyData ();

  @GET(ApiConstants.flatSakanyEP)
  Future<FlatSakanyModel> getFlatSakanyData ();

  @GET(ApiConstants.adDetailsEP)
  Future<AdDetailsModel> getAdDetails({
    @Path('adId') required int adId,
  });

  @GET(ApiConstants.compoundEP)
  Future<CompoundModel> getCompoundData ();
}
