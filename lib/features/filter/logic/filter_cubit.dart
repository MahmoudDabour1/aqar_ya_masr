import 'package:aqar_ya_masr/features/filter/data/repos/filter_repos.dart';
import 'package:bloc/bloc.dart';

import '../../home/presentation/all_aqars_screen.dart';
import 'filter_state.dart';

class FilterCubit extends Cubit<FilterState> {
  final FilterRepos filterRepos;

  FilterCubit(this.filterRepos) : super(FilterState.filterInitial());

  String? contractType;
  String? mainType;
  String? typeId;
  double? minPrice;
  double? maxPrice;
  int? isPlanned;
  int? isFeatured;
  String? city;
  String? district;
  AqarType? aqarType;
//swith to aqarType

  Future<void> getFilterData() async {
    emit(FilterState.filterLoading());
    switch (aqarType) {
      case AqarType.aqarMomayas:
        isFeatured = 1;
        isPlanned = 0;
        break;
      case AqarType.compound:
        isPlanned = 1;
        isFeatured = 0;
        break;
      case AqarType.qsrSakany:
        typeId = "6";
        isPlanned = 0;
        isFeatured = 0;
        break;
      case AqarType.villaSakany:
        typeId = "7";
        isPlanned = 0;
        isFeatured = 0;
        break;
      case AqarType.flatSakany:
        typeId = "8";
        isPlanned = 0;
        isFeatured = 0;
        break;
      case AqarType.aqarMomayasRent:
        isFeatured = 1;
        isPlanned = 0;
        contractType = "rent";
        break;
      case AqarType.qsrSakanyRent:
        typeId = "6";
        isPlanned = 0;
        isFeatured = 0;
        contractType = "rent";
        break;
      case AqarType.villaSakanyRent:
        typeId = "7";
        isPlanned = 0;
        isFeatured = 0;
        contractType = "rent";
        break;
      case AqarType.flatSakanyRent:
        typeId = "8";
        isPlanned = 0;
        isFeatured = 0;
        contractType = "rent";
        break;
      default:
        isPlanned = 0;
        isFeatured = 0;
        break;
    }
    final response = await filterRepos.getFilterData(
      contractType: contractType ?? "",
      isFeatured: isFeatured,
      isPlanned: isPlanned,
      mainType: mainType ?? "",
      maxPrice: maxPrice ?? 100000000000,
      minPrice: minPrice ?? 0,
      typeId: typeId ?? "",
      city: city ?? "",
      district: district ?? "",
    );
    response.when(success: (data) {
      emit(FilterState.filterSuccess(data));
    }, failure: (e) {
      emit(FilterState.filterError(e.toString()));
    });
  }
}
