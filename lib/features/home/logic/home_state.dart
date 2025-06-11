import 'package:aqar_ya_masr/features/home/data/models/ad_details_model.dart';
import 'package:aqar_ya_masr/features/home/data/models/aqar_momayas_model.dart';
import 'package:aqar_ya_masr/features/home/data/models/flat_sakany_model.dart';
import 'package:aqar_ya_masr/features/home/data/models/qsr_sakany_model.dart';
import 'package:aqar_ya_masr/features/home/data/models/villa_sakany_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState<T> {
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
}
