import 'package:bloc/bloc.dart';

import '../data/models/ad_details_model.dart';
import '../data/repos/home_repos.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo homeRepo;

  HomeCubit(this.homeRepo) : super(HomeState.initial());
  AdDetailsModel? selectedAd;
  Future<void> getAppInitData() async {
    emit(HomeState.getAppInitLoading());
    final response = await homeRepo.getAppInitData();
    response.when(
      success: (initData) {
        emit(
          HomeState.getAppInitSuccess(initData),
        );
      },
      failure: (e) => emit(
        HomeState.getAppInitFailure(
          errorMessage: e.toString(),
        ),
      ),
    );
  }

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
        selectedAd = data;
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

  void getSaleData() async {
    emit(HomeState.getSaleLoading());
    await Future.wait([
      getAqarMomayasData(6),
      getCompounds(6),
      getQsrSakanyData(6),
      getVillaSakanyData(6),
      getFlatSakanyData(6),
    ]);

    emit(HomeState.getSaleSuccess());
  }

  //rent
  Future<void> getAqarMomayasRentData(int limit) async {
    emit(HomeState.aqarMomayasRentLoading());
    final response = await homeRepo.getAqarMomayasRentData(limit);
    response.when(
      success: (data) {
        emit(HomeState.aqarMomayasRentSuccess(data));
      },
      failure: (error) {
        emit(
          HomeState.aqarMomayasRentFailure(
            errorMessage: error.toString(),
          ),
        );
      },
    );
  }

  Future<void> getQsrSakanyRentData(int limit) async {
    emit(HomeState.qsrSakanyRentLoading());
    final response = await homeRepo.getQsrSakanyRentData(limit);
    response.when(
      success: (data) {
        emit(HomeState.qsrSakanyRentSuccess(data));
      },
      failure: (error) {
        emit(
          HomeState.qsrSakanyRentFailure(
            errorMessage: error.toString(),
          ),
        );
      },
    );
  }

  Future<void> getVillaSakanyRentData(int limit) async {
    emit(HomeState.villaSakanyRentLoading());
    final response = await homeRepo.getVillaSakanyRentData(limit);
    response.when(
      success: (data) {
        emit(HomeState.villaSakanyRentSuccess(data));
      },
      failure: (error) {
        emit(
          HomeState.villaSakanyRentFailure(
            errorMessage: error.toString(),
          ),
        );
      },
    );
  }

  Future<void> getFlatSakanyRentData(int limit) async {
    emit(HomeState.flatSakanyRentLoading());
    final response = await homeRepo.getFlatSakanyRentData(limit);
    response.when(
      success: (data) {
        emit(HomeState.flatSakanyRentSuccess(data));
      },
      failure: (error) {
        emit(
          HomeState.flatSakanyRentFailure(
            errorMessage: error.toString(),
          ),
        );
      },
    );
  }
}
