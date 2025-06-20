import 'package:aqar_ya_masr/features/home/data/models/ad_details_model.dart';
import 'package:aqar_ya_masr/features/home/data/models/sale/aqar_momayas_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/rent/aqar_momayas_rent_model.dart';
import '../data/models/rent/falt_sakany_rent_model.dart';
import '../data/models/rent/qsr_sakany_rent_model.dart';
import '../data/models/rent/villa_sakany_rent_model.dart';
import '../data/models/sale/compound_model.dart';
import '../data/models/sale/flat_sakany_model.dart';
import '../data/models/sale/qsr_sakany_model.dart';
import '../data/models/sale/villa_sakany_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState<T> {
  const factory HomeState.getAppInitLoading() = GetAppInitLoading;

  const factory HomeState.getAppInitSuccess(T data) = GetAppInitSuccess<T>;

  const factory HomeState.getAppInitFailure({required String errorMessage}) =
      GetAppInitFailure<T>;

  const factory HomeState.initial() = HomeInitial;

  const factory HomeState.aqarMomayasLoading() = AqarMomayasLoading;

  const factory HomeState.aqarMomayasSuccess(
      AqarMomayasModel aqarMomayasModel) = AqarMomayasSuccess;

  const factory HomeState.aqarMomayasFailure({required String errorMessage}) =
      AqarMomayasFailure;

  const factory HomeState.qsrSakanyLoading() = QsrSakanyLoading;

  const factory HomeState.qsrSakanySuccess(QsrSakanyModel qsrSakanyModel) =
      QsrSakanySuccess;

  const factory HomeState.qsrSakanyFailure({required String errorMessage}) =
      QsrSakanyFailure;

  const factory HomeState.villaSakanyLoading() = VillaSakanyLoading;

  const factory HomeState.villaSakanySuccess(
      VillaSakanyModel villaSakanyModel) = VillaSakanySuccess;

  const factory HomeState.villaSakanyFailure({required String errorMessage}) =
      VillaSakanyFailure;

  const factory HomeState.flatSakanyLoading() = FlatSakanyLoading;

  const factory HomeState.flatSakanySuccess(FlatSakanyModel flatSakanyModel) =
      FlatSakanySuccess;

  const factory HomeState.flatSakanyFailure({required String errorMessage}) =
      FlatSakanyFailure;

  const factory HomeState.adDetailsLoading() = AdDetailsLoading;

  const factory HomeState.adDetailsSuccess(AdDetailsModel adDetailsModel) =
      AdDetailsSuccess;

  const factory HomeState.adDetailsFailure({required String errorMessage}) =
      AdDetailsFailure;

  const factory HomeState.compoundLoading() = CompoundLoading;

  const factory HomeState.compoundSuccess(CompoundModel compoundModel) =
      CompoundSuccess;

  const factory HomeState.compoundFailure({required String errorMessage}) =
      CompoundFailure;

  const factory HomeState.getSaleLoading() = GetSaleLoading;
  const factory HomeState.getSaleSuccess() = GetSaleSuccess;
  const factory HomeState.getSaleFailure(String error) = GetSaleFailure;


  //rent
  const factory HomeState.aqarMomayasRentLoading() = AqarMomayasRentLoading;

  const factory HomeState.aqarMomayasRentSuccess(
      AqarMomayasRentModel aqarMomayasModel) = AqarMomayasRentSuccess;

  const factory HomeState.aqarMomayasRentFailure(
      {required String errorMessage}) = AqarMomayasRentFailure;

  const factory HomeState.qsrSakanyRentLoading() = QsrSakanyRentLoading;

  const factory HomeState.qsrSakanyRentSuccess(
      QsrSakanyRentModel qsrSakanyModel) = QsrSakanyRentSuccess;

  const factory HomeState.qsrSakanyRentFailure({required String errorMessage}) =
      QsrSakanyRentFailure;

  const factory HomeState.villaSakanyRentLoading() = VillaSakanyRentLoading;

  const factory HomeState.villaSakanyRentSuccess(
      VillaSakanyRentModel villaSakanyModel) = VillaSakanyRentSuccess;

  const factory HomeState.villaSakanyRentFailure(
      {required String errorMessage}) = VillaSakanyRentFailure;

  const factory HomeState.flatSakanyRentLoading() = FlatSakanyRentLoading;

  const factory HomeState.flatSakanyRentSuccess(
      FlatSakanyRentModel flatSakanyModel) = FlatSakanyRentSuccess;

  const factory HomeState.flatSakanyRentFailure(
      {required String errorMessage}) = FlatSakanyRentFailure;
}
