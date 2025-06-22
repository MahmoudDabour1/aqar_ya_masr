import 'package:aqar_ya_masr/features/search/data/repos/search_repo.dart';
import 'package:aqar_ya_masr/features/search/logic/search_state.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class SearchCubit extends Cubit<SearchState> {
  final SearchRepo searchRepo;

  SearchCubit(this.searchRepo) : super(SearchState.initial());
  final searchController = TextEditingController();

  Future<void> search() async {
    emit(SearchState.searchLoading());
    final response = await searchRepo.search(
      searchController.text.trim(),
    );
    response.when(success: (data) {
      emit(SearchState.searchSuccess(data));
    }, failure: (e) {
      emit(SearchState.searchFailure(e.message.toString() ?? "حدث خطأ"));
    });
  }
}
