import 'package:aqar_ya_masr/core/extensions/navigation_extension.dart';
import 'package:aqar_ya_masr/core/helpers/helper_methods.dart';
import 'package:aqar_ya_masr/features/auth/data/models/forget_password_request_body.dart';
import 'package:aqar_ya_masr/features/auth/data/models/login_request_body.dart';
import 'package:aqar_ya_masr/features/auth/data/models/register_request_body.dart';
import 'package:aqar_ya_masr/features/auth/data/models/register_response_model.dart';
import 'package:aqar_ya_masr/features/auth/data/models/verify_code_request_model.dart';
import 'package:aqar_ya_masr/features/auth/data/repos/auth_repos.dart';
import 'package:aqar_ya_masr/features/home/data/models/app_init_model.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

import '../../../core/helpers/shared_pref_helper.dart';
import '../../../core/helpers/shared_pref_keys.dart';
import '../../../core/networking/dio_factory.dart';
import '../../../core/routing/router_observer.dart';
import '../../../core/routing/routes.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepos authRepos;

  AuthCubit(this.authRepos) : super(AuthState.initial());

//Register
  final nameController = TextEditingController();
  final phoneController = TextEditingController(text: "01099101469");
  final passwordController = TextEditingController(text: "12345678");
  final cityController = TextEditingController();
  String? cityId;
  String? selectedCityName;
  String? userType;
  String? license;
  List<City> cities = [];
  bool registerAcceptedTerms = false;

  //Verify Code
  String? verifyCodeNumber;
  bool? isFromForgetPassword = false;

  Future<void> register(BuildContext context) async {
    emit(AuthState.registerLoading());
    final response = await authRepos.register(
      RegisterRequestBody(
        name: nameController.text,
        phone: phoneController.text,
        password: passwordController.text,
        cityId: cityId!,
        type: userType ?? "user",
      ),

    );
    response.when(
      success: (data) {
        emit(AuthState.registerSuccess(data));
        context.pushNamed(
          Routes.verifyCodeScreen,
          arguments: phoneController.text,
        );
      },
      failure: (e) {
        showToast(message: e.message ?? "");
        emit(
          AuthState.registerFailure(errorMessage: e.toString()),
        );
      },
    );
  }

  Future<void> verifyCode(BuildContext context) async {
    emit(AuthState.verifyCodeLoading());
    final response = await authRepos.verifyCode(
      VerifyCodeRequestModel(
        phone: phoneController.text,
        code: verifyCodeNumber.toString(),
        resetPass: isFromForgetPassword == true ? true : null,
      ),
    );
    response.when(
      success: (data) {
        emit(AuthState.verifyCodeSuccess(data));
        context.pushNamed(Routes.homeScreen);
      },
      failure: (e) {
        showToast(message: e.message ?? "");
        emit(AuthState.verifyCodeFailure(errorMessage: e.toString()));
      },
    );
  }

  Future<void> login(BuildContext context) async {
    emit(AuthState.loginLoading());
    final response = await authRepos.login(
      LoginRequestBody(
        phone: phoneController.text,
        password: passwordController.text,
      ),
    );
    response.when(
      success: (data) async {
        emit(AuthState.loginSuccess(data));
        await SharedPrefHelper.setData(SharedPrefKeys.isLogged, true);
        await SharedPrefHelper.setData(SharedPrefKeys.userToken, data.data?.token ?? "");
        await SharedPrefHelper.setData(SharedPrefKeys.userId, data.data?.profile?.id ?? "");
        await saveUserToken(data.data?.token ?? "");
        showToast(message: "Login successful");
        context.pushReplacement(Routes.bottomNavBarLayout);
      },
      failure: (e) {
        showToast(message: e.message ?? "");
        emit(AuthState.loginFailure(errorMessage: e.toString()));
      },
    );
  }

  Future<void> forgetPassword(BuildContext context) async {
    emit(AuthState.forgetPasswordLoading());
    final response = await authRepos.forgetPassword(
      ForgetPasswordRequestBody(phone: phoneController.text),
    );
    response.when(
      success: (data) {
        emit(AuthState.forgetPasswordSuccess(data));
        showToast(message: "Check your phone for the code");
        context.pushNamed(
          Routes.verifyCodeScreen,
          arguments: phoneController.text,
        );
      },
      failure: (e) {
        showToast(message: e.message ?? "");
        emit(AuthState.forgetPasswordFailure(errorMessage: e.toString()));
      },
    );
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }

// Future<void> resendCode(BuildContext context) async {
//   emit(AuthState.resendCodeLoading());
//   final response = await authRepos.resendCode(phoneController.text);
//   response.when(
//     success: (data) {
//       emit(AuthState.resendCodeSuccess(data));
//       showToast(message: "Code resent successfully");
//     },
//     failure: (e) {
//       showToast(message: e.message ?? "");
//       emit(AuthState.resendCodeFailure(errorMessage: e.toString()));
//     },
//   );
// }
}
