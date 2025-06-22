import 'package:aqar_ya_masr/core/networking/api_error_handler.dart';
import 'package:aqar_ya_masr/core/networking/api_result.dart';
import 'package:aqar_ya_masr/features/search/data/models/search_response_model.dart';

import '../data_source/search_remote_data_source.dart';

abstract class SearchRepo {
  Future<ApiResult<SearchResponseModel>> search(String searchText);
}

class SearchRepoImpl implements SearchRepo {
  final SearchRemoteDataSource remoteDataSource;

  SearchRepoImpl(this.remoteDataSource);

  @override
  Future<ApiResult<SearchResponseModel>> search(String searchText) async {
    try {
      final response = await remoteDataSource.search(searchText);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
