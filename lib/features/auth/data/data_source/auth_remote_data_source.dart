import 'package:aqar_ya_masr/features/auth/data/models/app_init_model.dart';
import 'package:aqar_ya_masr/features/auth/data/models/forget_password_response_model.dart';
import 'package:aqar_ya_masr/features/auth/data/models/login_request_body.dart';
import 'package:aqar_ya_masr/features/auth/data/models/login_response_model.dart';
import 'package:aqar_ya_masr/features/auth/data/models/register_request_body.dart';
import 'package:aqar_ya_masr/features/auth/data/models/register_response_model.dart';
import 'package:aqar_ya_masr/features/auth/data/models/verify_code_request_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../../../core/networking/api_constants.dart';
import '../models/forget_password_request_body.dart';
import '../models/verify_response_model.dart';

part 'auth_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class AuthRemoteDataSource {
  factory AuthRemoteDataSource(Dio dio, {String baseUrl}) =
      _AuthRemoteDataSource;

  @POST(ApiConstants.registerEP)
  Future<RegisterResponseModel> register(
    @Body() RegisterRequestBody registerRequestBody,
  );

  @GET(ApiConstants.appInitEP)
  Future<AppInitModel> getAppInit();

  @POST(ApiConstants.verifyCodeEP)
  Future<VerifyResponseModel> verifyCode(
    @Body() VerifyCodeRequestModel verifyCodeRequestBody,
  );

  @POST(ApiConstants.loginEP)
  Future<LoginResponseModel> login(
    @Body() LoginRequestBody loginRequestBody,
  );
  @POST(ApiConstants.forgetPasswordEP)
  Future<ForgetPasswordResponseModel> forgetPassword(
    @Body() ForgetPasswordRequestBody forgetPasswordRequestBody,
  );
}
