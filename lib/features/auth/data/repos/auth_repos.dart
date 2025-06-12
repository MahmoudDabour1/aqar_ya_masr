import 'package:aqar_ya_masr/core/networking/api_error_handler.dart';
import 'package:aqar_ya_masr/core/networking/api_result.dart';
import 'package:aqar_ya_masr/features/auth/data/data_source/auth_remote_data_source.dart';
import 'package:aqar_ya_masr/features/auth/data/models/app_init_model.dart';
import 'package:aqar_ya_masr/features/auth/data/models/register_request_body.dart';
import 'package:aqar_ya_masr/features/auth/data/models/register_response_model.dart';
import 'package:aqar_ya_masr/features/auth/data/models/verify_code_request_model.dart';
import 'package:aqar_ya_masr/features/auth/data/models/verify_response_model.dart';

abstract class AuthRepos {
  Future<ApiResult<AppInitModel>> getAppInitData();

  Future<ApiResult<RegisterResponseModel>> register(
      RegisterRequestBody registerRequestBody);

  Future<ApiResult<VerifyResponseModel>> verifyCode(
      VerifyCodeRequestModel verifyCodeRequestModel);
}

class AuthReposImpl implements AuthRepos {
  final AuthRemoteDataSource authRemoteDataSource;

  AuthReposImpl(this.authRemoteDataSource);

  @override
  Future<ApiResult<AppInitModel>> getAppInitData() async {
    try {
      final response = await authRemoteDataSource.getAppInit();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  @override
  Future<ApiResult<RegisterResponseModel>> register(
      RegisterRequestBody registerRequestBody) async {
    try {
      final response = await authRemoteDataSource.register(registerRequestBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  @override
  Future<ApiResult<VerifyResponseModel>> verifyCode(VerifyCodeRequestModel verifyCodeRequestModel) async{
    try{
      final response = await authRemoteDataSource.verifyCode(verifyCodeRequestModel);
      return ApiResult.success(response);
    }catch(e){
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
