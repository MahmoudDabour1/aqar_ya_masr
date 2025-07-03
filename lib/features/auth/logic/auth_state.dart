import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState<T> with _$AuthState<T> {
  const factory AuthState.initial() = AuthInitial;

  const factory AuthState.registerLoading() = RegisterLoading;

  const factory AuthState.registerSuccess(T data) = RegisterSuccess<T>;

  const factory AuthState.registerFailure({required String errorMessage}) =
      RegisterFailure<T>;

  const factory AuthState.verifyCodeLoading() = VerifyCodeLoading;

  const factory AuthState.verifyCodeSuccess(T data) = VerifyCodeSuccess<T>;

  const factory AuthState.verifyCodeFailure({required String errorMessage}) =
      VerifyCodeFailure<T>;

  const factory AuthState.loginLoading() = LogineLoading;

  const factory AuthState.loginSuccess(T data) = LogineSuccess<T>;

  const factory AuthState.loginFailure({required String errorMessage}) =
      LogineFailure<T>;

  const factory AuthState.forgetPasswordLoading() = ForgetPasswordLoading;

  const factory AuthState.forgetPasswordSuccess(T data) = forgetPasswordSuccess<T>;

  const factory AuthState.forgetPasswordFailure({required String errorMessage}) =
  ForgetPasswordFailure<T>;
}
