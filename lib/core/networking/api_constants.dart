class ApiConstants {
  static const String apiBaseUrl = "https://aqaryamasr.com/api/v2/";
  static const String aqarMomayasEP = "ads?is_featured=1&limit=6";
  static const String qsrSakanyEP = "ads?type_id=6&limit=6";
  static const String villaSakanyEP = "ads?type_id=7&limit=6";
  static const String flatSakanyEP = "ads?type_id=8&limit=6";
  static const String adDetailsEP = "ads/{adId}";
  static const String registerEP = "auth/register";
  static const String appInitEP = "init";
  static const String verifyCodeEP = "auth/verify-code";
  static const String loginEP = "auth/login";
}

class ApiErrors {
  static const String badRequestError = "badRequestError";
  static const String noContent = "noContent";
  static const String forbiddenError = "forbiddenError";
  static const String unauthorizedError = "unauthorizedError";
  static const String notFoundError = "notFoundError";
  static const String conflictError = "conflictError";
  static const String internalServerError = "internalServerError";
  static const String unknownError = "unknownError";
  static const String timeoutError = "timeoutError";
  static const String defaultError = "defaultError";
  static const String cacheError = "cacheError";
  static const String noInternetError = "noInternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";
}
