
import 'package:aqar_ya_masr/features/search/data/models/search_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'search_state.freezed.dart';
@freezed
 class SearchState with _$SearchState {
  const factory SearchState.initial() = SearchInitial;

  const factory SearchState.searchLoading() = SearchLoading;

  const factory SearchState.searchSuccess(SearchResponseModel searchModel) = SearchSuccess;

  const factory SearchState.searchFailure(String error) = SearchFailure;

}