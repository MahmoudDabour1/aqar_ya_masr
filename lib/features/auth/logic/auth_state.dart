
import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_state.freezed.dart';
@freezed
 class AuthState<T> with _$AuthState<T> {
 const factory AuthState.initial() = AuthInitial;

 const factory AuthState.getAppInitLoading() =GetAppInitLoading;

 const factory AuthState.getAppInitSuccess(T data) = GetAppInitSuccess<T>;

 const factory AuthState.getAppInitFailure({required String errorMessage}) =
 GetAppInitFailure<T>;
 const factory AuthState.registerLoading() =RegisterLoading;

 const factory AuthState.registerSuccess(T data) = RegisterSuccess<T>;

 const factory AuthState.registerFailure({required String errorMessage}) =
 RegisterFailure<T>;const factory AuthState.verifyCodeLoading() =VerifyCodeLoading;

 const factory AuthState.verifyCodeSuccess(T data) = VerifyCodeSuccess<T>;

 const factory AuthState.verifyCodeFailure({required String errorMessage}) =
 VerifyCodeFailure<T>;
const factory AuthState.loginLoading() =LogineLoading;

 const factory AuthState.loginSuccess(T data) =LogineSuccess<T>;

 const factory AuthState.loginFailure({required String errorMessage}) =
 LogineFailure<T>;

}