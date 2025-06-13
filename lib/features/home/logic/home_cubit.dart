import 'package:bloc/bloc.dart';

import '../data/repos/home_repos.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo homeRepo;

  HomeCubit(this.homeRepo) : super(HomeState.initial());

  Future<void> getAqarMomayasData(int limit) async {
    emit(HomeState.aqarMomayasLoading());
    final response = await homeRepo.getAqarMomayasData(limit);
    response.when(
      success: (data) {
        emit(HomeState.aqarMomayasSuccess(data));
      },
      failure: (error) {
        emit(
          HomeState.aqarMomayasFailure(
            errorMessage: error.toString(),
          ),
        );
      },
    );
  }

  Future<void> getQsrSakanyData(int limit) async {
    emit(HomeState.qsrSakanyLoading());
    final response = await homeRepo.getQsrSakanyData(limit);
    response.when(
      success: (data) {
        emit(HomeState.qsrSakanySuccess(data));
      },
      failure: (error) {
        emit(
          HomeState.qsrSakanyFailure(
            errorMessage: error.toString(),
          ),
        );
      },
    );
  }

  Future<void> getVillaSakanyData(int limit) async {
    emit(HomeState.villaSakanyLoading());
    final response = await homeRepo.getVillaSakanyData(limit);
    response.when(
      success: (data) {
        emit(HomeState.villaSakanySuccess(data));
      },
      failure: (error) {
        emit(
          HomeState.villaSakanyFailure(
            errorMessage: error.toString(),
          ),
        );
      },
    );
  }

  Future<void> getFlatSakanyData(int limit) async {
    emit(HomeState.flatSakanyLoading());
    final response = await homeRepo.getFlatSakanyData(limit);
    response.when(
      success: (data) {
        emit(HomeState.flatSakanySuccess(data));
      },
      failure: (error) {
        emit(
          HomeState.flatSakanyFailure(
            errorMessage: error.toString(),
          ),
        );
      },
    );
  }

  Future<void> getAdDetails(int adId) async {
    emit(HomeState.adDetailsLoading());
    final response = await homeRepo.getAdDetailsData(adId);
    response.when(
      success: (data) {
        emit(HomeState.adDetailsSuccess(data));
      },
      failure: (error) {
        emit(
          HomeState.adDetailsFailure(
            errorMessage: error.toString(),
          ),
        );
      },
    );
  }

  Future<void> getCompounds(int limit) async {
    emit(HomeState.compoundLoading());
    final response = await homeRepo.getCompoundData(limit);
    response.when(
      success: (data) {
        emit(HomeState.compoundSuccess(data));
      },
      failure: (error) {
        emit(
          HomeState.compoundFailure(
            errorMessage: error.toString(),
          ),
        );
      },
    );
  }
}
