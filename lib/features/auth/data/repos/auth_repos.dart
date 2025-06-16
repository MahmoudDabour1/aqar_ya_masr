import 'package:aqar_ya_masr/core/networking/api_error_handler.dart';
import 'package:aqar_ya_masr/core/networking/api_result.dart';
import 'package:aqar_ya_masr/features/auth/data/data_source/auth_remote_data_source.dart';
import 'package:aqar_ya_masr/features/home/data/models/app_init_model.dart';
import 'package:aqar_ya_masr/features/auth/data/models/forget_password_response_model.dart';
import 'package:aqar_ya_masr/features/auth/data/models/login_request_body.dart';
import 'package:aqar_ya_masr/features/auth/data/models/login_response_model.dart';
import 'package:aqar_ya_masr/features/auth/data/models/register_request_body.dart';
import 'package:aqar_ya_masr/features/auth/data/models/register_response_model.dart';
import 'package:aqar_ya_masr/features/auth/data/models/verify_code_request_model.dart';
import 'package:aqar_ya_masr/features/auth/data/models/verify_response_model.dart';

import '../models/forget_password_request_body.dart';

abstract class AuthRepos {

  Future<ApiResult<RegisterResponseModel>> register(
      RegisterRequestBody registerRequestBody);

  Future<ApiResult<VerifyResponseModel>> verifyCode(
      VerifyCodeRequestModel verifyCodeRequestModel);

  Future<ApiResult<LoginResponseModel>> login(
      LoginRequestBody loginRequestBody);

  Future<ApiResult<ForgetPasswordResponseModel>> forgetPassword(
    ForgetPasswordRequestBody forgetPasswordRequestBody,
  );
}

class AuthReposImpl implements AuthRepos {
  final AuthRemoteDataSource authRemoteDataSource;

  AuthReposImpl(this.authRemoteDataSource);



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
  Future<ApiResult<VerifyResponseModel>> verifyCode(
      VerifyCodeRequestModel verifyCodeRequestModel) async {
    try {
      final response =
          await authRemoteDataSource.verifyCode(verifyCodeRequestModel);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  @override
  Future<ApiResult<LoginResponseModel>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await authRemoteDataSource.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  @override
  Future<ApiResult<ForgetPasswordResponseModel>> forgetPassword(
    ForgetPasswordRequestBody forgetPasswordRequestBody,
  ) async {
    try {
      final response =
          await authRemoteDataSource.forgetPassword(forgetPasswordRequestBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
