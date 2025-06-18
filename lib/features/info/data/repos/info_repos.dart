import 'package:aqar_ya_masr/core/networking/api_error_handler.dart';
import 'package:aqar_ya_masr/core/networking/api_error_model.dart';
import 'package:aqar_ya_masr/features/info/data/models/price_guide_model.dart';
import 'package:aqar_ya_masr/features/info/data/models/profile_data_model.dart';

import '../../../../core/networking/api_result.dart';
import '../../../home/data/models/sale/aqar_momayas_model.dart';
import '../data_source/info_remote_data_source.dart';

abstract class InfoRepos{
  Future<ApiResult<PriceGuideModel>> getPriceGuideData();
  Future<ApiResult<ProfileDataModel>> getProfileData();

}
class InfoReposImpl implements InfoRepos {
  final InfoRemoteDataSource infoRemoteDataSource;
  InfoReposImpl(this.infoRemoteDataSource);

  @override
  Future<ApiResult<PriceGuideModel>> getPriceGuideData() async{
    try {
      final response = await infoRemoteDataSource.getPriceGuide();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e.toString()));
    }
  }

  @override
  Future<ApiResult<ProfileDataModel>> getProfileData() async{
    try {
      final response =await infoRemoteDataSource.getProfileData();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e.toString()));
    }
  }
}