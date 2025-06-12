import 'package:aqar_ya_masr/core/extensions/navigation_extension.dart';
import 'package:aqar_ya_masr/core/helpers/helper_methods.dart';
import 'package:aqar_ya_masr/features/auth/data/models/app_init_model.dart';
import 'package:aqar_ya_masr/features/auth/data/models/login_request_body.dart';
import 'package:aqar_ya_masr/features/auth/data/models/register_request_body.dart';
import 'package:aqar_ya_masr/features/auth/data/models/verify_code_request_model.dart';
import 'package:aqar_ya_masr/features/auth/data/repos/auth_repos.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

import '../../../core/routing/routes.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepos authRepos;

  AuthCubit(this.authRepos) : super(AuthState.initial());

//Register
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final cityController = TextEditingController();
  String? cityId;
  String? selectedCityName;
  String? userType;
  String? license;
  List<City> cities = [];
  bool registerAcceptedTerms = false;

  //Verify Code
  String? verifyCodeNumber;

  Future<void> getAppInitData() async {
    emit(AuthState.getAppInitLoading());
    final response = await authRepos.getAppInitData();
    response.when(
      success: (initData) {
        emit(
          AuthState.getAppInitSuccess(initData),
        );
        cities = initData.data?.cities ?? [];
        license = initData.data?.about?.licenseAgreement;
      },
      failure: (e) => emit(
        AuthState.getAppInitFailure(
          errorMessage: e.toString(),
        ),
      ),
    );
  }

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
        emit(AuthState.getAppInitSuccess(data));
        context.pushNamed(Routes.verifyCodeScreen,
            arguments: phoneController.text);
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
      success: (data) {
        emit(AuthState.loginSuccess(data));
        showToast(message: "Login successful");
        context.pushNamed(Routes.homeScreen);
      },
      failure: (e) {
        showToast(message: e.message ?? "");
        emit(AuthState.loginFailure(errorMessage: e.toString()));
      },
    );
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
