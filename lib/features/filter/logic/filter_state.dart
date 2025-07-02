
import 'package:aqar_ya_masr/features/filter/data/models/filter_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'filter_state.freezed.dart';
@freezed
class FilterState<T> with _$FilterState<T> {
  const factory FilterState.filterInitial() = FilterInitial;

  const factory FilterState.filterLoading() = FilterLoading;

  const factory FilterState.filterSuccess(FilterResponseModel filterResponseModel) = FilterSuccess;

  const factory FilterState.filterError(String message) = FilterError;
}
