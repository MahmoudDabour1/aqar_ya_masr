import 'package:aqar_ya_masr/core/networking/api_error_handler.dart';
import 'package:aqar_ya_masr/core/networking/api_result.dart';
import 'package:aqar_ya_masr/features/filter/data/models/filter_response_model.dart';

import '../data_source/filter_remote_data_source.dart';

abstract class FilterRepos {
  Future<ApiResult<FilterResponseModel>> getFilterData({
    required String? contractType,
    required String? mainType,
    required String? typeId,
    required double? minPrice,
    required double? maxPrice,
    required int? isPlanned,
    required int? isFeatured,
    required String? city,
    required String? district,
  });
}

class FilterReposImpl implements FilterRepos {
  final FilterRemoteDataSource filterRemoteDataSource;

  FilterReposImpl(this.filterRemoteDataSource);

  @override
  Future<ApiResult<FilterResponseModel>> getFilterData({
    required String? contractType,
    required String? mainType,
    required String? typeId,
    required double? minPrice,
    required double? maxPrice,
    required int? isPlanned,
    required int? isFeatured,
    required String? city,
    required String? district,
  }) async {
    try {
      final response = await filterRemoteDataSource.getFilterData(
        contractType: contractType,
        mainType: mainType,
        typeId: typeId,
        minPrice: minPrice,
        maxPrice: maxPrice,
        isPlanned: isPlanned,
        isFeatured: isFeatured,
        city: city,
        district: district,
      );

      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(
        ApiErrorHandler.handle(e.toString()),
      );
    }
  }
}
