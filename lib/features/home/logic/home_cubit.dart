import 'package:bloc/bloc.dart';

import '../data/repos/home_repos.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo homeRepo;

  HomeCubit(this.homeRepo) : super(HomeState.initial());

  Future<void> getAqarMomayasData() async {
    emit(HomeState.aqarMomayasLoading());
    final response = await homeRepo.getAqarMomayasData();
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

  Future<void> getQsrSakanyData() async {
    emit(HomeState.qsrSakanyLoading());
    final response = await homeRepo.getQsrSakanyData();
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

  Future<void> getVillaSakanyData() async {
    emit(HomeState.villaSakanyLoading());
    final response = await homeRepo.getVillaSakanyData();
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

  Future<void> getFlatSakanyData() async {
    emit(HomeState.flatSakanyLoading());
    final response = await homeRepo.getFlatSakanyData();
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
}
