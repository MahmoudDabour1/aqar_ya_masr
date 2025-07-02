class ApiConstants {
  static const String apiBaseUrl = "https://aqaryamasr.com/api/v2/";
  static const String aqarMomayasEP =
      "ads?is_featured=1&limit={limit}&contract_type=sale";
  static const String qsrSakanyEP =
      "ads?type_id=6&limit={limit}&contract_type=sale";
  static const String villaSakanyEP =
      "ads?type_id=7&limit={limit}&contract_type=sale";
  static const String flatSakanyEP =
      "ads?type_id=8&limit={limit}&contract_type=sale";
  static const String adDetailsEP = "ads/{adId}";
  static const String registerEP = "auth/register";
  static const String appInitEP = "init";
  static const String verifyCodeEP = "auth/verify-code";
  static const String loginEP = "auth/login";
  static const String forgetPasswordEP = "auth/resend-code";
  static const String compoundEP = "ads?is_planned=1&limit={limit}";
  static const String priceGuideEP = "price-guide";
  static const String profileEP = "profile";

  static const String aqarMomayasRentEP =
      "ads?is_featured=1&limit={limit}&contract_type=rent";
  static const String qsrSakanyRentEP =
      "ads?type_id=6&limit={limit}&contract_type=rent";
  static const String villaSakanyRentEP =
      "ads?type_id=7&limit={limit}&contract_type=rent";
  static const String flatSakanyRentEP =
      "ads?type_id=8&limit={limit}&contract_type=rent";
  static const String compoundRentEP =
      "ads?is_planned=1&limit={limit}&contract_type=rent";
  static const String mapSearchEP =
      "ads?is_map_search=1&lat={lat}&lng={lng}&limit=500&radius=6";
  static const String getChatsEP = "chat";
  static const String sendChatsEP = "send_message";
  static const String searchEP = "ads?q={search}&limit=500";
  static const String filterEP ="ads";
  static const String advertiserEP ="advertiser/{advertiserId}";
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
